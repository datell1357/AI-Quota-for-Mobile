package defpackage;

import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.zip.Inflater;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xh4 extends r51 {
    public static final bt2 s;
    public final bt2 p;
    public final r51 q;
    public final LinkedHashMap r;

    static {
        String str = bt2.o;
        s = qz0.k("/");
    }

    public xh4(bt2 bt2Var, r51 r51Var, LinkedHashMap linkedHashMap) {
        r51Var.getClass();
        this.p = bt2Var;
        this.q = r51Var;
        this.r = linkedHashMap;
    }

    @Override // defpackage.r51
    public final List F(bt2 bt2Var) throws IOException {
        bt2 bt2Var2 = s;
        bt2Var2.getClass();
        wh4 wh4Var = (wh4) this.r.get(c.b(bt2Var2, bt2Var, true));
        if (wh4Var != null) {
            return o70.C0(wh4Var.q);
        }
        q73.q(bt2Var, "not a directory: ");
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x00cf  */
    @Override // defpackage.r51
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.i51 L(defpackage.bt2 r24) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xh4.L(bt2):i51");
    }

    @Override // defpackage.r51
    public final cx1 N(bt2 bt2Var) {
        throw new UnsupportedOperationException("not implemented yet!");
    }

    @Override // defpackage.r51
    public final kn3 R(bt2 bt2Var, boolean z) throws IOException {
        bt2Var.getClass();
        throw new IOException("zip file systems are read-only");
    }

    @Override // defpackage.r51
    public final yp3 V(bt2 bt2Var) throws Throwable {
        Throwable th;
        d23 d23Var;
        bt2Var.getClass();
        bt2 bt2Var2 = s;
        bt2Var2.getClass();
        wh4 wh4Var = (wh4) this.r.get(c.b(bt2Var2, bt2Var, true));
        if (wh4Var == null) {
            mk0.l(bt2Var, "no such file: ");
            return null;
        }
        long j = wh4Var.f;
        cx1 cx1VarN = this.q.N(this.p);
        try {
            d23Var = new d23(cx1VarN.b(wh4Var.h));
            try {
                cx1VarN.close();
                th = null;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            if (cx1VarN != null) {
                try {
                    cx1VarN.close();
                } catch (Throwable th4) {
                    on4.j(th3, th4);
                }
            }
            th = th3;
            d23Var = null;
        }
        if (th != null) {
            throw th;
        }
        d23Var.getClass();
        ai4.f(d23Var, null);
        if (wh4Var.g == 0) {
            return new k71(d23Var, j, true);
        }
        return new k71(new sq1(new d23(new k71(d23Var, wh4Var.e, true)), new Inflater(true)), j, false);
    }

    @Override // defpackage.r51
    public final kn3 b(bt2 bt2Var) throws IOException {
        bt2Var.getClass();
        throw new IOException("zip file systems are read-only");
    }

    @Override // defpackage.r51
    public final void j(bt2 bt2Var, bt2 bt2Var2) throws IOException {
        bt2Var.getClass();
        bt2Var2.getClass();
        throw new IOException("zip file systems are read-only");
    }

    @Override // defpackage.r51
    public final void r(bt2 bt2Var) throws IOException {
        bt2Var.getClass();
        throw new IOException("zip file systems are read-only");
    }

    @Override // defpackage.r51
    public final void z(bt2 bt2Var) throws IOException {
        bt2Var.getClass();
        throw new IOException("zip file systems are read-only");
    }
}
