package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class q30 extends p30 {
    public final /* synthetic */ int q;
    public final Object r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ q30(Object obj, hi0 hi0Var, int i, vy vyVar, int i2) {
        super(hi0Var, i, vyVar);
        this.q = i2;
        this.r = obj;
    }

    @Override // defpackage.p30
    public Object d(hz2 hz2Var, dh0 dh0Var) {
        int i = this.q;
        t64 t64Var = t64.a;
        Object obj = this.r;
        switch (i) {
            case 0:
                Object objF = ((df1) obj).f(hz2Var, dh0Var);
                return objF == ri0.n ? objF : t64Var;
            default:
                zh3 zh3Var = new zh3(hz2Var);
                Iterator it = ((Iterable) obj).iterator();
                while (it.hasNext()) {
                    ca.y(hz2Var, null, null, new n((a81) it.next(), zh3Var, null, 8), 3);
                }
                return t64Var;
        }
    }

    @Override // defpackage.p30
    public p30 e(hi0 hi0Var, int i, vy vyVar) {
        int i2 = this.q;
        Object obj = this.r;
        switch (i2) {
            case 0:
                return new q30((df1) obj, hi0Var, i, vyVar, 0);
            default:
                return new q30((Iterable) obj, hi0Var, i, vyVar, 1);
        }
    }

    @Override // defpackage.p30
    public n30 g(qi0 qi0Var) {
        switch (this.q) {
            case 1:
                df1 nVar = new n(this, null, 6);
                hz2 hz2Var = new hz2(ix.F(qi0Var, this.n), ix.c(this.o, 4, vy.n));
                hz2Var.s0(ti0.n, hz2Var, nVar);
                return hz2Var;
            default:
                return super.g(qi0Var);
        }
    }

    @Override // defpackage.p30
    public String toString() {
        switch (this.q) {
            case 0:
                return "block[" + ((df1) this.r) + "] -> " + super.toString();
            default:
                return super.toString();
        }
    }
}
