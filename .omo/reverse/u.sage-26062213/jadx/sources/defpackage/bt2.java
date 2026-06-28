package defpackage;

import java.io.File;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bt2 implements Comparable {
    public static final String o;
    public final g00 n;

    static {
        String str = File.separator;
        str.getClass();
        o = str;
    }

    public bt2(g00 g00Var) {
        g00Var.getClass();
        this.n = g00Var;
    }

    public final ArrayList a() {
        ArrayList arrayList = new ArrayList();
        int iA = c.a(this);
        g00 g00Var = this.n;
        if (iA == -1) {
            iA = 0;
        } else if (iA < g00Var.c() && g00Var.h(iA) == 92) {
            iA++;
        }
        int iC = g00Var.c();
        int i = iA;
        while (iA < iC) {
            if (g00Var.h(iA) == 47 || g00Var.h(iA) == 92) {
                arrayList.add(g00Var.n(i, iA));
                i = iA + 1;
            }
            iA++;
        }
        if (i < g00Var.c()) {
            arrayList.add(g00Var.n(i, g00Var.c()));
        }
        return arrayList;
    }

    public final String b() {
        g00 g00Var = c.a;
        g00 g00VarO = this.n;
        int iJ = g00.j(g00VarO, g00Var);
        if (iJ == -1) {
            iJ = g00.j(g00VarO, c.b);
        }
        if (iJ != -1) {
            g00VarO = g00.o(g00VarO, iJ + 1, 0, 2);
        } else if (f() != null && g00VarO.c() == 2) {
            g00VarO = g00.q;
        }
        return g00VarO.q();
    }

    public final bt2 c() {
        g00 g00Var = c.d;
        g00 g00Var2 = this.n;
        if (nt1.g(g00Var2, g00Var)) {
            return null;
        }
        g00 g00Var3 = c.a;
        if (nt1.g(g00Var2, g00Var3)) {
            return null;
        }
        g00 g00Var4 = c.b;
        if (nt1.g(g00Var2, g00Var4)) {
            return null;
        }
        g00 g00Var5 = c.e;
        g00Var2.getClass();
        g00Var5.getClass();
        int iC = g00Var2.c();
        byte[] bArr = g00Var5.n;
        if (g00Var2.k(iC - bArr.length, g00Var5, bArr.length) && (g00Var2.c() == 2 || g00Var2.k(g00Var2.c() - 3, g00Var3, 1) || g00Var2.k(g00Var2.c() - 3, g00Var4, 1))) {
            return null;
        }
        int iJ = g00.j(g00Var2, g00Var3);
        if (iJ == -1) {
            iJ = g00.j(g00Var2, g00Var4);
        }
        if (iJ == 2 && f() != null) {
            if (g00Var2.c() == 3) {
                return null;
            }
            return new bt2(g00.o(g00Var2, 0, 3, 1));
        }
        if (iJ == 1) {
            g00Var4.getClass();
            if (g00Var2.k(0, g00Var4, g00Var4.c())) {
                return null;
            }
        }
        if (iJ != -1 || f() == null) {
            return iJ == -1 ? new bt2(g00Var) : iJ == 0 ? new bt2(g00.o(g00Var2, 0, 1, 1)) : new bt2(g00.o(g00Var2, 0, iJ, 1));
        }
        if (g00Var2.c() == 2) {
            return null;
        }
        return new bt2(g00.o(g00Var2, 0, 2, 1));
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        bt2 bt2Var = (bt2) obj;
        bt2Var.getClass();
        return this.n.compareTo(bt2Var.n);
    }

    public final bt2 d(bt2 bt2Var) {
        bt2Var.getClass();
        g00 g00Var = bt2Var.n;
        int iA = c.a(this);
        g00 g00Var2 = this.n;
        bt2 bt2Var2 = iA == -1 ? null : new bt2(g00Var2.n(0, iA));
        int iA2 = c.a(bt2Var);
        if (!nt1.g(bt2Var2, iA2 == -1 ? null : new bt2(g00Var.n(0, iA2)))) {
            p61.t("Paths of different roots cannot be relative to each other: ", this, " and ", bt2Var);
            return null;
        }
        ArrayList arrayListA = a();
        ArrayList arrayListA2 = bt2Var.a();
        int iMin = Math.min(arrayListA.size(), arrayListA2.size());
        int i = 0;
        while (i < iMin && nt1.g(arrayListA.get(i), arrayListA2.get(i))) {
            i++;
        }
        if (i == iMin && g00Var2.c() == g00Var.c()) {
            return qz0.k(".");
        }
        if (arrayListA2.subList(i, arrayListA2.size()).indexOf(c.e) != -1) {
            p61.t("Impossible relative path to resolve: ", this, " and ", bt2Var);
            return null;
        }
        if (nt1.g(g00Var, c.d)) {
            return this;
        }
        sy syVar = new sy();
        g00 g00VarC = c.c(bt2Var);
        if (g00VarC == null && (g00VarC = c.c(this)) == null) {
            g00VarC = c.f(o);
        }
        int size = arrayListA2.size();
        for (int i2 = i; i2 < size; i2++) {
            syVar.j0(c.e);
            syVar.j0(g00VarC);
        }
        int size2 = arrayListA.size();
        while (i < size2) {
            syVar.j0((g00) arrayListA.get(i));
            syVar.j0(g00VarC);
            i++;
        }
        return c.d(syVar, false);
    }

    public final bt2 e(String str) {
        str.getClass();
        sy syVar = new sy();
        syVar.u0(str);
        return c.b(this, c.d(syVar, false), false);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof bt2) && nt1.g(((bt2) obj).n, this.n);
    }

    public final Character f() {
        g00 g00Var = c.a;
        g00 g00Var2 = this.n;
        if (g00.f(g00Var2, g00Var) != -1 || g00Var2.c() < 2 || g00Var2.h(1) != 58) {
            return null;
        }
        char cH = (char) g00Var2.h(0);
        if (('a' > cH || cH >= '{') && ('A' > cH || cH >= '[')) {
            return null;
        }
        return Character.valueOf(cH);
    }

    public final int hashCode() {
        return this.n.hashCode();
    }

    public final File toFile() {
        return new File(this.n.q());
    }

    public final String toString() {
        return this.n.q();
    }
}
