package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gh3 {
    public final md2 a;
    public final boolean b;
    public final xy1 c;
    public final bh3 d;
    public gh3 e;
    public final int f;

    public gh3(md2 md2Var, boolean z, xy1 xy1Var, bh3 bh3Var) {
        this.a = md2Var;
        this.b = z;
        this.c = xy1Var;
        this.d = bh3Var;
        this.f = xy1Var.o;
    }

    public static /* synthetic */ List j(int i, gh3 gh3Var) {
        return gh3Var.i((i & 1) != 0 ? !gh3Var.b : false, (i & 2) == 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10, types: [md2] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12, types: [md2] */
    /* JADX WARN: Type inference failed for: r1v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [ug2] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [ug2] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v7 */
    public final l33 a(mm2 mm2Var) {
        ?? G;
        gh3 gh3VarL = l();
        if (gh3VarL == null) {
            return l33.e;
        }
        md2 md2Var = (md2) gh3VarL.c.S.g;
        if ((md2Var.q & 8) != 0) {
            loop0: while (md2Var != null) {
                if ((md2Var.p & 8) != 0) {
                    G = md2Var;
                    ?? ug2Var = 0;
                    while (G != 0) {
                        if (G instanceof eh3) {
                            if (((eh3) G).g()) {
                                break loop0;
                            }
                        } else if ((G.p & 8) != 0 && (G instanceof kr0)) {
                            md2 md2Var2 = ((kr0) G).C;
                            int i = 0;
                            G = G;
                            ug2Var = ug2Var;
                            while (md2Var2 != null) {
                                if ((md2Var2.p & 8) != 0) {
                                    i++;
                                    ug2Var = ug2Var;
                                    if (i == 1) {
                                        G = md2Var2;
                                    } else {
                                        if (ug2Var == 0) {
                                            ug2Var = new ug2(new md2[16]);
                                        }
                                        if (G != 0) {
                                            ug2Var.c(G);
                                            G = 0;
                                        }
                                        ug2Var.c(md2Var2);
                                    }
                                }
                                md2Var2 = md2Var2.s;
                                G = G;
                                ug2Var = ug2Var;
                            }
                            if (i == 1) {
                            }
                        }
                        G = w80.g(ug2Var);
                    }
                }
                if ((md2Var.q & 8) == 0) {
                    break;
                }
                md2Var = md2Var.s;
            }
            G = 0;
        } else {
            G = 0;
        }
        eh3 eh3Var = (eh3) G;
        mm2 mm2VarP = eh3Var != null ? w80.P(eh3Var, 8) : null;
        return mm2VarP == null ? gh3VarL.a(mm2Var) : mm2VarP.H(mm2Var, true);
    }

    public final gh3 b(q93 q93Var, pe1 pe1Var) {
        bh3 bh3Var = new bh3();
        bh3Var.p = false;
        bh3Var.q = false;
        pe1Var.k(bh3Var);
        gh3 gh3Var = new gh3(new fh3(pe1Var), false, new xy1(true, this.f + (q93Var != null ? 1000000000 : 2000000000)), bh3Var);
        gh3Var.e = this;
        return gh3Var;
    }

    public final void c(xy1 xy1Var, ArrayList arrayList) {
        ug2 ug2VarY = xy1Var.y();
        Object[] objArr = ug2VarY.n;
        int i = ug2VarY.p;
        for (int i2 = 0; i2 < i; i2++) {
            xy1 xy1Var2 = (xy1) objArr[i2];
            if (xy1Var2.H() && !xy1Var2.d0) {
                if (xy1Var2.S.f(8)) {
                    arrayList.add(ca.b(xy1Var2, this.b));
                } else {
                    c(xy1Var2, arrayList);
                }
            }
        }
    }

    public final mm2 d() {
        if (!o()) {
            eh3 eh3VarF = f();
            return eh3VarF != null ? w80.P(eh3VarF, 8) : (gr1) this.c.S.d;
        }
        gh3 gh3VarL = l();
        if (gh3VarL != null) {
            return gh3VarL.d();
        }
        return null;
    }

    public final void e(ArrayList arrayList, ArrayList arrayList2) {
        s(arrayList, false);
        int size = arrayList.size();
        for (int size2 = arrayList.size(); size2 < size; size2++) {
            gh3 gh3Var = (gh3) arrayList.get(size2);
            if (gh3Var.p()) {
                arrayList2.add(gh3Var);
            } else if (!gh3Var.d.q) {
                gh3Var.e(arrayList, arrayList2);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11, types: [md2] */
    /* JADX WARN: Type inference failed for: r0v12, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r0v32 */
    /* JADX WARN: Type inference failed for: r0v33 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9, types: [md2] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v3, types: [ug2] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [ug2] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v7 */
    public final eh3 f() {
        ?? G;
        boolean z;
        boolean z2 = this.d.p;
        ?? r4 = 0;
        r4 = 0;
        r4 = 0;
        r4 = 0;
        xy1 xy1Var = this.c;
        if (z2) {
            md2 md2Var = (md2) xy1Var.S.g;
            if ((md2Var.q & 8) != 0) {
                G = 0;
                while (md2Var != null) {
                    if ((md2Var.p & 8) != 0) {
                        md2 md2VarG = md2Var;
                        ug2 ug2Var = null;
                        while (md2VarG != null) {
                            if (md2VarG instanceof eh3) {
                                eh3 eh3Var = (eh3) md2VarG;
                                ?? r0 = G;
                                if (eh3Var.g()) {
                                    r0 = G;
                                    if (eh3Var.g0()) {
                                        return eh3Var;
                                    }
                                    if (G == 0) {
                                        r0 = eh3Var;
                                    }
                                }
                                z = false;
                                G = r0;
                            } else {
                                z = true;
                                G = G;
                            }
                            if (z && (md2VarG.p & 8) != 0 && (md2VarG instanceof kr0)) {
                                int i = 0;
                                for (md2 md2Var2 = ((kr0) md2VarG).C; md2Var2 != null; md2Var2 = md2Var2.s) {
                                    if ((md2Var2.p & 8) != 0) {
                                        i++;
                                        if (i == 1) {
                                            md2VarG = md2Var2;
                                        } else {
                                            if (ug2Var == null) {
                                                ug2Var = new ug2(new md2[16]);
                                            }
                                            if (md2VarG != null) {
                                                ug2Var.c(md2VarG);
                                                md2VarG = null;
                                            }
                                            ug2Var.c(md2Var2);
                                        }
                                    }
                                }
                                if (i == 1) {
                                }
                            }
                            md2VarG = w80.g(ug2Var);
                        }
                    }
                    if ((md2Var.q & 8) == 0) {
                        break;
                    }
                    md2Var = md2Var.s;
                    G = G;
                }
                r4 = G;
            }
        } else {
            md2 md2Var3 = (md2) xy1Var.S.g;
            if ((md2Var3.q & 8) != 0) {
                loop3: while (md2Var3 != null) {
                    if ((md2Var3.p & 8) != 0) {
                        G = md2Var3;
                        ?? ug2Var2 = 0;
                        while (G != 0) {
                            if (G instanceof eh3) {
                                if (((eh3) G).g()) {
                                    r4 = G;
                                }
                            } else if ((G.p & 8) != 0 && (G instanceof kr0)) {
                                md2 md2Var4 = ((kr0) G).C;
                                int i2 = 0;
                                G = G;
                                ug2Var2 = ug2Var2;
                                while (md2Var4 != null) {
                                    if ((md2Var4.p & 8) != 0) {
                                        i2++;
                                        ug2Var2 = ug2Var2;
                                        if (i2 == 1) {
                                            G = md2Var4;
                                        } else {
                                            if (ug2Var2 == 0) {
                                                ug2Var2 = new ug2(new md2[16]);
                                            }
                                            if (G != 0) {
                                                ug2Var2.c(G);
                                                G = 0;
                                            }
                                            ug2Var2.c(md2Var4);
                                        }
                                    }
                                    md2Var4 = md2Var4.s;
                                    G = G;
                                    ug2Var2 = ug2Var2;
                                }
                                if (i2 == 1) {
                                }
                            }
                            G = w80.g(ug2Var2);
                        }
                    }
                    if ((md2Var3.q & 8) == 0) {
                        break;
                    }
                    md2Var3 = md2Var3.s;
                }
            }
        }
        return (eh3) r4;
    }

    public final l33 g() {
        mm2 mm2VarD = d();
        if (mm2VarD != null) {
            if (!mm2VarD.O0().A) {
                mm2VarD = null;
            }
            if (mm2VarD != null) {
                return zf5.D(mm2VarD).H(mm2VarD, true);
            }
        }
        return l33.e;
    }

    public final l33 h() {
        mm2 mm2VarD = d();
        if (mm2VarD != null) {
            if (!mm2VarD.O0().A) {
                mm2VarD = null;
            }
            if (mm2VarD != null) {
                return zf5.l(mm2VarD, true);
            }
        }
        return l33.e;
    }

    public final List i(boolean z, boolean z2) {
        if (!z && this.d.q) {
            return g01.n;
        }
        ArrayList arrayList = new ArrayList();
        if (!p()) {
            return s(arrayList, z2);
        }
        ArrayList arrayList2 = new ArrayList();
        e(arrayList, arrayList2);
        return arrayList2;
    }

    public final bh3 k() {
        boolean zP = p();
        bh3 bh3Var = this.d;
        if (!zP) {
            return bh3Var;
        }
        bh3 bh3VarD = bh3Var.d();
        r(new ArrayList(), bh3VarD);
        return bh3VarD;
    }

    public final gh3 l() {
        xy1 xy1VarU;
        gh3 gh3Var = this.e;
        if (gh3Var != null) {
            return gh3Var;
        }
        xy1 xy1Var = this.c;
        boolean z = this.b;
        if (z) {
            xy1VarU = xy1Var.u();
            while (xy1VarU != null) {
                bh3 bh3VarX = xy1VarU.x();
                if (bh3VarX != null && bh3VarX.p) {
                    break;
                }
                xy1VarU = xy1VarU.u();
            }
            xy1VarU = null;
        } else {
            xy1VarU = null;
        }
        if (xy1VarU == null) {
            xy1 xy1VarU2 = xy1Var.u();
            while (true) {
                if (xy1VarU2 == null) {
                    xy1VarU = null;
                    break;
                }
                if (xy1VarU2.S.f(8)) {
                    xy1VarU = xy1VarU2;
                    break;
                }
                xy1VarU2 = xy1VarU2.u();
            }
        }
        if (xy1VarU == null) {
            return null;
        }
        return ca.b(xy1VarU, z);
    }

    public final l33 m() {
        jr0 jr0VarF = f();
        if (jr0VarF == null) {
            return ((gr1) this.c.S.d).j1();
        }
        md2 md2Var = ((md2) jr0VarF).n;
        Object objG = this.d.n.g(ah3.b);
        if (objG == null) {
            objG = null;
        }
        return w80.t(md2Var, objG != null, true);
    }

    public final bh3 n() {
        return this.d;
    }

    public final boolean o() {
        return this.e != null;
    }

    public final boolean p() {
        return this.b && this.d.p;
    }

    public final boolean q() {
        if (o() || !j(4, this).isEmpty()) {
            return false;
        }
        xy1 xy1VarU = this.c.u();
        while (true) {
            if (xy1VarU == null) {
                xy1VarU = null;
                break;
            }
            bh3 bh3VarX = xy1VarU.x();
            if (bh3VarX != null && bh3VarX.p) {
                break;
            }
            xy1VarU = xy1VarU.u();
        }
        return xy1VarU == null;
    }

    public final void r(ArrayList arrayList, bh3 bh3Var) {
        if (this.d.q) {
            return;
        }
        s(arrayList, false);
        int size = arrayList.size();
        for (int size2 = arrayList.size(); size2 < size; size2++) {
            gh3 gh3Var = (gh3) arrayList.get(size2);
            if (!gh3Var.p()) {
                bh3Var.f(gh3Var.d);
                gh3Var.r(arrayList, bh3Var);
            }
        }
    }

    public final List s(ArrayList arrayList, boolean z) {
        if (o()) {
            return g01.n;
        }
        c(this.c, arrayList);
        if (z) {
            bh3 bh3Var = this.d;
            kg2 kg2Var = bh3Var.n;
            Object objG = kg2Var.g(lh3.y);
            if (objG == null) {
                objG = null;
            }
            q93 q93Var = (q93) objG;
            if (q93Var != null && bh3Var.p && !arrayList.isEmpty()) {
                arrayList.add(b(q93Var, new c8(20, q93Var)));
            }
            oh3 oh3Var = lh3.a;
            if (kg2Var.c(oh3Var) && !arrayList.isEmpty() && bh3Var.p) {
                Object objG2 = kg2Var.g(oh3Var);
                if (objG2 == null) {
                    objG2 = null;
                }
                List list = (List) objG2;
                String str = list != null ? (String) o70.i0(list) : null;
                if (str != null) {
                    arrayList.add(0, b(null, new c8(21, str)));
                }
            }
        }
        return arrayList;
    }
}
