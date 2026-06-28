package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class a71 implements i41 {
    public final /* synthetic */ int a;
    public final ij3 b;
    public final k03 c;

    public a71(k03 k03Var, ij3 ij3Var) {
        this.a = 2;
        this.c = k03Var;
        this.b = ij3Var;
    }

    @Override // defpackage.m03
    public final Object get() {
        int i = this.a;
        ij3 ij3Var = this.b;
        k03 k03Var = this.c;
        switch (i) {
            case 0:
                Context context = (Context) ij3Var.b;
                hi0 hi0Var = (hi0) k03Var.get();
                context.getClass();
                hi0Var.getClass();
                return mj1.n(w13.Q, new dd1(13, new t3(22)), dm0.c(hi0Var), new ws0(context, 4));
            case 1:
                return new yy2((Context) ij3Var.b, (q94) k03Var.get());
            default:
                return new x53((jh) k03Var.get(), (hi0) ij3Var.b);
        }
    }

    public /* synthetic */ a71(ij3 ij3Var, k03 k03Var, int i) {
        this.a = i;
        this.b = ij3Var;
        this.c = k03Var;
    }
}
