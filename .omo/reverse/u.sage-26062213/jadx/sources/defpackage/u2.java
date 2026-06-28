package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class u2 extends nq0 {
    public static u2 e;
    public static final k73 f = k73.o;
    public static final k73 g = k73.n;
    public ox3 c;
    public gh3 d;

    @Override // defpackage.nq0
    public final int[] b(int i) {
        int iB;
        if (d().length() > 0 && i < d().length()) {
            try {
                gh3 gh3Var = this.d;
                if (gh3Var == null) {
                    nt1.X("node");
                    throw null;
                }
                l33 l33VarG = gh3Var.g();
                int iRound = Math.round(l33VarG.d - l33VarG.b);
                if (i <= 0) {
                    i = 0;
                }
                ox3 ox3Var = this.c;
                if (ox3Var == null) {
                    nt1.X("layoutResult");
                    throw null;
                }
                int iA = ox3Var.a(i);
                ox3 ox3Var2 = this.c;
                if (ox3Var2 == null) {
                    nt1.X("layoutResult");
                    throw null;
                }
                float fD = ox3Var2.d(iA) + iRound;
                ox3 ox3Var3 = this.c;
                if (ox3Var3 == null) {
                    nt1.X("layoutResult");
                    throw null;
                }
                float fD2 = ox3Var3.d(ox3Var3.b.b - 1);
                ox3 ox3Var4 = this.c;
                if (fD < fD2) {
                    if (ox3Var4 == null) {
                        nt1.X("layoutResult");
                        throw null;
                    }
                    iB = ox3Var4.b(fD);
                } else {
                    if (ox3Var4 == null) {
                        nt1.X("layoutResult");
                        throw null;
                    }
                    iB = ox3Var4.b.b;
                }
                return c(i, l(iB - 1, g) + 1);
            } catch (IllegalStateException unused) {
            }
        }
        return null;
    }

    @Override // defpackage.nq0
    public final int[] k(int i) {
        int iB;
        if (d().length() <= 0 || i <= 0) {
            return null;
        }
        try {
            gh3 gh3Var = this.d;
            if (gh3Var == null) {
                nt1.X("node");
                throw null;
            }
            l33 l33VarG = gh3Var.g();
            int iRound = Math.round(l33VarG.d - l33VarG.b);
            int length = d().length();
            if (length <= i) {
                i = length;
            }
            ox3 ox3Var = this.c;
            if (ox3Var == null) {
                nt1.X("layoutResult");
                throw null;
            }
            int iA = ox3Var.a(i);
            ox3 ox3Var2 = this.c;
            if (ox3Var2 == null) {
                nt1.X("layoutResult");
                throw null;
            }
            float fD = ox3Var2.d(iA) - iRound;
            if (fD > 0.0f) {
                ox3 ox3Var3 = this.c;
                if (ox3Var3 == null) {
                    nt1.X("layoutResult");
                    throw null;
                }
                iB = ox3Var3.b(fD);
            } else {
                iB = 0;
            }
            if (i == d().length() && iB < iA) {
                iB++;
            }
            return c(l(iB, f), i);
        } catch (IllegalStateException unused) {
            return null;
        }
    }

    public final int l(int i, k73 k73Var) {
        ox3 ox3Var = this.c;
        if (ox3Var == null) {
            nt1.X("layoutResult");
            throw null;
        }
        int iC = ox3Var.c(i);
        ox3 ox3Var2 = this.c;
        if (ox3Var2 == null) {
            nt1.X("layoutResult");
            throw null;
        }
        k73 k73VarE = ox3Var2.e(iC);
        ox3 ox3Var3 = this.c;
        if (k73Var != k73VarE) {
            if (ox3Var3 != null) {
                return ox3Var3.c(i);
            }
            nt1.X("layoutResult");
            throw null;
        }
        if (ox3Var3 == null) {
            nt1.X("layoutResult");
            throw null;
        }
        se2 se2Var = ox3Var3.b;
        se2Var.b(i);
        ArrayList arrayList = (ArrayList) se2Var.e;
        nb nbVar = ((ms2) arrayList.get(ca.q(i, arrayList))).a;
        return (nbVar.d.e(i - r4.d) + r4.b) - 1;
    }
}
