package com.google.android.gms.common.moduleinstall;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.moduleinstall.internal.zay;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ModuleInstall {
    private ModuleInstall() {
    }

    public static ModuleInstallClient getClient(Activity activity) {
        return new zay(activity);
    }

    public static ModuleInstallClient getClient(Context context) {
        return new zay(context);
    }
}
