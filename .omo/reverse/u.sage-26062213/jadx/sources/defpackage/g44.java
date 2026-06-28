package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class g44 extends g34 {
    @Override // defpackage.g34
    public final Object b(ww1 ww1Var) throws IOException {
        if (ww1Var.s0() == 9) {
            ww1Var.o0();
            return null;
        }
        try {
            int iZ = ww1Var.Z();
            if (iZ <= 255 && iZ >= -128) {
                return Byte.valueOf((byte) iZ);
            }
            StringBuilder sbU = xw1.u("Lossy conversion from ", iZ, " to byte; at path ");
            sbU.append(ww1Var.K(true));
            throw new fw1(sbU.toString(), 5);
        } catch (NumberFormatException e) {
            throw new fw1(e, 5);
        }
    }

    @Override // defpackage.g34
    public final void c(bx1 bx1Var, Object obj) throws IOException {
        if (((Number) obj) == null) {
            bx1Var.L();
        } else {
            bx1Var.i0(r4.byteValue());
        }
    }
}
