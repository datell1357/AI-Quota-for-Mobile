package defpackage;

import android.net.Uri;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bo {
    public final /* synthetic */ int a;
    public Object b;
    public Object c;
    public Object d;
    public Object e;
    public Object f;
    public Object g;
    public Object h;
    public Object i;
    public Object j;
    public Object k;

    public bo(String str, ap1 ap1Var, pe5 pe5Var, Executor executor, gd5 gd5Var, fy2 fy2Var, ky4 ky4Var) {
        this.a = 2;
        this.i = new Object();
        this.j = new gw4(26);
        this.k = null;
        this.b = str;
        this.c = tf1.d(ap1Var);
        this.d = pe5Var;
        this.e = new fi3(executor);
        this.f = gd5Var;
        this.g = fy2Var;
        this.h = ky4Var;
    }

    public static final void a(bo boVar, md2 md2Var, mm2 mm2Var) {
        for (md2 md2Var2 = md2Var.r; md2Var2 != null; md2Var2 = md2Var2.r) {
            if (md2Var2 == ((im2) boVar.c)) {
                xy1 xy1VarU = ((xy1) boVar.b).u();
                mm2Var.H = xy1VarU != null ? (gr1) xy1VarU.S.d : null;
                boVar.e = mm2Var;
                return;
            } else {
                if ((md2Var2.p & 2) != 0) {
                    return;
                }
                md2Var2.F0(mm2Var);
            }
        }
    }

    public static md2 d(ld2 ld2Var, md2 md2Var) {
        md2 md2VarE;
        if (ld2Var instanceof rd2) {
            md2VarE = ((rd2) ld2Var).e();
            md2VarE.p = nm2.f(md2VarE);
        } else {
            kq kqVar = new kq();
            kqVar.p = nm2.d(ld2Var);
            kqVar.B = ld2Var;
            new HashSet();
            md2VarE = kqVar;
        }
        if (md2VarE.A) {
            ar1.b("A ModifierNodeElement cannot return an already attached node from create() ");
        }
        md2VarE.v = true;
        md2 md2Var2 = md2Var.s;
        if (md2Var2 != null) {
            md2Var2.r = md2VarE;
            md2VarE.s = md2Var2;
        }
        md2Var.s = md2VarE;
        md2VarE.r = md2Var;
        return md2VarE;
    }

    public static md2 e(md2 md2Var) {
        boolean z = md2Var.A;
        if (z) {
            cg2 cg2Var = nm2.a;
            if (!z) {
                ar1.b("autoInvalidateRemovedNode called on unattached node");
            }
            nm2.a(md2Var, -1, 2);
            md2Var.D0();
            md2Var.x0();
        }
        md2 md2Var2 = md2Var.s;
        md2 md2Var3 = md2Var.r;
        if (md2Var2 != null) {
            md2Var2.r = md2Var3;
            md2Var.s = null;
        }
        if (md2Var3 != null) {
            md2Var3.s = md2Var2;
            md2Var.r = null;
        }
        md2Var3.getClass();
        return md2Var3;
    }

    public static void j(ld2 ld2Var, ld2 ld2Var2, md2 md2Var) {
        if ((ld2Var instanceof rd2) && (ld2Var2 instanceof rd2)) {
            md2Var.getClass();
            ((rd2) ld2Var2).f(md2Var);
            if (md2Var.A) {
                nm2.c(md2Var);
                return;
            } else {
                md2Var.w = true;
                return;
            }
        }
        if (!(md2Var instanceof kq)) {
            ar1.b("Unknown Modifier.Node type");
            return;
        }
        kq kqVar = (kq) md2Var;
        boolean z = kqVar.A;
        if (z) {
            if (!z) {
                ar1.b("unInitializeModifier called on unattached node");
            }
            if ((kqVar.p & 8) != 0) {
                ((q9) w80.S(kqVar)).y();
            }
        }
        kqVar.B = ld2Var2;
        kqVar.p = nm2.d(ld2Var2);
        if (kqVar.A) {
            kqVar.G0(false);
        }
        if (md2Var.A) {
            nm2.c(md2Var);
        } else {
            md2Var.w = true;
        }
    }

    public void b(String str, String str2) {
        HashMap map = (HashMap) this.i;
        if (map != null) {
            map.put(str, str2);
        } else {
            k21.n("Property \"autoMetadata\" has not been set");
        }
    }

    public co c() {
        String strConcat = ((String) this.b) == null ? " transportName" : "";
        if (((l01) this.f) == null) {
            strConcat = strConcat.concat(" encodedPayload");
        }
        if (((Long) this.g) == null) {
            strConcat = strConcat.concat(" eventMillis");
        }
        if (((Long) this.h) == null) {
            strConcat = strConcat.concat(" uptimeMillis");
        }
        if (((HashMap) this.i) == null) {
            strConcat = strConcat.concat(" autoMetadata");
        }
        if (strConcat.isEmpty()) {
            return new co((String) this.b, (Integer) this.d, (l01) this.f, ((Long) this.g).longValue(), ((Long) this.h).longValue(), (HashMap) this.i, (Integer) this.e, (String) this.c, (byte[]) this.j, (byte[]) this.k);
        }
        k21.n("Missing required properties:".concat(strConcat));
        return null;
    }

    public boolean f(int i) {
        return (((md2) this.g).q & i) != 0;
    }

    public void g() {
        for (md2 md2Var = (md2) this.g; md2Var != null; md2Var = md2Var.s) {
            md2Var.C0();
            if (md2Var.v) {
                cg2 cg2Var = nm2.a;
                if (!md2Var.A) {
                    ar1.b("autoInvalidateInsertedNode called on unattached node");
                }
                nm2.a(md2Var, -1, 1);
            }
            if (md2Var.w) {
                nm2.c(md2Var);
            }
            md2Var.v = false;
            md2Var.w = false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:118:0x0264, code lost:
    
        r13 = r28 + 2;
        r11 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x026a, code lost:
    
        r3 = r3 + 1;
        r12 = r20;
        r11 = r21;
        r13 = r26;
        r14 = r29;
        r35 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x014a, code lost:
    
        r26 = r13;
        r29 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0150, code lost:
    
        if ((r19 & 1) != 0) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0152, code lost:
    
        r11 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0154, code lost:
    
        r11 = r33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0156, code lost:
    
        r13 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0157, code lost:
    
        if (r13 > r3) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0159, code lost:
    
        if (r13 == r12) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x015b, code lost:
    
        if (r13 == r3) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x015d, code lost:
    
        r24 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x016b, code lost:
    
        if (r20[(r13 + 1) + r17] >= r20[(r13 - 1) + r17]) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x016e, code lost:
    
        r24 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0170, code lost:
    
        r11 = r20[(r13 - 1) + r17];
        r14 = r11 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0179, code lost:
    
        r24 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x017b, code lost:
    
        r11 = r20[(r13 + 1) + r17];
        r14 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0182, code lost:
    
        r22 = r10 - ((r6 - r14) - r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0188, code lost:
    
        if (r3 == 0) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x018a, code lost:
    
        r25 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x018d, code lost:
    
        r25 = r33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x018f, code lost:
    
        if (r14 != r11) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0191, code lost:
    
        r27 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0194, code lost:
    
        r27 = r33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0196, code lost:
    
        r25 = r22 + (r25 & r27);
        r22 = r11;
        r11 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01a0, code lost:
    
        if (r14 <= r7) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01a2, code lost:
    
        if (r11 <= r15) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01a4, code lost:
    
        r27 = r11;
        r28 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01b0, code lost:
    
        if (r0.a(r14 - 1, r27 - 1) == false) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01b2, code lost:
    
        r14 = r14 - 1;
        r11 = r27 - 1;
        r13 = r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01b9, code lost:
    
        r27 = r11;
        r28 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01bd, code lost:
    
        r20[r17 + r28] = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01c1, code lost:
    
        if (r24 == 0) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01c3, code lost:
    
        r11 = r19 - r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01c5, code lost:
    
        if (r11 < r12) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01c7, code lost:
    
        if (r11 > r3) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01cd, code lost:
    
        if (r16[r17 + r11] < r14) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01cf, code lost:
    
        r26[r33] = r14;
        r11 = 1;
        r26[1] = r27;
        r26[r32] = r22;
        r26[3] = r25;
        r26[4] = 1;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x010b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0140  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void h(int r32, defpackage.ug2 r33, defpackage.ug2 r34, defpackage.md2 r35, boolean r36) {
        /*
            Method dump skipped, instruction units count: 929
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.bo.h(int, ug2, ug2, md2, boolean):void");
    }

    public void i() {
        qy1 qy1Var;
        rr2 rr2Var;
        xy1 xy1Var = (xy1) this.b;
        mm2 mm2Var = (gr1) this.d;
        for (md2 md2Var = ((gw3) this.f).r; md2Var != null; md2Var = md2Var.r) {
            oy1 oy1VarH = w80.h(md2Var);
            if (oy1VarH != null) {
                mm2 mm2Var2 = md2Var.f206u;
                if (mm2Var2 != null) {
                    qy1Var = (qy1) mm2Var2;
                    oy1 oy1Var = qy1Var.h0;
                    qy1Var.n1(oy1VarH);
                    if (oy1Var != md2Var && (rr2Var = qy1Var.c0) != null) {
                        ((ci1) rr2Var).c();
                    }
                } else {
                    qy1Var = new qy1(xy1Var, oy1VarH);
                    md2Var.F0(qy1Var);
                }
                mm2Var.H = qy1Var;
                qy1Var.G = mm2Var;
                mm2Var = qy1Var;
            } else {
                md2Var.F0(mm2Var);
            }
        }
        xy1 xy1VarU = xy1Var.u();
        mm2Var.H = xy1VarU != null ? (gr1) xy1VarU.S.d : null;
        this.e = mm2Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0023 A[Catch: all -> 0x0017, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x0009, B:8:0x000f, B:13:0x001b, B:14:0x001d, B:16:0x0023, B:17:0x0040, B:18:0x0045), top: B:25:0x0003, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.common.util.concurrent.ListenableFuture k(defpackage.ic5 r9, java.util.concurrent.Executor r10) {
        /*
            r8 = this;
            java.lang.Object r1 = r8.i
            monitor-enter(r1)
            java.lang.Object r0 = r8.k     // Catch: java.lang.Throwable -> L17
            com.google.common.util.concurrent.ListenableFuture r0 = (com.google.common.util.concurrent.ListenableFuture) r0     // Catch: java.lang.Throwable -> L17
            if (r0 == 0) goto L1d
            boolean r0 = r0.isDone()     // Catch: java.lang.Throwable -> L17
            if (r0 == 0) goto L1d
            java.lang.Object r0 = r8.k     // Catch: java.lang.Throwable -> L17 java.util.concurrent.ExecutionException -> L1a
            com.google.common.util.concurrent.ListenableFuture r0 = (com.google.common.util.concurrent.ListenableFuture) r0     // Catch: java.lang.Throwable -> L17 java.util.concurrent.ExecutionException -> L1a
            defpackage.tf1.b(r0)     // Catch: java.lang.Throwable -> L17 java.util.concurrent.ExecutionException -> L1a
            goto L1d
        L17:
            r0 = move-exception
            r8 = r0
            goto L5f
        L1a:
            r0 = 0
            r8.k = r0     // Catch: java.lang.Throwable -> L17
        L1d:
            java.lang.Object r0 = r8.k     // Catch: java.lang.Throwable -> L17
            com.google.common.util.concurrent.ListenableFuture r0 = (com.google.common.util.concurrent.ListenableFuture) r0     // Catch: java.lang.Throwable -> L17
            if (r0 != 0) goto L40
            java.lang.Object r0 = r8.j     // Catch: java.lang.Throwable -> L17
            gw4 r0 = (defpackage.gw4) r0     // Catch: java.lang.Throwable -> L17
            gt4 r2 = new gt4     // Catch: java.lang.Throwable -> L17
            r3 = 15
            r2.<init>(r3, r8)     // Catch: java.lang.Throwable -> L17
            pc4 r2 = defpackage.vf5.a(r2)     // Catch: java.lang.Throwable -> L17
            java.lang.Object r3 = r8.e     // Catch: java.lang.Throwable -> L17
            fi3 r3 = (defpackage.fi3) r3     // Catch: java.lang.Throwable -> L17
            com.google.common.util.concurrent.ListenableFuture r0 = r0.F(r2, r3)     // Catch: java.lang.Throwable -> L17
            com.google.common.util.concurrent.ListenableFuture r0 = defpackage.tf1.d(r0)     // Catch: java.lang.Throwable -> L17
            r8.k = r0     // Catch: java.lang.Throwable -> L17
        L40:
            java.lang.Object r0 = r8.k     // Catch: java.lang.Throwable -> L17
            r4 = r0
            com.google.common.util.concurrent.ListenableFuture r4 = (com.google.common.util.concurrent.ListenableFuture) r4     // Catch: java.lang.Throwable -> L17
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L17
            java.lang.Object r0 = r8.j
            gw4 r0 = (defpackage.gw4) r0
            qd1 r2 = new qd1
            r7 = 24
            r3 = r8
            r5 = r9
            r6 = r10
            r2.<init>(r3, r4, r5, r6, r7)
            pc4 r8 = defpackage.vf5.a(r2)
            fu0 r9 = defpackage.fu0.n
            com.google.common.util.concurrent.ListenableFuture r8 = r0.F(r8, r9)
            return r8
        L5f:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L17
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.bo.k(ic5, java.util.concurrent.Executor):com.google.common.util.concurrent.ListenableFuture");
    }

    public sm4 l(Uri uri) throws IOException {
        pe5 pe5Var = (pe5) this.d;
        String str = (String) this.b;
        gd5 gd5Var = (gd5) this.f;
        try {
            try {
                ky4 ky4Var = (ky4) this.h;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 5);
                sb.append("Read ");
                sb.append(str);
                String string = sb.toString();
                ky4Var.getClass();
                kf5 kf5VarB = ky4.b(string);
                try {
                    InputStream inputStreamC = hu4.c(gd5Var.b(uri));
                    try {
                        rn4 rn4VarA = ((qn4) ((xo4) pe5Var.a.s(7))).a(inputStreamC, pe5Var.b);
                        if (inputStreamC != null) {
                            inputStreamC.close();
                        }
                        kf5VarB.close();
                        return rn4VarA;
                    } finally {
                    }
                } catch (Throwable th) {
                    try {
                        kf5VarB.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (FileNotFoundException e) {
                ed5 ed5VarB = gd5Var.b(uri);
                if (ed5VarB.a.b(ed5VarB.d)) {
                    throw e;
                }
                return pe5Var.a;
            }
        } catch (IOException e2) {
            throw lu4.a(gd5Var, uri, e2, str);
        }
    }

    public void m(Uri uri, Object obj) throws IOException {
        String str = (String) this.b;
        gd5 gd5Var = (gd5) this.f;
        Uri uriBuild = uri.buildUpon().path(String.valueOf(uri.getPath()).concat(".tmp")).build();
        try {
            ky4 ky4Var = (ky4) this.h;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 6);
            sb.append("Write ");
            sb.append(str);
            String string = sb.toString();
            ky4Var.getClass();
            kf5 kf5VarB = ky4.b(string);
            try {
                pc4 pc4Var = new pc4(25);
                try {
                    ed5 ed5VarB = gd5Var.b(uriBuild);
                    ArrayList arrayListA = ed5VarB.a(ed5VarB.a.c(ed5VarB.d));
                    new pc4[]{pc4Var}[0].f(arrayListA);
                    OutputStream outputStream = (OutputStream) arrayListA.get(0);
                    try {
                        ((sm4) obj).b(outputStream);
                        if (((qd5) pc4Var.p) == null) {
                            throw new c70("Cannot sync underlying stream");
                        }
                        ((OutputStream) pc4Var.o).flush();
                        ((qd5) pc4Var.p).n.getFD().sync();
                        outputStream.close();
                        kf5VarB.close();
                        ed5 ed5VarB2 = gd5Var.b(uriBuild);
                        ed5 ed5VarB3 = gd5Var.b(uri);
                        wd5 wd5Var = ed5VarB2.a;
                        if (wd5Var != ed5VarB3.a) {
                            throw new c70("Cannot rename file across backends");
                        }
                        wd5Var.e(ed5VarB2.d, ed5VarB3.d);
                    } catch (Throwable th) {
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                } catch (IOException e) {
                    throw lu4.a(gd5Var, uri, e, str);
                }
            } finally {
            }
        } catch (IOException e2) {
            ed5 ed5VarB4 = gd5Var.b(uriBuild);
            if (ed5VarB4.a.b(ed5VarB4.d)) {
                try {
                    ed5 ed5VarB5 = gd5Var.b(uriBuild);
                    ed5VarB5.a.d(ed5VarB5.d);
                } catch (IOException e3) {
                    e2.addSuppressed(e3);
                }
            }
            throw e2;
        }
    }

    public String toString() {
        switch (this.a) {
            case 1:
                StringBuilder sb = new StringBuilder("[");
                md2 md2Var = (md2) this.g;
                gw3 gw3Var = (gw3) this.f;
                if (md2Var == gw3Var) {
                    sb.append("]");
                } else {
                    while (true) {
                        if (md2Var != null && md2Var != gw3Var) {
                            sb.append(String.valueOf(md2Var));
                            if (md2Var.s == gw3Var) {
                                sb.append("]");
                            } else {
                                sb.append(",");
                                md2Var = md2Var.s;
                            }
                        }
                    }
                }
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public /* synthetic */ bo() {
        this.a = 0;
    }

    public bo(xy1 xy1Var) {
        this.a = 1;
        this.b = xy1Var;
        im2 im2Var = new im2();
        im2Var.q = -1;
        this.c = im2Var;
        gr1 gr1Var = new gr1(xy1Var);
        this.d = gr1Var;
        this.e = gr1Var;
        gw3 gw3Var = gr1Var.h0;
        this.f = gw3Var;
        this.g = gw3Var;
        this.j = new ug2(new nd2[16]);
    }
}
