package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vj3 implements i41 {
    public final /* synthetic */ int a;
    public final k03 b;
    public final k03 c;

    public /* synthetic */ vj3(k03 k03Var, k03 k03Var2, int i) {
        this.a = i;
        this.b = k03Var;
        this.c = k03Var2;
    }

    @Override // defpackage.m03
    public final Object get() {
        int i = this.a;
        k03 k03Var = this.c;
        k03 k03Var2 = this.b;
        switch (i) {
            case 0:
                return new uj3((iz3) k03Var2.get(), (q94) k03Var.get());
            default:
                return new gk3((sk3) k03Var2.get(), (sk3) k03Var.get());
        }
    }
}
