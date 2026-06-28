package defpackage;

import com.google.api.client.googleapis.media.MediaHttpUploader;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xk2 extends md2 implements b24, qk2 {
    public qk2 B;
    public tk2 C;
    public xk2 D;
    public final String E = "androidx.compose.ui.input.nestedscroll.NestedScrollNode";

    public xk2(qk2 qk2Var, tk2 tk2Var) {
        this.B = qk2Var;
        this.C = tk2Var;
    }

    public final qi0 G0() {
        xk2 xk2VarH0 = H0();
        qi0 qi0VarG0 = xk2VarH0 != null ? xk2VarH0.G0() : null;
        if (qi0VarG0 != null && dm0.B(qi0VarG0)) {
            return qi0VarG0;
        }
        qi0 qi0Var = this.C.d;
        if (qi0Var != null) {
            return qi0Var;
        }
        k21.n("in order to access nested coroutine scope you need to attach dispatcher to the `Modifier.nestedScroll` first.");
        return null;
    }

    public final xk2 H0() {
        bo boVar;
        b24 b24Var = null;
        if (!this.A) {
            return null;
        }
        if (!this.n.A) {
            ar1.b("visitAncestors called on an unattached node");
        }
        md2 md2Var = this.n.r;
        xy1 xy1VarR = w80.R(this);
        loop0: while (true) {
            if (xy1VarR == null) {
                break;
            }
            if ((((md2) xy1VarR.S.g).q & MediaHttpUploader.MINIMUM_CHUNK_SIZE) != 0) {
                while (md2Var != null) {
                    if ((md2Var.p & MediaHttpUploader.MINIMUM_CHUNK_SIZE) != 0) {
                        md2 md2VarG = md2Var;
                        ug2 ug2Var = null;
                        while (md2VarG != null) {
                            if (md2VarG instanceof b24) {
                                b24 b24Var2 = (b24) md2VarG;
                                if (nt1.g(this.E, b24Var2.n()) && xk2.class == b24Var2.getClass()) {
                                    b24Var = b24Var2;
                                    break loop0;
                                }
                            }
                            if ((md2VarG.p & MediaHttpUploader.MINIMUM_CHUNK_SIZE) != 0 && (md2VarG instanceof kr0)) {
                                int i = 0;
                                for (md2 md2Var2 = ((kr0) md2VarG).C; md2Var2 != null; md2Var2 = md2Var2.s) {
                                    if ((md2Var2.p & MediaHttpUploader.MINIMUM_CHUNK_SIZE) != 0) {
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
        return (xk2) b24Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0016  */
    @Override // defpackage.qk2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object I(long r13, long r15, defpackage.dh0 r17) {
        /*
            r12 = this;
            r1 = r17
            boolean r2 = r1 instanceof defpackage.vk2
            if (r2 == 0) goto L16
            r2 = r1
            vk2 r2 = (defpackage.vk2) r2
            int r3 = r2.f380u
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L16
            int r3 = r3 - r4
            r2.f380u = r3
        L14:
            r8 = r2
            goto L1e
        L16:
            vk2 r2 = new vk2
            fh0 r1 = (defpackage.fh0) r1
            r2.<init>(r12, r1)
            goto L14
        L1e:
            java.lang.Object r1 = r8.s
            int r2 = r8.f380u
            r9 = 0
            r10 = 2
            r3 = 1
            ri0 r11 = defpackage.ri0.n
            if (r2 == 0) goto L41
            if (r2 == r3) goto L39
            if (r2 != r10) goto L33
            long r2 = r8.q
            defpackage.gg4.T(r1)
            goto L84
        L33:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r0)
            return r9
        L39:
            long r2 = r8.r
            long r4 = r8.q
            defpackage.gg4.T(r1)
            goto L58
        L41:
            defpackage.gg4.T(r1)
            qk2 r1 = r12.B
            r8.q = r13
            r6 = r15
            r8.r = r6
            r8.f380u = r3
            r4 = r13
            r3 = r1
            java.lang.Object r1 = r3.I(r4, r6, r8)
            if (r1 != r11) goto L56
            goto L82
        L56:
            r4 = r13
            r2 = r15
        L58:
            ra4 r1 = (defpackage.ra4) r1
            long r6 = r1.a
            boolean r1 = r12.A
            if (r1 == 0) goto L67
            if (r1 == 0) goto L69
            xk2 r9 = r12.H0()
            goto L69
        L67:
            xk2 r9 = r12.D
        L69:
            if (r9 == 0) goto L8a
            long r0 = defpackage.ra4.e(r4, r6)
            long r2 = defpackage.ra4.d(r2, r6)
            r8.q = r6
            r8.f380u = r10
            r13 = r0
            r15 = r2
            r17 = r8
            r12 = r9
            java.lang.Object r1 = r12.I(r13, r15, r17)
            if (r1 != r11) goto L83
        L82:
            return r11
        L83:
            r2 = r6
        L84:
            ra4 r1 = (defpackage.ra4) r1
            long r0 = r1.a
            r6 = r2
            goto L8c
        L8a:
            r0 = 0
        L8c:
            long r0 = defpackage.ra4.e(r6, r0)
            ra4 r2 = new ra4
            r2.<init>(r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xk2.I(long, long, dh0):java.lang.Object");
    }

    @Override // defpackage.qk2
    public final long J(int i, long j, long j2) {
        long J = this.B.J(i, j, j2);
        xk2 xk2VarH0 = this.A ? H0() : null;
        return go2.e(J, xk2VarH0 != null ? xk2VarH0.J(i, go2.e(j, J), go2.d(j2, J)) : 0L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0050, code lost:
    
        if (r9 == r5) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // defpackage.qk2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object T(long r7, defpackage.dh0 r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof defpackage.wk2
            if (r0 == 0) goto L13
            r0 = r9
            wk2 r0 = (defpackage.wk2) r0
            int r1 = r0.t
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.t = r1
            goto L1a
        L13:
            wk2 r0 = new wk2
            fh0 r9 = (defpackage.fh0) r9
            r0.<init>(r6, r9)
        L1a:
            java.lang.Object r9 = r0.r
            int r1 = r0.t
            r2 = 0
            r3 = 2
            r4 = 1
            ri0 r5 = defpackage.ri0.n
            if (r1 == 0) goto L3b
            if (r1 == r4) goto L35
            if (r1 != r3) goto L2f
            long r6 = r0.q
            defpackage.gg4.T(r9)
            goto L6c
        L2f:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r6)
            return r2
        L35:
            long r7 = r0.q
            defpackage.gg4.T(r9)
            goto L53
        L3b:
            defpackage.gg4.T(r9)
            boolean r9 = r6.A
            if (r9 == 0) goto L46
            xk2 r2 = r6.H0()
        L46:
            if (r2 == 0) goto L58
            r0.q = r7
            r0.t = r4
            java.lang.Object r9 = r2.T(r7, r0)
            if (r9 != r5) goto L53
            goto L6a
        L53:
            ra4 r9 = (defpackage.ra4) r9
            long r1 = r9.a
            goto L5a
        L58:
            r1 = 0
        L5a:
            qk2 r6 = r6.B
            long r7 = defpackage.ra4.d(r7, r1)
            r0.q = r1
            r0.t = r3
            java.lang.Object r9 = r6.T(r7, r0)
            if (r9 != r5) goto L6b
        L6a:
            return r5
        L6b:
            r6 = r1
        L6c:
            ra4 r9 = (defpackage.ra4) r9
            long r8 = r9.a
            long r6 = defpackage.ra4.e(r6, r8)
            ra4 r8 = new ra4
            r8.<init>(r6)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xk2.T(long, dh0):java.lang.Object");
    }

    @Override // defpackage.qk2
    public final long k0(int i, long j) {
        xk2 xk2VarH0 = this.A ? H0() : null;
        long jK0 = xk2VarH0 != null ? xk2VarH0.k0(i, j) : 0L;
        return go2.e(jK0, this.B.k0(i, go2.d(j, jK0)));
    }

    @Override // defpackage.b24
    public final Object n() {
        return this.E;
    }

    @Override // defpackage.md2
    public final void y0() {
        tk2 tk2Var = this.C;
        tk2Var.a = this;
        tk2Var.b = null;
        this.D = null;
        tk2Var.c = new je(10, this);
        tk2Var.d = u0();
    }

    @Override // defpackage.md2
    public final void z0() {
        w33 w33Var = new w33();
        qj0.c0(this, new k9(1, w33Var));
        xk2 xk2Var = (xk2) ((b24) w33Var.n);
        this.D = xk2Var;
        tk2 tk2Var = this.C;
        tk2Var.b = xk2Var;
        if (tk2Var.a == this) {
            tk2Var.a = null;
        }
    }
}
