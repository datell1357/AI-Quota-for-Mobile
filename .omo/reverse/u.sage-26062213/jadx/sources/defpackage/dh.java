package defpackage;

import android.view.View;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dh implements y91 {
    public final Object a;
    public Object b;
    public final Object c;
    public final Object d;
    public final Object e;
    public Object f;
    public final Object g;
    public Object h;

    public dh(int i) {
        switch (i) {
            case 3:
                Boolean bool = Boolean.FALSE;
                this.a = ca.A(bool);
                this.b = new ss2(1.0f);
                this.c = ca.A(bool);
                this.d = new ss2(1.0f);
                this.e = ca.A(bool);
                this.f = ca.A(new f14(f14.b));
                this.g = ca.A(bool);
                this.h = ca.A(new t70(t70.e));
                break;
            default:
                long[] jArr = td3.a;
                this.a = new kg2();
                lg2 lg2Var = ud3.a;
                this.c = new lg2();
                this.g = new ArrayList();
                this.d = new ArrayList();
                this.e = new ArrayList();
                this.f = new ArrayList();
                this.h = new ArrayList();
                break;
        }
    }

    public static int m(int[] iArr, g12 g12Var, boolean z) {
        g12Var.getClass();
        int iL = c75.L(g12Var, z) + iArr[0];
        iArr[0] = iL;
        return Math.max(0, iL);
    }

    public boolean a(boolean z) {
        bo boVar;
        if (f() != null) {
            ka1 ka1VarF = f();
            k(null);
            if (ka1VarF != null) {
                fa1 fa1Var = fa1.n;
                fa1 fa1Var2 = fa1.p;
                ka1VarF.H0(fa1Var, fa1Var2);
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
                                        ((ka1) md2VarG).H0(fa1.o, fa1Var2);
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
        }
        return true;
    }

    public boolean b(int i, boolean z, boolean z2) {
        int iOrdinal;
        boolean z3 = true;
        if (z || (iOrdinal = n44.A0((ka1) this.c, i).ordinal()) == 0) {
            a(z);
        } else {
            if (iOrdinal != 1 && iOrdinal != 2 && iOrdinal != 3) {
                p61.x();
                return false;
            }
            z3 = false;
        }
        if (z3 && z2) {
            c();
        }
        return z3;
    }

    public void c() {
        q9 q9Var = (q9) this.a;
        if (q9Var.isFocused() || q9Var.hasFocus()) {
            q9Var.clearFocus();
        } else if (q9Var.hasFocus()) {
            View viewFindFocus = q9Var.findFocus();
            if (viewFindFocus != null) {
                viewFindFocus.clearFocus();
            }
            q9Var.clearFocus();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00e7 A[Catch: all -> 0x02f2, TryCatch #0 {all -> 0x02f2, blocks: (B:3:0x0009, B:5:0x0012, B:8:0x001d, B:12:0x0027, B:15:0x0033, B:17:0x0039, B:18:0x003e, B:20:0x0046, B:22:0x004b, B:24:0x0051, B:28:0x0057, B:126:0x0173, B:128:0x0179, B:129:0x017c, B:131:0x0187, B:134:0x0195, B:138:0x019f, B:141:0x01a5, B:142:0x01aa, B:145:0x01b2, B:147:0x01b8, B:149:0x01bc, B:151:0x01c4, B:153:0x01ca, B:157:0x01d2, B:159:0x01db, B:160:0x01df, B:161:0x01e2, B:164:0x01e8, B:165:0x01ed, B:166:0x01f0, B:168:0x01f6, B:170:0x01fa, B:173:0x0203, B:175:0x020b, B:182:0x0222, B:184:0x0227, B:186:0x022b, B:209:0x026d, B:190:0x0237, B:192:0x023d, B:194:0x0241, B:196:0x0249, B:198:0x024f, B:202:0x0257, B:204:0x0260, B:205:0x0264, B:206:0x0267, B:210:0x0272, B:214:0x0282, B:216:0x0287, B:218:0x028b, B:241:0x02cd, B:222:0x0297, B:224:0x029d, B:226:0x02a1, B:228:0x02a9, B:230:0x02af, B:234:0x02b7, B:236:0x02c0, B:237:0x02c4, B:238:0x02c7, B:243:0x02d4, B:245:0x02db, B:32:0x005f, B:34:0x0065, B:35:0x0068, B:37:0x0070, B:40:0x007e, B:44:0x0088, B:75:0x00dd, B:77:0x00e1, B:47:0x008d, B:49:0x0093, B:51:0x0097, B:53:0x009f, B:55:0x00a5, B:59:0x00ad, B:61:0x00b6, B:62:0x00ba, B:63:0x00bd, B:66:0x00c3, B:67:0x00c8, B:68:0x00cb, B:70:0x00d1, B:72:0x00d5, B:78:0x00e7, B:80:0x00ed, B:81:0x00f0, B:83:0x00fa, B:86:0x0108, B:90:0x0112, B:121:0x0167, B:123:0x016b, B:93:0x0117, B:95:0x011d, B:97:0x0121, B:99:0x0129, B:101:0x012f, B:105:0x0137, B:107:0x0140, B:108:0x0144, B:109:0x0147, B:112:0x014d, B:113:0x0152, B:114:0x0155, B:116:0x015b, B:118:0x015f), top: B:255:0x0009 }] */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v21, types: [ug2] */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25, types: [ug2] */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r0v32 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r12v24, types: [md2] */
    /* JADX WARN: Type inference failed for: r12v25, types: [md2] */
    /* JADX WARN: Type inference failed for: r12v29, types: [md2] */
    /* JADX WARN: Type inference failed for: r12v30, types: [md2] */
    /* JADX WARN: Type inference failed for: r12v34, types: [md2] */
    /* JADX WARN: Type inference failed for: r12v35 */
    /* JADX WARN: Type inference failed for: r12v36, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v37 */
    /* JADX WARN: Type inference failed for: r12v38 */
    /* JADX WARN: Type inference failed for: r12v39 */
    /* JADX WARN: Type inference failed for: r12v40 */
    /* JADX WARN: Type inference failed for: r12v43, types: [md2] */
    /* JADX WARN: Type inference failed for: r12v44 */
    /* JADX WARN: Type inference failed for: r12v45, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v46 */
    /* JADX WARN: Type inference failed for: r12v47 */
    /* JADX WARN: Type inference failed for: r12v48 */
    /* JADX WARN: Type inference failed for: r12v49 */
    /* JADX WARN: Type inference failed for: r12v64 */
    /* JADX WARN: Type inference failed for: r12v65 */
    /* JADX WARN: Type inference failed for: r12v66 */
    /* JADX WARN: Type inference failed for: r12v67 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v10, types: [ug2] */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v14 */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v6, types: [ug2] */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r6v39 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean d(android.view.KeyEvent r13, defpackage.ne1 r14) {
        /*
            Method dump skipped, instruction units count: 759
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dh.d(android.view.KeyEvent, ne1):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:231:0x011e, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Boolean e(int r20, defpackage.l33 r21, defpackage.pe1 r22) {
        /*
            Method dump skipped, instruction units count: 732
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dh.e(int, l33, pe1):java.lang.Boolean");
    }

    public ka1 f() {
        ka1 ka1Var = (ka1) this.h;
        if (ka1Var == null || !ka1Var.A) {
            return null;
        }
        return ka1Var;
    }

    public long g() {
        ArrayList arrayList = (ArrayList) this.h;
        if (arrayList.size() <= 0) {
            return 0L;
        }
        di0.D(arrayList.get(0));
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00c8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void h(int r33, int r34, java.util.ArrayList r35, defpackage.hb r36, defpackage.d12 r37, boolean r38, boolean r39, boolean r40, int r41, int r42) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 739
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dh.h(int, int, java.util.ArrayList, hb, d12, boolean, boolean, boolean, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void i() {
        /*
            r14 = this;
            java.lang.Object r14 = r14.a
            kg2 r14 = (defpackage.kg2) r14
            boolean r0 = r14.j()
            if (r0 == 0) goto L52
            java.lang.Object[] r0 = r14.c
            long[] r1 = r14.a
            int r2 = r1.length
            int r2 = r2 + (-2)
            if (r2 < 0) goto L4f
            r3 = 0
            r4 = r3
        L15:
            r5 = r1[r4]
            long r7 = ~r5
            r9 = 7
            long r7 = r7 << r9
            long r7 = r7 & r5
            r9 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r7 = r7 & r9
            int r7 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r7 == 0) goto L4a
            int r7 = r4 - r2
            int r7 = ~r7
            int r7 = r7 >>> 31
            r8 = 8
            int r7 = 8 - r7
            r9 = r3
        L2f:
            if (r9 >= r7) goto L48
            r10 = 255(0xff, double:1.26E-321)
            long r10 = r10 & r5
            r12 = 128(0x80, double:6.32E-322)
            int r10 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r10 < 0) goto L3e
            long r5 = r5 >> r8
            int r9 = r9 + 1
            goto L2f
        L3e:
            int r14 = r4 << 3
            int r14 = r14 + r9
            r14 = r0[r14]
            defpackage.di0.D(r14)
            r14 = 0
            throw r14
        L48:
            if (r7 != r8) goto L4f
        L4a:
            if (r4 == r2) goto L4f
            int r4 = r4 + 1
            goto L15
        L4f:
            r14.a()
        L52:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dh.i():void");
    }

    public boolean j(int i) {
        if (!b(i, false, false)) {
            return false;
        }
        Boolean boolE = e(i, null, new n9(i, 2));
        boolean zBooleanValue = boolE != null ? boolE.booleanValue() : false;
        if (!zBooleanValue) {
            c();
        }
        return zBooleanValue;
    }

    public void k(ka1 ka1Var) {
        ka1 ka1Var2 = (ka1) this.h;
        this.h = ka1Var;
        dg2 dg2Var = (dg2) this.g;
        Object[] objArr = dg2Var.a;
        int i = dg2Var.b;
        for (int i2 = 0; i2 < i; i2++) {
            ((x91) objArr[i2]).a(ka1Var2, ka1Var);
        }
    }

    public void l(g12 g12Var, boolean z) {
        Object objG = ((kg2) this.a).g(g12Var.i);
        objG.getClass();
        di0.D(objG);
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x009f, code lost:
    
        r33 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00a9, code lost:
    
        if (((r8 & ((~r8) << 6)) & (-9187201950435737472L)) == r33) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00ab, code lost:
    
        r0 = r4.b(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00b1, code lost:
    
        if (r4.e != 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00c2, code lost:
    
        if (((r4.a[r0 >> 3] >> ((r0 & 7) << 3)) & 255) != 254) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00c4, code lost:
    
        r37 = 1;
        r39 = 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00ca, code lost:
    
        r0 = r4.c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00cc, code lost:
    
        if (r0 <= 8) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00e3, code lost:
    
        if (java.lang.Long.compare((((long) r4.d) * 32) ^ Long.MIN_VALUE, (((long) r0) * 25) ^ Long.MIN_VALUE) > 0) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00e5, code lost:
    
        r0 = r4.a;
        r6 = r4.c;
        r12 = r4.b;
        r13 = (r6 + 7) >> 3;
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00f1, code lost:
    
        if (r14 >= r13) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00f3, code lost:
    
        r8 = r0[r14] & (-9187201950435737472L);
        r0[r14] = ((~r8) + (r8 >>> 7)) & (-72340172838076674L);
        r14 = r14 + 1;
        r5 = r5;
        r6 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x010e, code lost:
    
        r15 = r5;
        r18 = r6;
        r39 = 128;
        r5 = defpackage.ji.Y(r0);
        r6 = r5 - 1;
        r13 = 72057594037927935L;
        r0[r6] = (r0[r6] & 72057594037927935L) | (-72057594037927936L);
        r0[r5] = r0[0];
        r5 = r18;
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x012f, code lost:
    
        if (r6 == r5) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0131, code lost:
    
        r8 = r6 >> 3;
        r9 = (r6 & 7) << 3;
        r22 = (r0[r8] >> r9) & 255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x013f, code lost:
    
        if (r22 != 128) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0141, code lost:
    
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0146, code lost:
    
        if (r22 == 254) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0149, code lost:
    
        r18 = java.lang.Long.hashCode(r12[r6]) * r28;
        r18 = r18 ^ (r18 << 16);
        r22 = r13;
        r13 = r18 >>> 7;
        r14 = r4.b(r13);
        r13 = r13 & r5;
        r29 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x016b, code lost:
    
        if ((((r14 - r13) & r5) / 8) != (((r6 - r13) & r5) / 8)) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x016d, code lost:
    
        r15 = r7;
        r0[r8] = (r0[r8] & (~(255 << r9))) | (((long) (r18 & 127)) << r9);
        r0[r0.length - r15] = (r0[0] & r22) | Long.MIN_VALUE;
        r6 = r6 + 1;
        r7 = r15;
        r13 = r22;
        r15 = r29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0190, code lost:
    
        r15 = r7;
        r7 = r14 >> 3;
        r25 = r0[r7];
        r8 = (r14 & 7) << 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x01a1, code lost:
    
        if (((r25 >> r8) & 255) != 128) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x01a3, code lost:
    
        r35 = r5;
        r36 = r6;
        r0[r7] = (r25 & (~(255 << r8))) | (((long) (r18 & 127)) << r8);
        r0[r8] = (r0[r8] & (~(255 << r9))) | (128 << r9);
        r12[r14] = r12[r36];
        r12[r36] = r33;
        r6 = r36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x01cb, code lost:
    
        r35 = r5;
        r36 = r6;
        r0[r7] = (r25 & (~(255 << r8))) | (((long) (r18 & 127)) << r8);
        r5 = r12[r14];
        r12[r14] = r12[r36];
        r12[r36] = r5;
        r6 = r36 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x01e8, code lost:
    
        r0[r0.length - r15] = (r0[0] & r22) | Long.MIN_VALUE;
        r6 = r6 + r15;
        r7 = r15;
        r13 = r22;
        r15 = r29;
        r5 = r35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x01fc, code lost:
    
        r15 = r7;
        r4.e = defpackage.td3.a(r4.c) - r4.d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0208, code lost:
    
        r37 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x020c, code lost:
    
        r15 = 1;
        r39 = 128;
        r0 = defpackage.td3.b(r4.c);
        r5 = r4.a;
        r6 = r4.b;
        r7 = r4.c;
        r4.c(r0);
        r0 = r4.a;
        r8 = r4.b;
        r9 = r4.c;
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0226, code lost:
    
        if (r12 >= r7) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0236, code lost:
    
        if (((r5[r12 >> 3] >> ((r12 & 7) << 3)) & 255) >= 128) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0238, code lost:
    
        r13 = r6[r12];
        r16 = java.lang.Long.hashCode(r13) * r28;
        r16 = r16 ^ (r16 << 16);
        r37 = r15;
        r15 = r4.b(r16 >>> 7);
        r17 = r0;
        r0 = r16 & 127;
        r16 = r5;
        r18 = r6;
        r5 = r0;
        r0 = r15 >> 3;
        r19 = (r15 & 7) << 3;
        r5 = (r17[r0] & (~(255 << r19))) | (r5 << r19);
        r17[r0] = r5;
        r17[(((r15 - 7) & r9) + (r9 & 7)) >> 3] = r5;
        r8[r15] = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0278, code lost:
    
        r17 = r0;
        r16 = r5;
        r18 = r6;
        r37 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0280, code lost:
    
        r12 = r12 + 1;
        r5 = r16;
        r0 = r17;
        r6 = r18;
        r15 = r37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x028b, code lost:
    
        r0 = r4.b(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x028f, code lost:
    
        r14 = r0;
        r4.d++;
        r0 = r4.e;
        r3 = r4.a;
        r5 = r14 >> 3;
        r6 = r3[r5];
        r8 = (r14 & 7) << 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x02a8, code lost:
    
        if (((r6 >> r8) & 255) != r39) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x02aa, code lost:
    
        r21 = r37 == true ? 1 : 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x02ac, code lost:
    
        r4.e = r0 - r21;
        r0 = r4.c;
        r6 = (r6 & (~(255 << r8))) | (r10 << r8);
        r3[r5] = r6;
        r3[(((r14 - 7) & r0) + (r0 & 7)) >> 3] = r6;
        r37 = r37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0356, code lost:
    
        if (((r6 & ((~r6) << 6)) & (-9187201950435737472L)) == 0) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0358, code lost:
    
        r10 = -1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean n(android.view.KeyEvent r40) {
        /*
            Method dump skipped, instruction units count: 910
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dh.n(android.view.KeyEvent):boolean");
    }

    public dh(q9 q9Var, q9 q9Var2) {
        this.a = q9Var;
        this.b = q9Var2;
        this.c = new ka1(2, null, 14);
        this.d = new w91(this, q9Var2);
        this.e = new z91(this);
        this.g = new dg2(1);
    }

    public dh(String str, String str2, ArrayList arrayList, String str3, String str4, String str5, String str6, gw4 gw4Var) {
        this.a = str;
        this.b = str2;
        this.g = arrayList;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
        this.h = gw4Var;
    }
}
