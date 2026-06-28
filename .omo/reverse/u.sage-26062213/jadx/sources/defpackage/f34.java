package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f34 extends g34 {
    public final /* synthetic */ g34 a;

    public f34(g34 g34Var) {
        this.a = g34Var;
    }

    @Override // defpackage.g34
    public final Object b(ww1 ww1Var) {
        if (ww1Var.s0() != 9) {
            return this.a.b(ww1Var);
        }
        ww1Var.o0();
        return null;
    }

    @Override // defpackage.g34
    public final void c(bx1 bx1Var, Object obj) throws IOException {
        if (obj == null) {
            bx1Var.L();
        } else {
            this.a.c(bx1Var, obj);
        }
    }

    public final String toString() {
        return "NullSafeTypeAdapter[" + this.a + "]";
    }
}
