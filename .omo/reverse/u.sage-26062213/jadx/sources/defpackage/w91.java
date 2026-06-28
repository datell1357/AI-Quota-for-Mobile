package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class w91 {
    public final dh a;
    public final q9 b;
    public final lg2 c;
    public final lg2 d;
    public boolean e;

    public w91(dh dhVar, q9 q9Var) {
        this.a = dhVar;
        this.b = q9Var;
        lg2 lg2Var = ud3.a;
        this.c = new lg2();
        this.d = new lg2();
    }

    public final void a() {
        if (this.e) {
            return;
        }
        h9 h9Var = new h9(0, this, w91.class, "invalidateNodes", "invalidateNodes()V", 0, 0, 1);
        dg2 dg2Var = this.b.C0;
        if (dg2Var.g(h9Var) < 0) {
            dg2Var.a(h9Var);
        }
        this.e = true;
    }
}
