package defpackage;

import java.io.IOException;
import java.math.BigInteger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class q34 extends g34 {
    @Override // defpackage.g34
    public final Object b(ww1 ww1Var) {
        if (ww1Var.s0() == 9) {
            ww1Var.o0();
            return null;
        }
        String strQ0 = ww1Var.q0();
        try {
            zf5.p(strQ0);
            return new BigInteger(strQ0);
        } catch (NumberFormatException e) {
            StringBuilder sbA = di0.A("Failed parsing '", strQ0, "' as BigInteger; at path ");
            sbA.append(ww1Var.K(true));
            throw new fw1(5, sbA.toString(), e);
        }
    }

    @Override // defpackage.g34
    public final void c(bx1 bx1Var, Object obj) throws IOException {
        bx1Var.j0((BigInteger) obj);
    }
}
