package defpackage;

import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes.dex */
public class f0 {
    public String a(byte[] bArr, byte[] bArr2) {
        return new String(b(bArr, bArr2), StandardCharsets.UTF_8);
    }

    public final byte[] b(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int length2 = bArr2.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            if (i >= length2) {
                i = 0;
            }
            bArr[i2] = (byte) (bArr[i2] ^ bArr2[i]);
            i++;
        }
        return bArr;
    }
}
