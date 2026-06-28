package defpackage;

import android.os.Trace;
import com.google.android.gms.auth.blockstore.BlockstoreClient;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ka1 extends md2 implements fc0, co2, pd2, jr0 {
    public final boolean B;
    public final df1 C;
    public boolean D;
    public boolean E;
    public final int F;
    public hc3 G;

    public ka1(int i, df1 df1Var, int i2) {
        i = (i2 & 1) != 0 ? 1 : i;
        boolean z = (i2 & 2) == 0;
        df1Var = (i2 & 4) != 0 ? null : df1Var;
        this.B = z;
        this.C = df1Var;
        this.F = i;
    }

    @Override // defpackage.md2
    public final void A0() {
        if (L0().a()) {
            ((dh) ((q9) w80.S(this)).getFocusOwner()).b(8, true, true);
        }
    }

    public final boolean G0(int i) {
        int iOrdinal = n44.C0(this, i).ordinal();
        if (iOrdinal == 0) {
            return n44.D0(this);
        }
        if (iOrdinal == 1) {
            return false;
        }
        if (iOrdinal == 2) {
            return true;
        }
        if (iOrdinal == 3) {
            return false;
        }
        p61.x();
        return false;
    }

    @Override // defpackage.co2
    public final void H() {
        M0();
    }

    public final void H0(fa1 fa1Var, fa1 fa1Var2) {
        bo boVar;
        df1 df1Var;
        dh dhVar = (dh) ((q9) w80.S(this)).getFocusOwner();
        ka1 ka1VarF = dhVar.f();
        if (!fa1Var.equals(fa1Var2) && (df1Var = this.C) != null) {
            df1Var.f(fa1Var, fa1Var2);
        }
        md2 md2Var = this.n;
        if (!md2Var.A) {
            ar1.b("visitAncestors called on an unattached node");
        }
        md2 md2Var2 = this.n;
        xy1 xy1VarR = w80.R(this);
        while (xy1VarR != null) {
            if ((((md2) xy1VarR.S.g).q & 5120) != 0) {
                while (md2Var2 != null) {
                    int i = md2Var2.p;
                    if ((i & 5120) != 0) {
                        if (md2Var2 != md2Var && (i & 1024) != 0) {
                            return;
                        }
                        if ((i & BlockstoreClient.MAX_SIZE) != 0) {
                            md2 md2VarG = md2Var2;
                            ug2 ug2Var = null;
                            while (md2VarG != null) {
                                if (md2VarG instanceof kq) {
                                    kq kqVar = (kq) md2VarG;
                                    if (ka1VarF == dhVar.f()) {
                                        kqVar.H0(fa1Var2);
                                    }
                                } else if ((md2VarG.p & BlockstoreClient.MAX_SIZE) != 0 && (md2VarG instanceof kr0)) {
                                    int i2 = 0;
                                    for (md2 md2Var3 = ((kr0) md2VarG).C; md2Var3 != null; md2Var3 = md2Var3.s) {
                                        if ((md2Var3.p & BlockstoreClient.MAX_SIZE) != 0) {
                                            i2++;
                                            if (i2 == 1) {
                                                md2VarG = md2Var3;
                                            } else {
                                                if (ug2Var == null) {
                                                    ug2Var = new ug2(new md2[16]);
                                                }
                                                if (md2VarG != null) {
                                                    ug2Var.c(md2VarG);
                                                    md2VarG = null;
                                                }
                                                ug2Var.c(md2Var3);
                                            }
                                        }
                                    }
                                    if (i2 == 1) {
                                    }
                                }
                                md2VarG = w80.g(ug2Var);
                            }
                        }
                    }
                    md2Var2 = md2Var2.r;
                }
            }
            xy1VarR = xy1VarR.u();
            md2Var2 = (xy1VarR == null || (boVar = xy1VarR.S) == null) ? null : (gw3) boVar.f;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11, types: [md2] */
    /* JADX WARN: Type inference failed for: r6v12, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8, types: [md2] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [ug2] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7, types: [ug2] */
    /* JADX WARN: Type inference failed for: r8v4 */
    public final ca1 I0() {
        boolean z;
        bo boVar;
        ca1 ca1Var = new ca1();
        ca1Var.a = true;
        ea1 ea1Var = ea1.b;
        ca1Var.b = ea1Var;
        ca1Var.c = ea1Var;
        ca1Var.d = ea1Var;
        ca1Var.e = ea1Var;
        ca1Var.f = ea1Var;
        ca1Var.g = ea1Var;
        ca1Var.h = ea1Var;
        ca1Var.i = ea1Var;
        ca1Var.j = l9.L;
        ca1Var.k = l9.M;
        ca1Var.l = mj1.U;
        int i = this.F;
        if (i == 1) {
            z = true;
        } else if (i == 0) {
            z = !(((jr1) ((lr1) ((kr1) n44.g0(this, kc0.m))).a.getValue()).a == 1);
        } else {
            if (i != 2) {
                k21.n("Unknown Focusability");
                return null;
            }
            z = false;
        }
        ca1Var.a = z;
        md2 md2Var = this.n;
        if (!md2Var.A) {
            ar1.b("visitAncestors called on an unattached node");
        }
        md2 md2Var2 = this.n;
        xy1 xy1VarR = w80.R(this);
        loop0: while (xy1VarR != null) {
            if ((((md2) xy1VarR.S.g).q & 3072) != 0) {
                while (md2Var2 != null) {
                    int i2 = md2Var2.p;
                    if ((i2 & 3072) != 0) {
                        if (md2Var2 != md2Var && (i2 & 1024) != 0) {
                            break loop0;
                        }
                        if ((i2 & 2048) != 0) {
                            ?? ug2Var = 0;
                            ?? G = md2Var2;
                            while (G != 0) {
                                if (G instanceof da1) {
                                    ((da1) G).Q(ca1Var);
                                } else if ((G.p & 2048) != 0 && (G instanceof kr0)) {
                                    md2 md2Var3 = ((kr0) G).C;
                                    int i3 = 0;
                                    G = G;
                                    ug2Var = ug2Var;
                                    while (md2Var3 != null) {
                                        if ((md2Var3.p & 2048) != 0) {
                                            i3++;
                                            ug2Var = ug2Var;
                                            if (i3 == 1) {
                                                G = md2Var3;
                                            } else {
                                                if (ug2Var == 0) {
                                                    ug2Var = new ug2(new md2[16]);
                                                }
                                                if (G != 0) {
                                                    ug2Var.c(G);
                                                    G = 0;
                                                }
                                                ug2Var.c(md2Var3);
                                            }
                                        }
                                        md2Var3 = md2Var3.s;
                                        G = G;
                                        ug2Var = ug2Var;
                                    }
                                    if (i3 == 1) {
                                    }
                                }
                                G = w80.g(ug2Var);
                            }
                        }
                    }
                    md2Var2 = md2Var2.r;
                }
            }
            xy1VarR = xy1VarR.u();
            md2Var2 = (xy1VarR == null || (boVar = xy1VarR.S) == null) ? null : (gw3) boVar.f;
        }
        return ca1Var;
    }

    public final l33 J0(gy1 gy1Var) {
        l33 l33Var = I0().l;
        return l33Var != mj1.U ? gy1Var == null ? l33Var : l33Var.e(gy1Var.F(w80.Q(this), 0L)) : gy1Var != null ? gy1Var.H(w80.Q(this), false) : qn0.d(0L, se0.H(w80.Q(this).p));
    }

    public final zz1 K0() {
        bo boVar;
        Object obj;
        if (!this.n.A) {
            ar1.b("visitAncestors called on an unattached node");
        }
        md2 md2Var = this.n.r;
        xy1 xy1VarR = w80.R(this);
        while (true) {
            if (xy1VarR == null) {
                break;
            }
            if ((((md2) xy1VarR.S.g).q & 8388640) != 0) {
                while (md2Var != null) {
                    int i = md2Var.p;
                    if ((i & 8388640) != 0) {
                        if ((8388608 & i) != 0) {
                            if (!(md2Var instanceof zz1)) {
                                if (md2Var instanceof kr0) {
                                    md2Var = null;
                                    for (md2 md2Var2 = ((kr0) md2Var).C; md2Var2 != null; md2Var2 = md2Var2.s) {
                                        if (md2Var2 instanceof zz1) {
                                            md2Var = md2Var2;
                                        }
                                    }
                                } else {
                                    md2Var = null;
                                }
                            }
                            zz1 zz1Var = (zz1) md2Var;
                            if (zz1Var != null) {
                                return zz1Var;
                            }
                        } else if ((i & 32) != 0) {
                            if (md2Var instanceof pd2) {
                                obj = md2Var;
                            } else if (md2Var instanceof kr0) {
                                obj = null;
                                for (md2 md2Var3 = ((kr0) md2Var).C; md2Var3 != null; md2Var3 = md2Var3.s) {
                                    if (md2Var3 instanceof pd2) {
                                        obj = md2Var3;
                                    }
                                }
                            } else {
                                obj = null;
                            }
                            pd2 pd2Var = (pd2) obj;
                            if (pd2Var != null) {
                                pd2Var.h();
                            }
                        }
                    }
                    md2Var = md2Var.r;
                }
            }
            xy1VarR = xy1VarR.u();
            md2Var = (xy1VarR == null || (boVar = xy1VarR.S) == null) ? null : (gw3) boVar.f;
        }
        return null;
    }

    public final fa1 L0() {
        ka1 ka1VarF;
        bo boVar;
        boolean z = this.A;
        fa1 fa1Var = fa1.p;
        if (!z || (ka1VarF = ((dh) ((q9) w80.S(this)).getFocusOwner()).f()) == null) {
            return fa1Var;
        }
        if (this == ka1VarF) {
            return fa1.n;
        }
        if (ka1VarF.A) {
            if (!ka1VarF.n.A) {
                ar1.b("visitAncestors called on an unattached node");
            }
            md2 md2Var = ka1VarF.n.r;
            xy1 xy1VarR = w80.R(ka1VarF);
            while (xy1VarR != null) {
                if ((((md2) xy1VarR.S.g).q & 1024) != 0) {
                    while (md2Var != null) {
                        if ((md2Var.p & 1024) != 0) {
                            md2 md2VarG = md2Var;
                            ug2 ug2Var = null;
                            while (md2VarG != null) {
                                if (md2VarG instanceof ka1) {
                                    if (this == ((ka1) md2VarG)) {
                                        return fa1.o;
                                    }
                                } else if ((md2VarG.p & 1024) != 0 && (md2VarG instanceof kr0)) {
                                    int i = 0;
                                    for (md2 md2Var2 = ((kr0) md2VarG).C; md2Var2 != null; md2Var2 = md2Var2.s) {
                                        if ((md2Var2.p & 1024) != 0) {
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
                        md2Var = md2Var.r;
                    }
                }
                xy1VarR = xy1VarR.u();
                md2Var = (xy1VarR == null || (boVar = xy1VarR.S) == null) ? null : (gw3) boVar.f;
            }
        }
        return fa1Var;
    }

    public final void M0() {
        int iOrdinal = L0().ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal == 1) {
                return;
            }
            if (iOrdinal != 2) {
                if (iOrdinal == 3) {
                    return;
                }
                p61.x();
                return;
            }
        }
        w33 w33Var = new w33();
        ix.H(this, new j9(5, w33Var, this));
        Object obj = w33Var.n;
        if (obj == null) {
            nt1.X("focusProperties");
            throw null;
        }
        if (((ba1) obj).c()) {
            return;
        }
        ((dh) ((q9) w80.S(this)).getFocusOwner()).b(8, true, true);
    }

    public final boolean N0(int i) {
        Trace.beginSection("FocusTransactions:requestFocus");
        try {
            return I0().a ? G0(i) : qn0.o(this, i, new n9(i, 3));
        } finally {
            Trace.endSection();
        }
    }

    @Override // defpackage.md2
    public final boolean v0() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003d  */
    @Override // defpackage.md2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void z0() {
        /*
            r4 = this;
            fa1 r0 = r4.L0()
            int r0 = r0.ordinal()
            r1 = 1
            if (r0 == 0) goto L3d
            if (r0 == r1) goto L18
            r2 = 2
            if (r0 == r2) goto L3d
            r1 = 3
            if (r0 != r1) goto L14
            goto L61
        L14:
            defpackage.p61.x()
            return
        L18:
            sr2 r0 = defpackage.w80.S(r4)
            q9 r0 = (defpackage.q9) r0
            y91 r0 = r0.getFocusOwner()
            ka1 r2 = defpackage.gg4.u(r4)
            if (r2 == 0) goto L61
            boolean r2 = r2.B
            if (r2 != r1) goto L61
            dh r0 = (defpackage.dh) r0
            java.lang.Object r1 = r0.a
            q9 r1 = (defpackage.q9) r1
            r1.G()
            java.lang.Object r0 = r0.d
            w91 r0 = (defpackage.w91) r0
            r0.a()
            goto L61
        L3d:
            sr2 r0 = defpackage.w80.S(r4)
            q9 r0 = (defpackage.q9) r0
            y91 r0 = r0.getFocusOwner()
            dh r0 = (defpackage.dh) r0
            r2 = 8
            r3 = 0
            r0.b(r2, r1, r3)
            boolean r1 = r4.B
            if (r1 == 0) goto L5a
            java.lang.Object r1 = r0.a
            q9 r1 = (defpackage.q9) r1
            r1.G()
        L5a:
            java.lang.Object r0 = r0.d
            w91 r0 = (defpackage.w91) r0
            r0.a()
        L61:
            hc3 r0 = r4.G
            if (r0 == 0) goto L6a
            eh r0 = (defpackage.eh) r0
            r0.L()
        L6a:
            r0 = 0
            r4.G = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ka1.z0():void");
    }

    @Override // defpackage.md2
    public final void y0() {
    }
}
