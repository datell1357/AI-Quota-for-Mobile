package defpackage;

import java.io.IOException;
import java.net.InetAddress;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class x34 extends g34 {
    @Override // defpackage.g34
    public final Object b(ww1 ww1Var) {
        if (ww1Var.s0() != 9) {
            return InetAddress.getByName(ww1Var.q0());
        }
        ww1Var.o0();
        return null;
    }

    @Override // defpackage.g34
    public final void c(bx1 bx1Var, Object obj) throws IOException {
        InetAddress inetAddress = (InetAddress) obj;
        bx1Var.n0(inetAddress == null ? null : inetAddress.getHostAddress());
    }
}
