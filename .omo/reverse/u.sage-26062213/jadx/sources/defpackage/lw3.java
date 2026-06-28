package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lw3 implements re {
    public final ia4 a;
    public final e34 b;
    public Object c;
    public Object d;
    public bf e;
    public bf f;
    public final bf g;
    public long h;
    public bf i;

    public lw3(ve veVar, e34 e34Var, Object obj, Object obj2, bf bfVar) {
        this.a = veVar.a(e34Var);
        this.b = e34Var;
        this.c = obj2;
        this.d = obj;
        this.e = (bf) e34Var.a.k(obj);
        pe1 pe1Var = e34Var.a;
        this.f = (bf) pe1Var.k(obj2);
        this.g = bfVar != null ? c75.t(bfVar) : ((bf) pe1Var.k(obj)).c();
        this.h = -1L;
    }

    @Override // defpackage.re
    public final boolean a() {
        return this.a.a();
    }

    @Override // defpackage.re
    public final Object b(long j) {
        if (g(j)) {
            return this.c;
        }
        bf bfVarP = this.a.p(j, this.e, this.f, this.g);
        int iB = bfVarP.b();
        for (int i = 0; i < iB; i++) {
            if (Float.isNaN(bfVarP.a(i))) {
                kx2.b("AnimationVector cannot contain a NaN. " + bfVarP + ". Animation: " + this + ", playTimeNanos: " + j);
            }
        }
        return this.b.b.k(bfVarP);
    }

    @Override // defpackage.re
    public final long c() {
        if (this.h < 0) {
            this.h = this.a.c(this.e, this.f, this.g);
        }
        return this.h;
    }

    @Override // defpackage.re
    public final e34 d() {
        return this.b;
    }

    @Override // defpackage.re
    public final Object e() {
        return this.c;
    }

    @Override // defpackage.re
    public final bf f(long j) {
        if (!g(j)) {
            return this.a.m(j, this.e, this.f, this.g);
        }
        bf bfVar = this.i;
        if (bfVar != null) {
            return bfVar;
        }
        bf bfVarQ = this.a.q(this.e, this.f, this.g);
        this.i = bfVarQ;
        return bfVarQ;
    }

    public final void h(Object obj) {
        if (nt1.g(obj, this.d)) {
            return;
        }
        this.d = obj;
        this.e = (bf) this.b.a.k(obj);
        this.i = null;
        this.h = -1L;
    }

    public final void i(Object obj) {
        if (nt1.g(this.c, obj)) {
            return;
        }
        this.c = obj;
        this.f = (bf) this.b.a.k(obj);
        this.i = null;
        this.h = -1L;
    }

    public final String toString() {
        return "TargetBasedAnimation: " + this.d + " -> " + this.c + ",initial velocity: " + this.g + ", duration: " + (c() / 1000000) + " ms,animationSpec: " + this.a;
    }
}
