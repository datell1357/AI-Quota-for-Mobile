package defpackage;

import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hz2 extends g0 implements n30, yh3 {
    public final zy s;

    public hz2(hi0 hi0Var, zy zyVar) {
        super(hi0Var, true);
        this.s = zyVar;
    }

    @Override // defpackage.yh3
    public final boolean a(Throwable th) {
        return this.s.g(th, false);
    }

    @Override // defpackage.yh3
    public final Object f(dh0 dh0Var, Object obj) {
        return this.s.f(dh0Var, obj);
    }

    @Override // defpackage.n30
    public final wy iterator() {
        zy zyVar = this.s;
        zyVar.getClass();
        return new wy(zyVar);
    }

    @Override // defpackage.bv1, defpackage.tu1
    public final void j(CancellationException cancellationException) {
        if (isCancelled()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new uu1(w(), null, this);
        }
        u(cancellationException);
    }

    @Override // defpackage.n30
    public final Object k(bv3 bv3Var) {
        zy zyVar = this.s;
        zyVar.getClass();
        return zy.H(zyVar, bv3Var);
    }

    @Override // defpackage.n30
    public final Object m() {
        return this.s.m();
    }

    @Override // defpackage.yh3
    public final Object n(Object obj) {
        return this.s.n(obj);
    }

    @Override // defpackage.n30
    public final Object o(p80 p80Var) {
        zy zyVar = this.s;
        zyVar.getClass();
        return zy.I(zyVar, p80Var);
    }

    @Override // defpackage.g0
    public final void q0(Throwable th, boolean z) {
        if (this.s.g(th, false) || z) {
            return;
        }
        qj0.N(this.r, th);
    }

    @Override // defpackage.g0
    public final void r0(Object obj) {
        this.s.a(null);
    }

    @Override // defpackage.bv1
    public final void u(CancellationException cancellationException) {
        this.s.g(cancellationException, true);
        t(cancellationException);
    }
}
