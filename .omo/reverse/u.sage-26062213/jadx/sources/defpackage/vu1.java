package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class vu1 extends bv1 {
    public final boolean r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vu1(tu1 tu1Var) {
        super(true);
        boolean z = true;
        Q(tu1Var);
        n40 n40VarJ = J();
        o40 o40Var = n40VarJ instanceof o40 ? (o40) n40VarJ : null;
        if (o40Var == null) {
            z = false;
            break;
        }
        bv1 bv1VarQ = o40Var.q();
        while (!bv1VarQ.G()) {
            n40 n40VarJ2 = bv1VarQ.J();
            o40 o40Var2 = n40VarJ2 instanceof o40 ? (o40) n40VarJ2 : null;
            if (o40Var2 == null) {
                z = false;
                break;
            }
            bv1VarQ = o40Var2.q();
        }
        this.r = z;
    }

    @Override // defpackage.bv1
    public final boolean G() {
        return this.r;
    }

    @Override // defpackage.bv1
    public final boolean H() {
        return true;
    }
}
