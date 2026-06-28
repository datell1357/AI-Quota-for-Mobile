package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class az1 {
    public static final ds0 a = se0.a();

    public static final sr2 a(xy1 xy1Var) {
        sr2 sr2Var = xy1Var.A;
        if (sr2Var != null) {
            return sr2Var;
        }
        throw di0.m("LayoutNode should be attached to an owner");
    }
}
