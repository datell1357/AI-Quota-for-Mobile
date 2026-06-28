package defpackage;

import kotlinx.serialization.json.internal.a;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fv1 {
    public static final fv1 d = new fv1();
    public final pv1 a = new pv1();
    public final b21 b = pi3.a;
    public final ps0 c = new ps0(0);

    public final Object a(lx1 lx1Var, String str) {
        lx1Var.getClass();
        this.a.getClass();
        vi2 vi2Var = new vi2(str);
        Object objA = new a(this, rh4.p, vi2Var, lx1Var.d()).a(lx1Var);
        if (vi2Var.e() == 10) {
            return objA;
        }
        vi2.l(vi2Var, "Expected EOF after parsing, but had " + str.charAt(vi2Var.b - 1) + " instead", 0, null, 6);
        throw null;
    }

    public final String b(lx1 lx1Var, Object obj) {
        char[] cArr;
        lx1Var.getClass();
        d90 d90Var = new d90((char) 0, 4);
        d40 d40Var = d40.c;
        synchronized (d40Var) {
            vh vhVar = d40Var.a;
            cArr = null;
            char[] cArr2 = (char[]) (vhVar.isEmpty() ? null : vhVar.removeLast());
            if (cArr2 != null) {
                d40Var.b -= cArr2.length;
                cArr = cArr2;
            }
        }
        if (cArr == null) {
            cArr = new char[128];
        }
        d90Var.p = cArr;
        try {
            rh4 rh4Var = rh4.p;
            b[] bVarArr = new b[rh4.f298u.a()];
            this.a.getClass();
            new b(new sb0(d90Var), this, rh4Var, bVarArr).p(lx1Var, obj);
            return d90Var.toString();
        } finally {
            d90Var.m();
        }
    }
}
