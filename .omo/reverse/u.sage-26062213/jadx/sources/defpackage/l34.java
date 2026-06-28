package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class l34 extends g34 {
    @Override // defpackage.g34
    public final Object b(ww1 ww1Var) {
        if (ww1Var.s0() == 9) {
            ww1Var.o0();
            return null;
        }
        try {
            return Long.valueOf(ww1Var.i0());
        } catch (NumberFormatException e) {
            throw new fw1(e, 5);
        }
    }

    @Override // defpackage.g34
    public final void c(bx1 bx1Var, Object obj) throws IOException {
        Number number = (Number) obj;
        if (number == null) {
            bx1Var.L();
        } else {
            bx1Var.i0(number.longValue());
        }
    }
}
