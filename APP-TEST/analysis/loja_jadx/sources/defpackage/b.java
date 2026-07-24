package defpackage;

import android.util.Base64;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    public static byte[] a(String str, int i) {
        return Base64.decode(str, i);
    }
}
