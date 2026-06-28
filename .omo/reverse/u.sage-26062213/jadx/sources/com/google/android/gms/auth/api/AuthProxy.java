package com.google.android.gms.auth.api;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.proxy.ProxyClient;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import defpackage.nu4;
import defpackage.vu4;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class AuthProxy {
    public static final Api<AuthProxyOptions> API;
    public static final ProxyApi ProxyApi;
    public static final Api.ClientKey zza;
    private static final Api.AbstractClientBuilder zzb;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        zza = clientKey;
        zza zzaVar = new zza();
        zzb = zzaVar;
        API = new Api<>("Auth.PROXY_API", zzaVar, clientKey);
        ProxyApi = new vu4();
    }

    public static ProxyClient getClient(Activity activity, AuthProxyOptions authProxyOptions) {
        Api<AuthProxyOptions> api = API;
        if (authProxyOptions == null) {
            authProxyOptions = AuthProxyOptions.zza;
        }
        return new nu4(activity, api, authProxyOptions, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    public static ProxyClient getClient(Context context, AuthProxyOptions authProxyOptions) {
        Api<AuthProxyOptions> api = API;
        if (authProxyOptions == null) {
            authProxyOptions = AuthProxyOptions.zza;
        }
        return new nu4(context, api, authProxyOptions, GoogleApi.Settings.DEFAULT_SETTINGS);
    }
}
