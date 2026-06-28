package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class jl2 extends of1 implements pe1 {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final jl2 f153u = new jl2(1, se0.class, "ConnectivityChecker", "ConnectivityChecker(Landroid/content/Context;)Lcoil3/network/ConnectivityChecker;", 1);

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        Context applicationContext = ((Context) obj).getApplicationContext();
        ConnectivityManager connectivityManager = (ConnectivityManager) applicationContext.getSystemService(ConnectivityManager.class);
        if (connectivityManager != null && k75.m(applicationContext, "android.permission.ACCESS_NETWORK_STATE") == 0) {
            try {
                return new re0(connectivityManager);
            } catch (Exception unused) {
            }
        }
        return qe0.a;
    }
}
