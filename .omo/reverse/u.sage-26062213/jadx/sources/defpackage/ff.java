package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ff implements CharSequence {
    public final List n;
    public final String o;
    public final ArrayList p;
    public final ArrayList q;

    static {
        xh1 xh1Var = id3.a;
    }

    public ff(List list, String str) {
        ArrayList arrayList;
        ArrayList arrayList2;
        this.n = list;
        this.o = str;
        if (list != null) {
            int size = list.size();
            arrayList = null;
            arrayList2 = null;
            for (int i = 0; i < size; i++) {
                ef efVar = (ef) list.get(i);
                Object obj = efVar.a;
                if (obj instanceof iq3) {
                    arrayList = arrayList == null ? new ArrayList() : arrayList;
                    arrayList.add(efVar);
                } else if (obj instanceof qs2) {
                    arrayList2 = arrayList2 == null ? new ArrayList() : arrayList2;
                    arrayList2.add(efVar);
                }
            }
        } else {
            arrayList = null;
            arrayList2 = null;
        }
        this.p = arrayList;
        this.q = arrayList2;
        List listY0 = arrayList2 != null ? o70.y0(arrayList2, new lh0(6)) : null;
        if (listY0 == null || listY0.isEmpty()) {
            return;
        }
        int i2 = ((ef) o70.h0(listY0)).c;
        sf2 sf2Var = fs1.a;
        sf2 sf2Var2 = new sf2(1);
        sf2Var2.a(i2);
        int size2 = listY0.size();
        for (int i3 = 1; i3 < size2; i3++) {
            ef efVar2 = (ef) listY0.get(i3);
            while (true) {
                if (sf2Var2.b == 0) {
                    break;
                }
                int iD = sf2Var2.d();
                if (efVar2.b >= iD) {
                    sf2Var2.e(sf2Var2.b - 1);
                } else {
                    int i4 = efVar2.c;
                    if (i4 > iD) {
                        br1.a("Paragraph overlap not allowed, end " + i4 + " should be less than or equal to " + iD);
                    }
                }
            }
            sf2Var2.a(efVar2.c);
        }
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i) {
        return this.o.charAt(i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ff)) {
            return false;
        }
        ff ffVar = (ff) obj;
        return nt1.g(this.o, ffVar.o) && nt1.g(this.n, ffVar.n);
    }

    public final int hashCode() {
        int iHashCode = this.o.hashCode() * 31;
        List list = this.n;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.o.length();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0095  */
    @Override // java.lang.CharSequence
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.CharSequence subSequence(int r10, int r11) {
        /*
            r9 = this;
            java.lang.String r0 = ")"
            java.lang.String r1 = "start ("
            if (r10 > r11) goto L7
            goto L21
        L7:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>(r1)
            r2.append(r10)
            java.lang.String r3 = ") should be less or equal to end ("
            r2.append(r3)
            r2.append(r11)
            r2.append(r0)
            java.lang.String r2 = r2.toString()
            defpackage.br1.a(r2)
        L21:
            java.lang.String r2 = r9.o
            if (r10 != 0) goto L2c
            int r3 = r2.length()
            if (r11 != r3) goto L2c
            return r9
        L2c:
            java.lang.String r2 = r2.substring(r10, r11)
            int r3 = defpackage.gf.a
            if (r10 > r11) goto L35
            goto L4f
        L35:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>(r1)
            r3.append(r10)
            java.lang.String r1 = ") should be less than or equal to end ("
            r3.append(r1)
            r3.append(r11)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            defpackage.br1.a(r0)
        L4f:
            java.util.List r9 = r9.n
            if (r9 != 0) goto L54
            goto L95
        L54:
            java.util.ArrayList r0 = new java.util.ArrayList
            int r1 = r9.size()
            r0.<init>(r1)
            int r1 = r9.size()
            r3 = 0
        L62:
            if (r3 >= r1) goto L8f
            java.lang.Object r4 = r9.get(r3)
            ef r4 = (defpackage.ef) r4
            int r5 = r4.b
            int r6 = r4.c
            boolean r5 = defpackage.gf.a(r10, r11, r5, r6)
            if (r5 == 0) goto L8c
            ef r5 = new ef
            java.lang.Object r7 = r4.a
            int r8 = r4.b
            int r8 = java.lang.Math.max(r10, r8)
            int r8 = r8 - r10
            int r6 = java.lang.Math.min(r11, r6)
            int r6 = r6 - r10
            java.lang.String r4 = r4.d
            r5.<init>(r7, r8, r6, r4)
            r0.add(r5)
        L8c:
            int r3 = r3 + 1
            goto L62
        L8f:
            boolean r9 = r0.isEmpty()
            if (r9 == 0) goto L96
        L95:
            r0 = 0
        L96:
            ff r9 = new ff
            r9.<init>(r0, r2)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ff.subSequence(int, int):java.lang.CharSequence");
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return this.o;
    }

    public /* synthetic */ ff(String str) {
        this(str, g01.n);
    }

    public ff(String str, List list) {
        this(list.isEmpty() ? null : list, str);
    }
}
