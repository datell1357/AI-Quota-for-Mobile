package defpackage;

import java.text.BreakIterator;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t2 extends nq0 {
    public static t2 e;
    public static t2 f;
    public static t2 g;
    public static final k73 h = k73.o;
    public static final k73 i = k73.n;
    public final /* synthetic */ int c;
    public Object d;

    @Override // defpackage.nq0
    public final int[] b(int i2) {
        int iA;
        switch (this.c) {
            case 0:
                int length = d().length();
                if (length <= 0 || i2 >= length) {
                    return null;
                }
                if (i2 < 0) {
                    i2 = 0;
                }
                do {
                    BreakIterator breakIterator = (BreakIterator) this.d;
                    if (breakIterator == null) {
                        nt1.X("impl");
                        throw null;
                    }
                    boolean zIsBoundary = breakIterator.isBoundary(i2);
                    BreakIterator breakIterator2 = (BreakIterator) this.d;
                    if (zIsBoundary) {
                        if (breakIterator2 == null) {
                            nt1.X("impl");
                            throw null;
                        }
                        int iFollowing = breakIterator2.following(i2);
                        if (iFollowing == -1) {
                            return null;
                        }
                        return c(i2, iFollowing);
                    }
                    if (breakIterator2 == null) {
                        nt1.X("impl");
                        throw null;
                    }
                    i2 = breakIterator2.following(i2);
                } while (i2 != -1);
                return null;
            case 1:
                if (d().length() <= 0 || i2 >= d().length()) {
                    return null;
                }
                if (i2 < 0) {
                    i2 = 0;
                }
                while (!o(i2) && (!o(i2) || (i2 != 0 && o(i2 - 1)))) {
                    BreakIterator breakIterator3 = (BreakIterator) this.d;
                    if (breakIterator3 == null) {
                        nt1.X("impl");
                        throw null;
                    }
                    i2 = breakIterator3.following(i2);
                    if (i2 == -1) {
                        return null;
                    }
                }
                BreakIterator breakIterator4 = (BreakIterator) this.d;
                if (breakIterator4 == null) {
                    nt1.X("impl");
                    throw null;
                }
                int iFollowing2 = breakIterator4.following(i2);
                if (iFollowing2 == -1 || !n(iFollowing2)) {
                    return null;
                }
                return c(i2, iFollowing2);
            default:
                if (d().length() <= 0 || i2 >= d().length()) {
                    return null;
                }
                ox3 ox3Var = (ox3) this.d;
                k73 k73Var = h;
                if (i2 < 0) {
                    if (ox3Var == null) {
                        nt1.X("layoutResult");
                        throw null;
                    }
                    iA = ox3Var.a(0);
                } else {
                    if (ox3Var == null) {
                        nt1.X("layoutResult");
                        throw null;
                    }
                    int iA2 = ox3Var.a(i2);
                    iA = l(iA2, k73Var) == i2 ? iA2 : iA2 + 1;
                }
                ox3 ox3Var2 = (ox3) this.d;
                if (ox3Var2 == null) {
                    nt1.X("layoutResult");
                    throw null;
                }
                if (iA >= ox3Var2.b.b) {
                    return null;
                }
                return c(l(iA, k73Var), l(iA, i) + 1);
        }
    }

    @Override // defpackage.nq0
    public final int[] k(int i2) {
        int iA;
        switch (this.c) {
            case 0:
                int length = d().length();
                if (length <= 0 || i2 <= 0) {
                    return null;
                }
                if (i2 > length) {
                    i2 = length;
                }
                do {
                    BreakIterator breakIterator = (BreakIterator) this.d;
                    if (breakIterator == null) {
                        nt1.X("impl");
                        throw null;
                    }
                    boolean zIsBoundary = breakIterator.isBoundary(i2);
                    BreakIterator breakIterator2 = (BreakIterator) this.d;
                    if (zIsBoundary) {
                        if (breakIterator2 == null) {
                            nt1.X("impl");
                            throw null;
                        }
                        int iPreceding = breakIterator2.preceding(i2);
                        if (iPreceding == -1) {
                            return null;
                        }
                        return c(iPreceding, i2);
                    }
                    if (breakIterator2 == null) {
                        nt1.X("impl");
                        throw null;
                    }
                    i2 = breakIterator2.preceding(i2);
                } while (i2 != -1);
                return null;
            case 1:
                int length2 = d().length();
                if (length2 <= 0 || i2 <= 0) {
                    return null;
                }
                if (i2 > length2) {
                    i2 = length2;
                }
                while (i2 > 0 && !o(i2 - 1) && !n(i2)) {
                    BreakIterator breakIterator3 = (BreakIterator) this.d;
                    if (breakIterator3 == null) {
                        nt1.X("impl");
                        throw null;
                    }
                    i2 = breakIterator3.preceding(i2);
                    if (i2 == -1) {
                        return null;
                    }
                }
                BreakIterator breakIterator4 = (BreakIterator) this.d;
                if (breakIterator4 == null) {
                    nt1.X("impl");
                    throw null;
                }
                int iPreceding2 = breakIterator4.preceding(i2);
                if (iPreceding2 == -1 || !o(iPreceding2)) {
                    return null;
                }
                if (iPreceding2 == 0 || !o(iPreceding2 - 1)) {
                    return c(iPreceding2, i2);
                }
                return null;
            default:
                if (d().length() <= 0 || i2 <= 0) {
                    return null;
                }
                int length3 = d().length();
                ox3 ox3Var = (ox3) this.d;
                k73 k73Var = i;
                if (i2 > length3) {
                    if (ox3Var == null) {
                        nt1.X("layoutResult");
                        throw null;
                    }
                    iA = ox3Var.a(d().length());
                } else {
                    if (ox3Var == null) {
                        nt1.X("layoutResult");
                        throw null;
                    }
                    int iA2 = ox3Var.a(i2);
                    iA = l(iA2, k73Var) + 1 == i2 ? iA2 : iA2 - 1;
                }
                if (iA < 0) {
                    return null;
                }
                return c(l(iA, h), l(iA, k73Var) + 1);
        }
    }

    public int l(int i2, k73 k73Var) {
        ox3 ox3Var = (ox3) this.d;
        if (ox3Var == null) {
            nt1.X("layoutResult");
            throw null;
        }
        int iC = ox3Var.c(i2);
        ox3 ox3Var2 = (ox3) this.d;
        if (ox3Var2 == null) {
            nt1.X("layoutResult");
            throw null;
        }
        k73 k73VarE = ox3Var2.e(iC);
        ox3 ox3Var3 = (ox3) this.d;
        if (k73Var != k73VarE) {
            if (ox3Var3 != null) {
                return ox3Var3.c(i2);
            }
            nt1.X("layoutResult");
            throw null;
        }
        if (ox3Var3 == null) {
            nt1.X("layoutResult");
            throw null;
        }
        se2 se2Var = ox3Var3.b;
        se2Var.b(i2);
        ArrayList arrayList = (ArrayList) se2Var.e;
        nb nbVar = ((ms2) arrayList.get(ca.q(i2, arrayList))).a;
        return (nbVar.d.e(i2 - r4.d) + r4.b) - 1;
    }

    public void m(String str) {
        switch (this.c) {
            case 0:
                this.a = str;
                BreakIterator breakIterator = (BreakIterator) this.d;
                if (breakIterator != null) {
                    breakIterator.setText(str);
                    return;
                } else {
                    nt1.X("impl");
                    throw null;
                }
            default:
                this.a = str;
                BreakIterator breakIterator2 = (BreakIterator) this.d;
                if (breakIterator2 != null) {
                    breakIterator2.setText(str);
                    return;
                } else {
                    nt1.X("impl");
                    throw null;
                }
        }
    }

    public boolean n(int i2) {
        if (i2 <= 0 || !o(i2 - 1)) {
            return false;
        }
        return i2 == d().length() || !o(i2);
    }

    public boolean o(int i2) {
        if (i2 < 0 || i2 >= d().length()) {
            return false;
        }
        return Character.isLetterOrDigit(d().codePointAt(i2));
    }
}
