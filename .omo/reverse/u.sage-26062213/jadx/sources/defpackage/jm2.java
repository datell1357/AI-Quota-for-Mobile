package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jm2 implements km2 {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [ug2] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [ug2] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r7v0, types: [md2] */
    /* JADX WARN: Type inference failed for: r7v1, types: [md2] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [md2] */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    @Override // defpackage.km2
    public final boolean b(md2 md2Var) {
        ?? ug2Var = 0;
        while (true) {
            int i = 0;
            if (md2Var == 0) {
                return false;
            }
            if (md2Var instanceof cw2) {
                ((cw2) md2Var).n0();
            } else if ((md2Var.p & 16) != 0 && (md2Var instanceof kr0)) {
                md2 md2Var2 = ((kr0) md2Var).C;
                ug2Var = ug2Var;
                md2Var = md2Var;
                while (md2Var2 != null) {
                    if ((md2Var2.p & 16) != 0) {
                        i++;
                        ug2Var = ug2Var;
                        if (i == 1) {
                            md2Var = md2Var2;
                        } else {
                            if (ug2Var == 0) {
                                ug2Var = new ug2(new md2[16]);
                            }
                            if (md2Var != 0) {
                                ug2Var.c(md2Var);
                                md2Var = 0;
                            }
                            ug2Var.c(md2Var2);
                        }
                    }
                    md2Var2 = md2Var2.s;
                    ug2Var = ug2Var;
                    md2Var = md2Var;
                }
                if (i == 1) {
                }
            }
            md2Var = w80.g(ug2Var);
        }
    }

    @Override // defpackage.km2
    public final int d() {
        return 16;
    }

    @Override // defpackage.km2
    public final void j(xy1 xy1Var, long j, zj1 zj1Var, int i, boolean z) {
        xy1Var.A(j, zj1Var, i, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [md2] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [md2] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [ug2] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [ug2] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v4 */
    @Override // defpackage.km2
    public final boolean m(zj1 zj1Var, xy1 xy1Var) {
        mm2 mm2Var = (mm2) xy1Var.S.e;
        mm2Var.getClass();
        md2 md2VarQ0 = mm2Var.Q0(nm2.g(16));
        if (md2VarQ0 != null && md2VarQ0.A) {
            if (!md2VarQ0.n.A) {
                ar1.b("visitLocalDescendants called on an unattached node");
            }
            md2 md2Var = md2VarQ0.n;
            if ((md2Var.q & 16) != 0) {
                while (md2Var != null) {
                    if ((md2Var.p & 16) != 0) {
                        ?? G = md2Var;
                        ?? ug2Var = 0;
                        while (G != 0) {
                            if (G instanceof cw2) {
                                if (((cw2) G).V()) {
                                    zj1Var.p = zj1Var.n.b - 1;
                                    return true;
                                }
                            } else if ((G.p & 16) != 0 && (G instanceof kr0)) {
                                md2 md2Var2 = ((kr0) G).C;
                                int i = 0;
                                G = G;
                                ug2Var = ug2Var;
                                while (md2Var2 != null) {
                                    if ((md2Var2.p & 16) != 0) {
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
                    md2Var = md2Var.s;
                }
            }
        }
        return false;
    }

    @Override // defpackage.km2
    public final boolean q(xy1 xy1Var) {
        return true;
    }
}
