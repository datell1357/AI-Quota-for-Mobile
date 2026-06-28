package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class e44 extends g34 {
    @Override // defpackage.g34
    public final Object b(ww1 ww1Var) throws IOException {
        int iS0 = ww1Var.s0();
        if (iS0 != 9) {
            return iS0 == 6 ? Boolean.valueOf(Boolean.parseBoolean(ww1Var.q0())) : Boolean.valueOf(ww1Var.V());
        }
        ww1Var.o0();
        return null;
    }

    @Override // defpackage.g34
    public final void c(bx1 bx1Var, Object obj) throws IOException {
        Boolean bool = (Boolean) obj;
        if (bool == null) {
            bx1Var.L();
            return;
        }
        bx1Var.p0();
        bx1Var.b();
        bx1Var.n.write(bool.booleanValue() ? "true" : "false");
    }
}
