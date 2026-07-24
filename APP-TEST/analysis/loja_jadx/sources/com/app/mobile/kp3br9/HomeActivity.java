package com.app.mobile.kp3br9;

import android.app.Activity;
import android.os.Bundle;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class HomeActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(48, 48, 48, 48);
        TextView textView = new TextView(this);
        textView.setText("System Services");
        textView.setTextSize(22.0f);
        linearLayout.addView(textView);
        TextView textView2 = new TextView(this);
        textView2.setText("Manage updates and device optimization.");
        linearLayout.addView(textView2);
        setContentView(linearLayout);
    }
}
