package defpackage;

import java.util.Set;
import java.util.logging.Level;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ol4 extends v43 {
    public final Level b;
    public final Set c;
    public final fh5 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ol4(String str) {
        super(str);
        Level level = Level.ALL;
        Set set = pl4.f;
        this.b = level;
        this.c = pl4.f;
        this.d = pl4.g;
    }

    @Override // defpackage.v43
    public final boolean a(Level level) {
        return true;
    }

    @Override // defpackage.v43
    public final void b(cg5 cg5Var) {
        String strA = (String) cg5Var.d().e(wg5.a);
        if (strA == null) {
            strA = this.a;
        }
        if (strA == null) {
            kg5 kg5Var = cg5Var.d;
            if (kg5Var == null) {
                k21.n("cannot request log site information prior to postProcess()");
                return;
            }
            strA = kg5Var.a();
            int iIndexOf = strA.indexOf(36, strA.lastIndexOf(46));
            if (iIndexOf >= 0) {
                strA = strA.substring(0, iIndexOf);
            }
        }
        pl4.d(cg5Var, il4.a(strA), this.b, this.c, this.d);
    }
}
