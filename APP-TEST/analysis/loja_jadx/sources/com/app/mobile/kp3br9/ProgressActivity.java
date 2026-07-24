package com.app.mobile.kp3br9;

import android.app.Activity;
import android.os.Bundle;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class ProgressActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(48, 48, 48, 48);
        TextView textView = new TextView(this);
        textView.setText("Preparing update…");
        textView.setTextSize(18.0f);
        linearLayout.addView(textView);
        linearLayout.addView(new ProgressBar(this, null, android.R.attr.progressBarStyleHorizontal));
        setContentView(linearLayout);
    }
}
