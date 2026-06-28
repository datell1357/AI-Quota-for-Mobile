package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dr2 implements n03 {
    public static final p61 c = new p61(27);
    public static final ea0 d = new ea0(5);
    public xq0 a;
    public volatile n03 b;

    public dr2(p61 p61Var, n03 n03Var) {
        this.a = p61Var;
        this.b = n03Var;
    }

    public final void a(xq0 xq0Var) {
        n03 n03Var;
        n03 n03Var2;
        n03 n03Var3 = this.b;
        ea0 ea0Var = d;
        if (n03Var3 != ea0Var) {
            xq0Var.a(n03Var3);
            return;
        }
        synchronized (this) {
            n03Var = this.b;
            if (n03Var != ea0Var) {
                n03Var2 = n03Var;
            } else {
                this.a = new rr(8, this.a, xq0Var);
                n03Var2 = null;
            }
        }
        if (n03Var2 != null) {
            xq0Var.a(n03Var);
        }
    }

    @Override // defpackage.n03
    public final Object get() {
        return this.b.get();
    }
}
