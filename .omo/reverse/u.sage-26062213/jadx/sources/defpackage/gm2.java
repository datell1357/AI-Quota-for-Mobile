package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gm2 extends rm2 {
    public final md2 c;
    public final d90 d;
    public final e82 e;
    public mm2 f;
    public vv2 g;
    public boolean h;
    public boolean i;
    public boolean j;

    public gm2(md2 md2Var) {
        this.c = md2Var;
        d90 d90Var = new d90((char) 0, 7);
        d90Var.p = new long[2];
        this.d = d90Var;
        this.e = new e82(2);
        this.i = true;
        this.j = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:162:0x031e  */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r5v0, types: [md2] */
    /* JADX WARN: Type inference failed for: r5v1, types: [md2] */
    /* JADX WARN: Type inference failed for: r5v39 */
    /* JADX WARN: Type inference failed for: r5v40, types: [md2] */
    /* JADX WARN: Type inference failed for: r5v41, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v42 */
    /* JADX WARN: Type inference failed for: r5v43 */
    /* JADX WARN: Type inference failed for: r5v44 */
    /* JADX WARN: Type inference failed for: r5v45 */
    /* JADX WARN: Type inference failed for: r5v46 */
    /* JADX WARN: Type inference failed for: r5v47 */
    /* JADX WARN: Type inference failed for: r5v48 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9, types: [int] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v20, types: [ug2] */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r8v23, types: [ug2] */
    /* JADX WARN: Type inference failed for: r8v25 */
    /* JADX WARN: Type inference failed for: r8v26 */
    /* JADX WARN: Type inference failed for: r8v27 */
    /* JADX WARN: Type inference failed for: r8v28 */
    @Override // defpackage.rm2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(defpackage.e82 r57, defpackage.gy1 r58, defpackage.ft1 r59, boolean r60) {
        /*
            Method dump skipped, instruction units count: 803
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gm2.a(e82, gy1, ft1, boolean):boolean");
    }

    @Override // defpackage.rm2
    public final void b(ft1 ft1Var) {
        super.b(ft1Var);
        vv2 vv2Var = this.g;
        if (vv2Var == null) {
            return;
        }
        this.h = this.i;
        List list = vv2Var.a;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            zv2 zv2Var = (zv2) list.get(i);
            boolean z = zv2Var.d;
            long j = zv2Var.a;
            boolean zA = ft1Var.a(j);
            boolean z2 = this.i;
            if ((!z && !zA) || (!z && !z2)) {
                this.d.n(j);
            }
        }
        this.i = false;
        this.j = vv2Var.c == 5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [ug2] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7, types: [ug2] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r8v1, types: [md2] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v2, types: [md2] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5, types: [md2] */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    public final void c() {
        ug2 ug2Var = this.a;
        Object[] objArr = ug2Var.n;
        int i = ug2Var.p;
        for (int i2 = 0; i2 < i; i2++) {
            ((gm2) objArr[i2]).c();
        }
        ?? G = this.c;
        ?? ug2Var2 = 0;
        while (G != 0) {
            if (G instanceof cw2) {
                ((cw2) G).c0();
            } else if ((G.p & 16) != 0 && (G instanceof kr0)) {
                md2 md2Var = ((kr0) G).C;
                int i3 = 0;
                ug2Var2 = ug2Var2;
                G = G;
                while (md2Var != null) {
                    if ((md2Var.p & 16) != 0) {
                        i3++;
                        ug2Var2 = ug2Var2;
                        if (i3 == 1) {
                            G = md2Var;
                        } else {
                            if (ug2Var2 == 0) {
                                ug2Var2 = new ug2(new md2[16]);
                            }
                            if (G != 0) {
                                ug2Var2.c(G);
                                G = 0;
                            }
                            ug2Var2.c(md2Var);
                        }
                    }
                    md2Var = md2Var.s;
                    ug2Var2 = ug2Var2;
                    G = G;
                }
                if (i3 == 1) {
                }
            }
            G = w80.g(ug2Var2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:4:0x000a  */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r7v0 */
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
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [ug2] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [ug2] */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean d(defpackage.ft1 r15) {
        /*
            r14 = this;
            e82 r0 = r14.e
            int r1 = r0.e()
            r2 = 0
            r3 = 0
            if (r1 != 0) goto Ld
        La:
            r9 = r3
            goto L94
        Ld:
            md2 r1 = r14.c
            boolean r4 = r1.A
            if (r4 != 0) goto L14
            goto La
        L14:
            mm2 r4 = r1.f206u
            if (r4 == 0) goto L21
            xy1 r4 = r4.F
            if (r4 == 0) goto L21
            boolean r4 = r4.I()
            goto L22
        L21:
            r4 = r3
        L22:
            if (r4 != 0) goto L25
            goto La
        L25:
            vv2 r4 = r14.g
            r4.getClass()
            mm2 r5 = r14.f
            r5.getClass()
            long r5 = r5.p
            r7 = r1
            r8 = r2
        L33:
            r9 = 1
            if (r7 == 0) goto L7d
            boolean r10 = r7 instanceof defpackage.cw2
            if (r10 == 0) goto L42
            cw2 r7 = (defpackage.cw2) r7
            wv2 r9 = defpackage.wv2.p
            r7.F(r4, r9, r5)
            goto L78
        L42:
            int r10 = r7.p
            r11 = 16
            r10 = r10 & r11
            if (r10 == 0) goto L78
            boolean r10 = r7 instanceof defpackage.kr0
            if (r10 == 0) goto L78
            r10 = r7
            kr0 r10 = (defpackage.kr0) r10
            md2 r10 = r10.C
            r12 = r3
        L53:
            if (r10 == 0) goto L75
            int r13 = r10.p
            r13 = r13 & r11
            if (r13 == 0) goto L72
            int r12 = r12 + 1
            if (r12 != r9) goto L60
            r7 = r10
            goto L72
        L60:
            if (r8 != 0) goto L69
            ug2 r8 = new ug2
            md2[] r13 = new defpackage.md2[r11]
            r8.<init>(r13)
        L69:
            if (r7 == 0) goto L6f
            r8.c(r7)
            r7 = r2
        L6f:
            r8.c(r10)
        L72:
            md2 r10 = r10.s
            goto L53
        L75:
            if (r12 != r9) goto L78
            goto L33
        L78:
            md2 r7 = defpackage.w80.g(r8)
            goto L33
        L7d:
            boolean r1 = r1.A
            if (r1 == 0) goto L94
            ug2 r1 = r14.a
            java.lang.Object[] r4 = r1.n
            int r1 = r1.p
            r5 = r3
        L88:
            if (r5 >= r1) goto L94
            r6 = r4[r5]
            gm2 r6 = (defpackage.gm2) r6
            r6.d(r15)
            int r5 = r5 + 1
            goto L88
        L94:
            r14.b(r15)
            int r15 = r0.q
            java.lang.Object[] r1 = r0.p
            r4 = r3
        L9c:
            if (r4 >= r15) goto La3
            r1[r4] = r2
            int r4 = r4 + 1
            goto L9c
        La3:
            r0.q = r3
            r0.n = r3
            r14.f = r2
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gm2.d(ft1):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v2, types: [md2] */
    /* JADX WARN: Type inference failed for: r0v3, types: [md2] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [md2] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5, types: [ug2] */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8, types: [ug2] */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [md2] */
    /* JADX WARN: Type inference failed for: r6v10, types: [md2] */
    /* JADX WARN: Type inference failed for: r6v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [ug2] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7, types: [ug2] */
    /* JADX WARN: Type inference failed for: r7v9 */
    public final boolean e(ft1 ft1Var, boolean z) {
        xy1 xy1Var;
        if (this.e.e() == 0) {
            return false;
        }
        ?? G = this.c;
        if (G.A) {
            mm2 mm2Var = G.f206u;
            if ((mm2Var == null || (xy1Var = mm2Var.F) == null) ? false : xy1Var.I()) {
                vv2 vv2Var = this.g;
                vv2Var.getClass();
                mm2 mm2Var2 = this.f;
                mm2Var2.getClass();
                long j = mm2Var2.p;
                ?? G2 = G;
                ?? ug2Var = 0;
                while (G2 != 0) {
                    if (G2 instanceof cw2) {
                        ((cw2) G2).F(vv2Var, wv2.n, j);
                    } else if ((G2.p & 16) != 0 && (G2 instanceof kr0)) {
                        md2 md2Var = ((kr0) G2).C;
                        int i = 0;
                        G2 = G2;
                        ug2Var = ug2Var;
                        while (md2Var != null) {
                            if ((md2Var.p & 16) != 0) {
                                i++;
                                ug2Var = ug2Var;
                                if (i == 1) {
                                    G2 = md2Var;
                                } else {
                                    if (ug2Var == 0) {
                                        ug2Var = new ug2(new md2[16]);
                                    }
                                    if (G2 != 0) {
                                        ug2Var.c(G2);
                                        G2 = 0;
                                    }
                                    ug2Var.c(md2Var);
                                }
                            }
                            md2Var = md2Var.s;
                            G2 = G2;
                            ug2Var = ug2Var;
                        }
                        if (i == 1) {
                        }
                    }
                    G2 = w80.g(ug2Var);
                }
                if (G.A) {
                    ug2 ug2Var2 = this.a;
                    Object[] objArr = ug2Var2.n;
                    int i2 = ug2Var2.p;
                    for (int i3 = 0; i3 < i2; i3++) {
                        gm2 gm2Var = (gm2) objArr[i3];
                        this.f.getClass();
                        gm2Var.e(ft1Var, z);
                    }
                }
                if (G.A) {
                    ?? ug2Var3 = 0;
                    while (G != 0) {
                        if (G instanceof cw2) {
                            ((cw2) G).F(vv2Var, wv2.o, j);
                        } else if ((G.p & 16) != 0 && (G instanceof kr0)) {
                            md2 md2Var2 = ((kr0) G).C;
                            int i4 = 0;
                            G = G;
                            ug2Var3 = ug2Var3;
                            while (md2Var2 != null) {
                                if ((md2Var2.p & 16) != 0) {
                                    i4++;
                                    ug2Var3 = ug2Var3;
                                    if (i4 == 1) {
                                        G = md2Var2;
                                    } else {
                                        if (ug2Var3 == 0) {
                                            ug2Var3 = new ug2(new md2[16]);
                                        }
                                        if (G != 0) {
                                            ug2Var3.c(G);
                                            G = 0;
                                        }
                                        ug2Var3.c(md2Var2);
                                    }
                                }
                                md2Var2 = md2Var2.s;
                                G = G;
                                ug2Var3 = ug2Var3;
                            }
                            if (i4 == 1) {
                            }
                        }
                        G = w80.g(ug2Var3);
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final void f(long j, dg2 dg2Var) {
        d90 d90Var = this.d;
        if (d90Var.d(j) && dg2Var.g(this) < 0) {
            d90Var.n(j);
            this.e.d(j);
        }
        ug2 ug2Var = this.a;
        Object[] objArr = ug2Var.n;
        int i = ug2Var.p;
        for (int i2 = 0; i2 < i; i2++) {
            ((gm2) objArr[i2]).f(j, dg2Var);
        }
    }

    public final String toString() {
        return "Node(modifierNode=" + this.c + ", children=" + this.a + ", pointerIds=" + this.d + ")";
    }
}
