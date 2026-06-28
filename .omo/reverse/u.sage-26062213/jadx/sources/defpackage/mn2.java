package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mn2 extends g34 {
    public static final ln2 b = new ln2(new mn2(2), 0);
    public final int a;

    public mn2(int i) {
        this.a = i;
    }

    @Override // defpackage.g34
    public final Object b(ww1 ww1Var) throws IOException {
        int iS0 = ww1Var.s0();
        int iF = di0.F(iS0);
        if (iF == 5 || iF == 6) {
            return xw1.c(this.a, ww1Var);
        }
        if (iF == 8) {
            ww1Var.o0();
            return null;
        }
        throw new fw1("Expecting number, got: " + xw1.A(iS0) + "; at path " + ww1Var.K(false), 5);
    }

    @Override // defpackage.g34
    public final void c(bx1 bx1Var, Object obj) throws IOException {
        bx1Var.j0((Number) obj);
    }
}
