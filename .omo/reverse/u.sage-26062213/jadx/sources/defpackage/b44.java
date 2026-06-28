package defpackage;

import java.io.IOException;
import java.util.BitSet;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class b44 extends g34 {
    @Override // defpackage.g34
    public final Object b(ww1 ww1Var) throws IOException {
        boolean zV;
        BitSet bitSet = new BitSet();
        ww1Var.b();
        int iS0 = ww1Var.s0();
        int i = 0;
        while (iS0 != 2) {
            int iF = di0.F(iS0);
            if (iF == 5 || iF == 6) {
                int iZ = ww1Var.Z();
                if (iZ == 0) {
                    zV = false;
                } else {
                    if (iZ != 1) {
                        StringBuilder sbU = xw1.u("Invalid bitset value ", iZ, ", expected 0 or 1; at path ");
                        sbU.append(ww1Var.K(true));
                        throw new fw1(sbU.toString(), 5);
                    }
                    zV = true;
                }
            } else {
                if (iF != 7) {
                    throw new fw1("Invalid bitset value type: " + xw1.A(iS0) + "; at path " + ww1Var.K(false), 5);
                }
                zV = ww1Var.V();
            }
            if (zV) {
                bitSet.set(i);
            }
            i++;
            iS0 = ww1Var.s0();
        }
        ww1Var.A();
        return bitSet;
    }

    @Override // defpackage.g34
    public final void c(bx1 bx1Var, Object obj) throws IOException {
        BitSet bitSet = (BitSet) obj;
        bx1Var.j();
        int length = bitSet.length();
        for (int i = 0; i < length; i++) {
            bx1Var.i0(bitSet.get(i) ? 1L : 0L);
        }
        bx1Var.A();
    }
}
