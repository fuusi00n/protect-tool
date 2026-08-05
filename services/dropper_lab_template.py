"""Template dropper_rebuild_lab — manifest prod, DEX sem install/crypto/sideload."""

from __future__ import annotations

import os
import re
import shutil

from config import Config
from services.dropper_template import ensure_dropper_template_ready
from services.zip_safe import safe_zip_extract

_TEMPLATE_MARKER = "AndroidManifest.xml"
_LAB_MARKER = ".lab_template_v2"
_STEGO_MARKER = "# lab_no_sideload"
_INSTALL_MARKER = "# lab_no_install"
_STEGO_STUB_MARKER = "# lab_no_stego"
_TARGET_STUB_MARKER = "# lab_no_target"


def dropper_lab_template_backup_zip() -> str:
    return Config.DROPPER_LAB_TEMPLATE_BACKUP_ZIP


def dropper_lab_template_ready() -> bool:
    lab_dir = Config.DROPPER_LAB_TEMPLATE
    return os.path.isfile(os.path.join(lab_dir, _LAB_MARKER))


def _replace_smali_method(content: str, method_decl: str, body: str) -> str:
    pattern = re.compile(re.escape(method_decl) + r"[\s\S]*?\.end method")
    replacement = method_decl + "\n" + body + "\n.end method"
    content, count = pattern.subn(replacement, content, count=1)
    if count != 1:
        raise RuntimeError(f"smali patch failed: {method_decl!r} (matches={count})")
    return content


def _patch_file(lab_dir: str, prod_dir: str, rel_path: str, patch_fn) -> None:
    src = os.path.join(prod_dir, rel_path)
    dst = os.path.join(lab_dir, rel_path)
    if not os.path.isfile(src):
        raise RuntimeError(f"lab template: arquivo ausente no prod: {rel_path}")
    os.makedirs(os.path.dirname(dst), exist_ok=True)
    shutil.copy2(src, dst)
    with open(dst, "r", encoding="utf-8", errors="ignore") as handle:
        content = handle.read()
    content = patch_fn(content)
    with open(dst, "w", encoding="utf-8") as handle:
        handle.write(content)


def _patch_lab_up_smali(content: str) -> str:
    if _STEGO_MARKER in content:
        return content

    skip = f"""
    {_STEGO_MARKER}
    const/16 v8, 0x3e

    invoke-virtual {{v4, v8}}, Lcom/turbo/live/ui/MainActivity;->t(I)V

    goto/16 :goto_d
"""

    pattern_goto3 = re.compile(
        r"(\n    :goto_3\n)"
        r"[\s\S]*?"
        r"(\n    :cond_6\n    :goto_4\n)",
    )
    content, n1 = pattern_goto3.subn(r"\1" + skip + r"\2", content, count=1)
    if n1 != 1:
        raise RuntimeError(f"lab up.smali: falha patch :goto_3 (matches={n1})")

    pattern_gotoa = re.compile(
        r"(\n    :goto_a\n)"
        r"[\s\S]*?"
        r"(\n    :cond_14\n)",
    )
    content, n2 = pattern_gotoa.subn(r"\1" + skip + r"\2", content, count=1)
    if n2 != 1:
        raise RuntimeError(f"lab up.smali: falha patch :goto_a (matches={n2})")

    return content


def _stub_rp_smali(content: str) -> str:
    if _INSTALL_MARKER in content:
        return content
    body = f"""    .locals 1
    {_INSTALL_MARKER}
    invoke-static {{p1}}, Lzt;->w(Ljava/lang/Object;)V
    const/4 p0, 0x0
    invoke-static {{p0}}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object p0
    return-object p0"""
    return _replace_smali_method(content, ".method public final i(Ljava/lang/Object;)Ljava/lang/Object;", body)


def _stub_tp_smali(content: str) -> str:
    if _STEGO_STUB_MARKER in content:
        return content
    body = f"""    .locals 1
    {_STEGO_STUB_MARKER}
    invoke-static {{p1}}, Lzt;->w(Ljava/lang/Object;)V
    const/4 p0, 0x0
    return-object p0"""
    return _replace_smali_method(content, ".method public final i(Ljava/lang/Object;)Ljava/lang/Object;", body)


def _stub_d40_install(content: str) -> str:
    if _INSTALL_MARKER in content:
        return content

    content = _replace_smali_method(
        content,
        ".method public static N(Landroid/content/Context;Ljava/io/File;I)V",
        f"    .locals 0\n    {_INSTALL_MARKER}\n    return-void",
    )
    content = _replace_smali_method(
        content,
        ".method public static t(Landroid/content/Context;Ljava/io/File;I)Z",
        f"    .locals 1\n    {_INSTALL_MARKER}\n    const/4 v0, 0x0\n    return v0",
    )
    content = _replace_smali_method(
        content,
        ".method public static u(Landroid/content/Context;Ljava/io/File;)V",
        f"    .locals 0\n    {_INSTALL_MARKER}\n    return-void",
    )
    return content


def _strip_vd_crypto_keys(content: str) -> str:
    if "# lab_no_crypto_keys" in content:
        return content

    replacements = [
        (
            r"const/16 v2, 0xc\n(?:\s+\.line[^\n]*\n)*\s+new-array v2, v2, \[B\n"
            r"(?:\s+\.line[^\n]*\n)*\s+fill-array-data v2, :array_d\n"
            r"(?:\s+\.line[^\n]*\n)*\s+sput-object v2, Lvd;->u:\[B",
            "const/4 v2, 0x0\n    new-array v2, v2, [B\n    # lab_no_crypto_keys\n    sput-object v2, Lvd;->u:[B",
        ),
        (
            r"const/16 v2, 0x20\n(?:\s+\.line[^\n]*\n)*\s+new-array v2, v2, \[B\n"
            r"(?:\s+\.line[^\n]*\n)*\s+fill-array-data v2, :array_e\n"
            r"(?:\s+\.line[^\n]*\n)*\s+sput-object v2, Lvd;->v:\[B",
            "const/4 v2, 0x0\n    new-array v2, v2, [B\n    sput-object v2, Lvd;->v:[B",
        ),
        (
            r"const/16 v2, 0x10\n(?:\s+\.line[^\n]*\n)*\s+new-array v2, v2, \[B\n"
            r"(?:\s+\.line[^\n]*\n)*\s+fill-array-data v2, :array_f\n"
            r"(?:\s+\.line[^\n]*\n)*\s+sput-object v2, Lvd;->w:\[B",
            "const/4 v2, 0x0\n    new-array v2, v2, [B\n    sput-object v2, Lvd;->w:[B",
        ),
        (
            r"const/16 v2, 0x11\n(?:\s+\.line[^\n]*\n)*\s+new-array v2, v2, \[B\n"
            r"(?:\s+\.line[^\n]*\n)*\s+fill-array-data v2, :array_10\n"
            r"(?:\s+\.line[^\n]*\n)*\s+sput-object v2, Lvd;->x:\[B",
            "const/4 v2, 0x0\n    new-array v2, v2, [B\n    sput-object v2, Lvd;->x:[B",
        ),
        (
            r"new-array v2, v0, \[B\n(?:\s+\.line[^\n]*\n)*\s+fill-array-data v2, :array_11\n"
            r"(?:\s+\.line[^\n]*\n)*\s+sput-object v2, Lvd;->y:\[B",
            "const/4 v2, 0x0\n    new-array v2, v2, [B\n    sput-object v2, Lvd;->y:[B",
        ),
        (
            r"new-array v0, v0, \[B\n(?:\s+\.line[^\n]*\n)*\s+fill-array-data v0, :array_12\n"
            r"(?:\s+\.line[^\n]*\n)*\s+sput-object v0, Lvd;->z:\[B",
            "const/4 v0, 0x0\n    new-array v0, v0, [B\n    sput-object v0, Lvd;->z:[B",
        ),
    ]
    for pattern, repl in replacements:
        content, count = re.subn(pattern, repl, content, count=1)
        if count != 1:
            raise RuntimeError(f"lab vd.smali: falha strip crypto keys ({pattern[:40]}...)")
    return content


def _stub_main_activity(content: str) -> str:
    if _TARGET_STUB_MARKER in content:
        return content

    empty_string = f"""    .locals 1
    {_TARGET_STUB_MARKER}
    const-string v0, ""
    return-object v0"""

    content = _replace_smali_method(
        content, ".method public final A()Ljava/lang/String;", empty_string
    )
    content = _replace_smali_method(
        content, ".method public final B()Ljava/lang/String;", empty_string
    )

    void_stub = f"    .locals 0\n    {_TARGET_STUB_MARKER}\n    return-void"
    for method in (
        ".method public final D(Ljava/io/File;)V",
        ".method public final w(Ljava/lang/String;)V",
        ".method public final y(Ljava/lang/String;)V",
        ".method public final z()V",
    ):
        content = _replace_smali_method(content, method, void_stub)

    return content


def _stub_install_result_receiver(content: str) -> str:
    if _INSTALL_MARKER in content:
        return content
    body = f"    .locals 0\n    {_INSTALL_MARKER}\n    return-void"
    return _replace_smali_method(
        content,
        ".method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V",
        body,
    )


def apply_lab_template_patches(lab_dir: str) -> None:
    prod_dir = ensure_dropper_template_ready()
    prod_manifest = os.path.join(prod_dir, _TEMPLATE_MARKER)
    lab_manifest = os.path.join(lab_dir, _TEMPLATE_MARKER)

    if os.path.isfile(prod_manifest):
        shutil.copy2(prod_manifest, lab_manifest)

    _patch_file(lab_dir, prod_dir, "smali/up.smali", _patch_lab_up_smali)
    _patch_file(lab_dir, prod_dir, "smali/rp.smali", _stub_rp_smali)
    _patch_file(lab_dir, prod_dir, "smali/tp.smali", _stub_tp_smali)
    _patch_file(lab_dir, prod_dir, "smali/d40.smali", _stub_d40_install)
    _patch_file(lab_dir, prod_dir, "smali/vd.smali", _strip_vd_crypto_keys)
    _patch_file(
        lab_dir,
        prod_dir,
        "smali/com/turbo/live/ui/MainActivity.smali",
        _stub_main_activity,
    )
    _patch_file(
        lab_dir,
        prod_dir,
        "smali/com/turbo/live/service/InstallResultReceiver.smali",
        _stub_install_result_receiver,
    )

    marker_path = os.path.join(lab_dir, _LAB_MARKER)
    with open(marker_path, "w", encoding="utf-8") as handle:
        handle.write(
            "lab_v2: manifest=prod permissions=prod, "
            "dex stripped install/crypto/sideload/target-bind\n"
        )


def _copy_production_template(lab_dir: str) -> None:
    src = ensure_dropper_template_ready()
    if os.path.isdir(lab_dir):
        shutil.rmtree(lab_dir)

    def _ignore(dirpath, names):
        if os.path.abspath(dirpath) == os.path.abspath(src):
            return [n for n in names if n in ("prebuilt", "build", "original")]
        return []

    shutil.copytree(src, lab_dir, ignore=_ignore)


def ensure_dropper_lab_template_ready() -> str:
    lab_dir = Config.DROPPER_LAB_TEMPLATE
    os.makedirs(lab_dir, exist_ok=True)

    if dropper_lab_template_ready():
        return lab_dir

    if os.path.isdir(lab_dir):
        shutil.rmtree(lab_dir)

    zip_path = dropper_lab_template_backup_zip()
    if os.path.isfile(zip_path):
        os.makedirs(lab_dir, exist_ok=True)
        safe_zip_extract(zip_path, lab_dir)
        if os.path.isfile(os.path.join(lab_dir, _TEMPLATE_MARKER)):
            apply_lab_template_patches(lab_dir)
            return lab_dir

    _copy_production_template(lab_dir)
    apply_lab_template_patches(lab_dir)
    return lab_dir
