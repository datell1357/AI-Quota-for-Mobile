package defpackage;

import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fp0 extends m1 {
    public final ep0 g;
    public final b40 h;

    public fp0(xj3 xj3Var, bv bvVar, ep0 ep0Var) {
        super(xj3Var, bvVar);
        this.g = ep0Var == null ? ep0.b : ep0Var;
        this.h = new b40(128);
    }

    @Override // defpackage.m1
    public final av b(xj3 xj3Var) throws em2 {
        b40 b40Var = this.h;
        b40Var.o = 0;
        if (xj3Var.d(b40Var) == -1) {
            throw new em2(cm1.a("The target server failed to respond"));
        }
        return new av(((bv) this.e).b(b40Var, new ky0(0, b40Var.o)), this.g.a, Locale.getDefault());
    }
}
