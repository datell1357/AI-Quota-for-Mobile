package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class me3 extends g0 implements si0 {
    public final dh0 s;

    public me3(dh0 dh0Var, hi0 hi0Var) {
        super(hi0Var, true);
        this.s = dh0Var;
    }

    @Override // defpackage.bv1
    public final boolean T() {
        return true;
    }

    @Override // defpackage.si0
    public final si0 c() {
        dh0 dh0Var = this.s;
        if (dh0Var instanceof si0) {
            return (si0) dh0Var;
        }
        return null;
    }

    @Override // defpackage.bv1
    public void p(Object obj) throws ru0 {
        tu0.a(dm0.A(this.s), se0.D(obj));
    }

    @Override // defpackage.bv1
    public void q(Object obj) {
        this.s.g(se0.D(obj));
    }

    public void t0() {
    }
}
