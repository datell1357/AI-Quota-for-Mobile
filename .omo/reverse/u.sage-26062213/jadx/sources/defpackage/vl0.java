package defpackage;

import u.sage.receiver.ServiceRestartReceiver;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vl0 implements v6, si3, ng1, l92, fn3, xi3 {
    public final ih a;
    public final vl0 b = this;
    public final l03 c = wv0.a(new ul0(this, 0));
    public final l03 d = wv0.a(new ul0(this, 1));
    public final l03 e = wv0.a(new ul0(this, 2));
    public final l03 f = wv0.a(new ul0(this, 3));
    public final l03 g = wv0.a(new ul0(this, 4));
    public final l03 h = wv0.a(new ul0(this, 5));
    public final l03 i = wv0.a(new ul0(this, 6));
    public final l03 j = wv0.a(new ul0(this, 7));
    public final l03 k = wv0.a(new ul0(this, 8));
    public final l03 l = wv0.a(new ul0(this, 9));
    public final l03 m = wv0.a(new ul0(this, 10));
    public final l03 n = wv0.a(new ul0(this, 11));

    public vl0(ih ihVar) {
        this.a = ihVar;
    }

    public final void a(ServiceRestartReceiver serviceRestartReceiver) {
        serviceRestartReceiver.c = (v50) this.j.get();
        serviceRestartReceiver.d = (yh0) this.k.get();
        serviceRestartReceiver.e = (pf) this.l.get();
        serviceRestartReceiver.f = (jg1) this.m.get();
        serviceRestartReceiver.g = (i70) this.n.get();
    }
}
