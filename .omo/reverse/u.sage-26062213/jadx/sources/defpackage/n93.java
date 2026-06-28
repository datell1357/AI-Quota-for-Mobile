package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class n93 implements zp1 {
    public final boolean a;
    public final float b;
    public final long c;
    public final jl3 d;
    public final boolean e;
    public final boolean f;
    public final boolean g;
    public final boolean h;

    public n93(boolean z, float f, long j, jl3 jl3Var, boolean z2) {
        if (jl3Var == null) {
            cw0 cw0Var = cw0.b(f, Float.NaN) ? null : new cw0(f);
            jl3Var = cw0Var != null ? oa3.a(cw0Var.n) : null;
            if (jl3Var == null) {
                jl3Var = k75.d;
            }
        }
        this.a = z;
        this.b = f;
        this.c = j;
        this.d = jl3Var;
        this.e = true;
        this.f = z2;
        this.g = true;
        this.h = true;
    }

    @Override // defpackage.zp1
    public final jr0 a(xs1 xs1Var) {
        return new vr0(xs1Var, this.a, this.b, new ie5(this), this.d, this.e, this.f, this.g, this.h);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n93)) {
            return false;
        }
        n93 n93Var = (n93) obj;
        return this.a == n93Var.a && cw0.b(this.b, n93Var.b) && t70.c(this.c, n93Var.c) && nt1.g(this.d, n93Var.d) && this.e == n93Var.e && this.f == n93Var.f && this.g == n93Var.g && this.h == n93Var.h;
    }

    @Override // defpackage.zp1
    public final int hashCode() {
        int iL = di0.l(this.b, Boolean.hashCode(this.a) * 31, 961);
        int i = t70.g;
        return Boolean.hashCode(this.h) + xw1.n(xw1.n(xw1.n((this.d.hashCode() + xw1.l(iL, 31, this.c)) * 31, this.e, 31), this.f, 31), this.g, 31);
    }
}
