package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class b71 implements i41 {
    public final /* synthetic */ int a = 0;
    public final k03 b;
    public final k03 c;
    public final k03 d;

    public b71(k03 k03Var, k03 k03Var2, k03 k03Var3) {
        this.b = k03Var;
        this.c = k03Var2;
        this.d = k03Var3;
    }

    @Override // defpackage.m03
    public final Object get() {
        int i = this.a;
        k03 k03Var = this.d;
        k03 k03Var2 = this.c;
        k03 k03Var3 = this.b;
        switch (i) {
            case 0:
                Context context = (Context) ((ij3) k03Var).b;
                hi0 hi0Var = (hi0) k03Var3.get();
                hj3 hj3Var = (hj3) k03Var2.get();
                context.getClass();
                hi0Var.getClass();
                hj3Var.getClass();
                return mj1.n(hj3Var, new dd1(13, new v(8, hj3Var)), dm0.c(hi0Var), new ws0(context, 5));
            default:
                return new qk3((hi0) k03Var3.get(), (iz3) k03Var2.get(), (lm0) k03Var.get());
        }
    }

    public b71(ij3 ij3Var, k03 k03Var, k03 k03Var2) {
        this.d = ij3Var;
        this.b = k03Var;
        this.c = k03Var2;
    }
}
