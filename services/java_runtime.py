import os
import shutil
import subprocess


def find_java():
    candidates = []
    java_home = os.environ.get("JAVA_HOME")
    if java_home:
        candidates.append(os.path.join(java_home, "bin", "java"))
    candidates.extend(
        [
            "/opt/homebrew/opt/openjdk@17/bin/java",
            "/opt/homebrew/opt/openjdk/bin/java",
            "/usr/local/opt/openjdk@17/bin/java",
            "/usr/local/opt/openjdk/bin/java",
        ]
    )
    which_java = shutil.which("java")
    if which_java:
        candidates.append(which_java)

    for path in candidates:
        if not path or not os.path.isfile(path):
            continue
        try:
            result = subprocess.run(
                [path, "-version"],
                capture_output=True,
                text=True,
                timeout=10,
            )
            if result.returncode == 0:
                return path
        except (OSError, subprocess.TimeoutExpired):
            continue
    return None


JAVA_BIN = find_java()
