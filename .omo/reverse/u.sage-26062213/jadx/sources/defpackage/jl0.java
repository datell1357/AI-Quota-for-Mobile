package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jl0 extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public /* synthetic */ Object s;
    public final /* synthetic */ pe1 t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ jl0(dh0 dh0Var, pe1 pe1Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = pe1Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                return ((jl0) o((dh0) obj2, (pw2) obj)).q(t64Var);
            case 1:
                return ((jl0) o((dh0) obj2, (pw2) obj)).q(t64Var);
            default:
                ((jl0) o((dh0) obj2, (hg2) obj)).q(t64Var);
                return t64Var;
        }
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        pe1 pe1Var = this.t;
        switch (i) {
            case 0:
                jl0 jl0Var = new jl0(dh0Var, pe1Var, 0);
                jl0Var.s = obj;
                return jl0Var;
            case 1:
                jl0 jl0Var2 = new jl0(dh0Var, pe1Var, 1);
                jl0Var2.s = obj;
                return jl0Var2;
            default:
                jl0 jl0Var3 = new jl0(pe1Var, dh0Var);
                jl0Var3.s = obj;
                return jl0Var3;
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        pe1 pe1Var = this.t;
        switch (i) {
            case 0:
                gg4.T(obj);
                pw2 pw2Var = (pw2) this.s;
                pw2Var.getClass();
                return pe1Var.k(pw2Var.b());
            case 1:
                gg4.T(obj);
                pw2 pw2Var2 = (pw2) this.s;
                pw2Var2.getClass();
                return pe1Var.k(pw2Var2.b());
            default:
                gg4.T(obj);
                pe1Var.k((hg2) this.s);
                return t64.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jl0(pe1 pe1Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.r = 2;
        this.t = pe1Var;
    }
}
