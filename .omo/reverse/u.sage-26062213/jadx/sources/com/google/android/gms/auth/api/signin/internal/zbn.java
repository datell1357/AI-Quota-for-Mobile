package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zbn {
    private static zbn zbd;
    final Storage zba;
    GoogleSignInAccount zbb;
    GoogleSignInOptions zbc;

    private zbn(Context context) {
        Storage storage = Storage.getInstance(context);
        this.zba = storage;
        this.zbb = storage.getSavedDefaultGoogleSignInAccount();
        this.zbc = storage.getSavedDefaultGoogleSignInOptions();
    }

    public static synchronized zbn zba(Context context) {
        return zbf(context.getApplicationContext());
    }

    private static synchronized zbn zbf(Context context) {
        zbn zbnVar = zbd;
        if (zbnVar != null) {
            return zbnVar;
        }
        zbn zbnVar2 = new zbn(context);
        zbd = zbnVar2;
        return zbnVar2;
    }

    public final synchronized void zbb() {
        this.zba.clear();
        this.zbb = null;
        this.zbc = null;
    }

    public final synchronized void zbc(GoogleSignInOptions googleSignInOptions, GoogleSignInAccount googleSignInAccount) {
        this.zba.saveDefaultGoogleSignInAccount(googleSignInAccount, googleSignInOptions);
        this.zbb = googleSignInAccount;
        this.zbc = googleSignInOptions;
    }

    public final synchronized GoogleSignInAccount zbd() {
        return this.zbb;
    }

    public final synchronized GoogleSignInOptions zbe() {
        return this.zbc;
    }
}
