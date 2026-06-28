package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sb3 extends fh0 implements b81 {
    public final b81 q;
    public final hi0 r;
    public final int s;
    public hi0 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public dh0 f313u;

    public sb3(b81 b81Var, hi0 hi0Var) {
        super(b90.p, d01.n);
        this.q = b81Var;
        this.r = hi0Var;
        this.s = ((Number) hi0Var.R(new ei0(9), 0)).intValue();
    }

    @Override // defpackage.dr, defpackage.si0
    public final si0 c() {
        dh0 dh0Var = this.f313u;
        if (dh0Var instanceof si0) {
            return (si0) dh0Var;
        }
        return null;
    }

    @Override // defpackage.fh0, defpackage.dh0
    public final hi0 e() {
        hi0 hi0Var = this.t;
        return hi0Var == null ? d01.n : hi0Var;
    }

    @Override // defpackage.b81
    public final Object m(Object obj, dh0 dh0Var) {
        try {
            Object objT = t(dh0Var, obj);
            return objT == ri0.n ? objT : t64.a;
        } catch (Throwable th) {
            this.t = new bw0(dh0Var.e(), th);
            throw th;
        }
    }

    @Override // defpackage.dr
    public final StackTraceElement p() {
        return null;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        Throwable thA = g83.a(obj);
        if (thA != null) {
            this.t = new bw0(e(), thA);
        }
        dh0 dh0Var = this.f313u;
        if (dh0Var != null) {
            dh0Var.g(obj);
        }
        return ri0.n;
    }

    public final Object t(dh0 dh0Var, Object obj) {
        hi0 hi0VarE = dh0Var.e();
        n44.k0(hi0VarE);
        hi0 hi0Var = this.t;
        if (hi0Var != hi0VarE) {
            if (hi0Var instanceof bw0) {
                throw new IllegalStateException(at3.o0("\n            Flow exception transparency is violated:\n                Previous 'emit' call has thrown exception " + ((bw0) hi0Var).o + ", but then emission attempt of value '" + obj + "' has been detected.\n                Emissions from 'catch' blocks are prohibited in order to avoid unspecified behaviour, 'Flow.catch' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            ").toString());
            }
            if (((Number) hi0VarE.R(new sp0(16, this), 0)).intValue() != this.s) {
                throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + this.r + ",\n\t\tbut emission happened in " + hi0VarE + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
            }
            this.t = hi0VarE;
        }
        this.f313u = dh0Var;
        ff1 ff1Var = ub3.a;
        b81 b81Var = this.q;
        b81Var.getClass();
        Object objD = ff1Var.d(b81Var, obj, this);
        if (!nt1.g(objD, ri0.n)) {
            this.f313u = null;
        }
        return objD;
    }
}
