package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class n34 extends g34 {
    @Override // defpackage.g34
    public final Object b(ww1 ww1Var) {
        if (ww1Var.s0() == 9) {
            ww1Var.o0();
            return null;
        }
        String strQ0 = ww1Var.q0();
        if (strQ0.length() == 1) {
            return Character.valueOf(strQ0.charAt(0));
        }
        StringBuilder sbA = di0.A("Expecting character, got: ", strQ0, "; at ");
        sbA.append(ww1Var.K(true));
        throw new fw1(sbA.toString(), 5);
    }

    @Override // defpackage.g34
    public final void c(bx1 bx1Var, Object obj) throws IOException {
        Character ch = (Character) obj;
        bx1Var.n0(ch == null ? null : String.valueOf(ch));
    }
}
