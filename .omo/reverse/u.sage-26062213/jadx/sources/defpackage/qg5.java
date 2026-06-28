package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qg5 extends sg5 {
    public final /* synthetic */ sg5 c;
    public final /* synthetic */ sg5 d;

    public qg5(sg5 sg5Var, sg5 sg5Var2) {
        this.c = sg5Var;
        this.d = sg5Var2;
    }

    @Override // defpackage.sg5
    public final void a() {
        sg5 sg5Var = this.d;
        try {
            this.c.a();
        } finally {
            sg5Var.a();
        }
    }
}
