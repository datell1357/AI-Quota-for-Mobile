package defpackage;

import java.io.IOException;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class y34 extends g34 {
    @Override // defpackage.g34
    public final Object b(ww1 ww1Var) {
        if (ww1Var.s0() == 9) {
            ww1Var.o0();
            return null;
        }
        String strQ0 = ww1Var.q0();
        try {
            return UUID.fromString(strQ0);
        } catch (IllegalArgumentException e) {
            StringBuilder sbA = di0.A("Failed parsing '", strQ0, "' as UUID; at path ");
            sbA.append(ww1Var.K(true));
            throw new fw1(5, sbA.toString(), e);
        }
    }

    @Override // defpackage.g34
    public final void c(bx1 bx1Var, Object obj) throws IOException {
        UUID uuid = (UUID) obj;
        bx1Var.n0(uuid == null ? null : uuid.toString());
    }
}
