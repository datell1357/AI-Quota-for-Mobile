package defpackage;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class w34 extends g34 {
    @Override // defpackage.g34
    public final Object b(ww1 ww1Var) {
        if (ww1Var.s0() == 9) {
            ww1Var.o0();
            return null;
        }
        try {
            String strQ0 = ww1Var.q0();
            if (strQ0.equals("null")) {
                return null;
            }
            return new URI(strQ0);
        } catch (URISyntaxException e) {
            throw new fw1(e, 5);
        }
    }

    @Override // defpackage.g34
    public final void c(bx1 bx1Var, Object obj) throws IOException {
        URI uri = (URI) obj;
        bx1Var.n0(uri == null ? null : uri.toASCIIString());
    }
}
