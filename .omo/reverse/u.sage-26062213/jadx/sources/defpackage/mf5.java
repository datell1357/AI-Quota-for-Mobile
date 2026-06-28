package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mf5 extends nf5 {
    public static final nf5 e;
    public static final nf5 f;

    static {
        nf5 nf5VarB = new mf5(null, new wm3(0)).b();
        e = nf5VarB;
        mf5 mf5Var = new mf5(nf5VarB, new wm3(0));
        boolean z = !mf5Var.c;
        Boolean bool = Boolean.TRUE;
        n44.b0(z, "Can't mutate after handing to trace");
        n44.b0(!mf5Var.c(), "Key already present");
        mf5Var.b.put(nf5.d, bool);
        f = mf5Var.b();
    }
}
