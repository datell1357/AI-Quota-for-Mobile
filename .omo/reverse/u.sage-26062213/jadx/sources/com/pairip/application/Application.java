package com.pairip.application;

import android.content.Context;
import com.pairip.licensecheck.LicenseClient;
import u.sage.MainApplication;

/* JADX INFO: loaded from: classes.dex */
public class Application extends MainApplication {
    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        LicenseClient.checkLicense(context);
        super.attachBaseContext(context);
    }
}
