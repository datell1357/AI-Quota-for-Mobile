package defpackage;

import com.google.api.client.http.HttpMethods;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class dm1 {
    static {
        g00 g00Var = g00.q;
        bx3.o("\"\\");
        bx3.o("\t ,=");
    }

    public static final boolean a(w73 w73Var) {
        if (nt1.g(w73Var.n.b, HttpMethods.HEAD)) {
            return false;
        }
        int i = w73Var.q;
        if (((i < 100 || i >= 200) && i != 204 && i != 304) || hi4.d(w73Var) != -1) {
            return true;
        }
        String strA = w73Var.s.a("Transfer-Encoding");
        if (strA == null) {
            strA = null;
        }
        return "chunked".equalsIgnoreCase(strA);
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void b(defpackage.mj1 r36, defpackage.cn1 r37, defpackage.kj1 r38) {
        /*
            Method dump skipped, instruction units count: 620
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dm1.b(mj1, cn1, kj1):void");
    }
}
