package defpackage;

import android.os.Bundle;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t65 implements Runnable {
    public final /* synthetic */ String n;
    public final /* synthetic */ String o;
    public final /* synthetic */ long p;
    public final /* synthetic */ long q;
    public final /* synthetic */ Bundle r;
    public final /* synthetic */ boolean s;
    public final /* synthetic */ boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ boolean f330u;
    public final /* synthetic */ m75 v;

    public t65(m75 m75Var, String str, String str2, long j, long j2, Bundle bundle, boolean z, boolean z2, boolean z3) {
        this.n = str;
        this.o = str2;
        this.p = j;
        this.q = j2;
        this.r = bundle;
        this.s = z;
        this.t = z2;
        this.f330u = z3;
        this.v = m75Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.v.E(this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.f330u);
    }
}
