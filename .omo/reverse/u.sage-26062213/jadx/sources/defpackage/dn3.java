package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dn3 extends ib0 {
    public Object b;
    public Object c;
    public lg2 d;
    public lg2 e;
    public yh3 f;
    public final di3 g;
    public final r6 h;

    public dn3() {
        super(1);
        this.g = new di3(2, this);
        sp0 sp0Var = new sp0(18, this);
        wo3.e(wo3.a);
        synchronized (wo3.c) {
            wo3.h = o70.r0(wo3.h, sp0Var);
        }
        this.h = new r6(15, sp0Var);
    }

    @Override // defpackage.ib0
    public final void i(yh3 yh3Var) {
        this.c = null;
        this.e = null;
    }

    @Override // defpackage.ib0
    public final void j() {
        synchronized (this.a) {
            try {
                this.b = this.c;
                if (this.e == null) {
                    this.d = null;
                } else {
                    if (this.d == null) {
                        lg2 lg2Var = ud3.a;
                        this.d = new lg2();
                    }
                    lg2 lg2Var2 = this.d;
                    this.d = this.e;
                    this.e = lg2Var2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.ib0
    public final void k() {
        this.h.g();
        this.c = null;
        this.e = null;
        synchronized (this.a) {
            this.f = null;
            this.b = null;
            this.d = null;
        }
    }

    @Override // defpackage.ib0
    public final pe1 o(yh3 yh3Var) {
        yh3 yh3Var2 = this.f;
        if (yh3Var2 != null && !yh3Var2.equals(yh3Var)) {
            ix2.b("Requested a SingleSubscriptionSnapshotFlowManager to manage multiple subscriptions");
        }
        this.f = yh3Var;
        return this.g;
    }

    @Override // defpackage.ib0
    public final void p(n30 n30Var) {
        this.f = null;
        this.c = null;
        this.e = null;
        j();
    }
}
