package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class y53 implements i41 {
    public final /* synthetic */ int a = 1;
    public final k03 b;
    public final k03 c;
    public final k03 d;
    public final k03 e;
    public final k03 f;

    public y53(k03 k03Var, k03 k03Var2, k03 k03Var3, k03 k03Var4, k03 k03Var5) {
        this.b = k03Var;
        this.c = k03Var2;
        this.d = k03Var3;
        this.e = k03Var4;
        this.f = k03Var5;
    }

    @Override // defpackage.m03
    public final Object get() {
        int i = this.a;
        k03 k03Var = this.e;
        k03 k03Var2 = this.d;
        k03 k03Var3 = this.c;
        k03 k03Var4 = this.b;
        k03 k03Var5 = this.f;
        switch (i) {
            case 0:
                return new w53((iz3) k03Var4.get(), (n61) k03Var3.get(), (jh) k03Var2.get(), (x53) k03Var.get(), (qk3) k03Var5.get());
            default:
                return new tj3((e61) ((ij3) k03Var5).b, (n61) k03Var4.get(), (gk3) k03Var3.get(), (h21) k03Var2.get(), (hi0) k03Var.get());
        }
    }

    public y53(ij3 ij3Var, k03 k03Var, k03 k03Var2, k03 k03Var3, k03 k03Var4) {
        this.f = ij3Var;
        this.b = k03Var;
        this.c = k03Var2;
        this.d = k03Var3;
        this.e = k03Var4;
    }
}
