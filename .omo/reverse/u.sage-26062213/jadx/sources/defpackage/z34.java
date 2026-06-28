package defpackage;

import java.io.IOException;
import java.util.Currency;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class z34 extends g34 {
    @Override // defpackage.g34
    public final Object b(ww1 ww1Var) {
        String strQ0 = ww1Var.q0();
        try {
            return Currency.getInstance(strQ0);
        } catch (IllegalArgumentException e) {
            StringBuilder sbA = di0.A("Failed parsing '", strQ0, "' as Currency; at path ");
            sbA.append(ww1Var.K(true));
            throw new fw1(5, sbA.toString(), e);
        }
    }

    @Override // defpackage.g34
    public final void c(bx1 bx1Var, Object obj) throws IOException {
        bx1Var.n0(((Currency) obj).getCurrencyCode());
    }
}
