package defpackage;

import java.io.File;
import java.io.IOException;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fn0 implements lm0 {
    public final k51 a;
    public final yi0 b;
    public final qi0 c;
    public final mt d;
    public int f;
    public ir3 g;
    public final qd1 i;
    public final nv3 j;
    public final nv3 k;
    public final qd1 l;
    public final hh2 e = new hh2();
    public final wu4 h = new wu4(19);

    public fn0(k51 k51Var, List list, yi0 yi0Var, qi0 qi0Var) {
        this.a = k51Var;
        this.b = yi0Var;
        this.c = qi0Var;
        dh0 dh0Var = null;
        this.d = new mt(3, new p(this, dh0Var, 9));
        this.i = new qd1(this, list);
        final int i = 0;
        this.j = new nv3(new ne1(this) { // from class: mm0
            public final /* synthetic */ fn0 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() throws IOException {
                int i2 = i;
                fn0 fn0Var = this.o;
                switch (i2) {
                    case 0:
                        k51 k51Var2 = fn0Var.a;
                        File canonicalFile = ((File) k51Var2.c.a()).getCanonicalFile();
                        synchronized (k51.e) {
                            String absolutePath = canonicalFile.getAbsolutePath();
                            LinkedHashSet linkedHashSet = k51.d;
                            if (linkedHashSet.contains(absolutePath)) {
                                throw new IllegalStateException(("There are multiple DataStores active for the same file: " + absolutePath + ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore's active on the same file (by confirming that the scope is cancelled).").toString());
                            }
                            absolutePath.getClass();
                            linkedHashSet.add(absolutePath);
                        }
                        return new n51(canonicalFile, k51Var2.a, (vs1) k51Var2.b.k(canonicalFile), new cc(8, canonicalFile));
                    default:
                        return ((n51) fn0Var.j.getValue()).c;
                }
            }
        });
        final int i2 = 1;
        this.k = new nv3(new ne1(this) { // from class: mm0
            public final /* synthetic */ fn0 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() throws IOException {
                int i22 = i2;
                fn0 fn0Var = this.o;
                switch (i22) {
                    case 0:
                        k51 k51Var2 = fn0Var.a;
                        File canonicalFile = ((File) k51Var2.c.a()).getCanonicalFile();
                        synchronized (k51.e) {
                            String absolutePath = canonicalFile.getAbsolutePath();
                            LinkedHashSet linkedHashSet = k51.d;
                            if (linkedHashSet.contains(absolutePath)) {
                                throw new IllegalStateException(("There are multiple DataStores active for the same file: " + absolutePath + ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore's active on the same file (by confirming that the scope is cancelled).").toString());
                            }
                            absolutePath.getClass();
                            linkedHashSet.add(absolutePath);
                        }
                        return new n51(canonicalFile, k51Var2.a, (vs1) k51Var2.b.k(canonicalFile), new cc(8, canonicalFile));
                    default:
                        return ((n51) fn0Var.j.getValue()).c;
                }
            }
        });
        this.l = new qd1(qi0Var, new v(5, this), new ei0(4), new n(this, dh0Var, 18));
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object c(defpackage.fn0 r4, defpackage.fh0 r5) {
        /*
            boolean r0 = r5 instanceof defpackage.um0
            if (r0 == 0) goto L13
            r0 = r5
            um0 r0 = (defpackage.um0) r0
            int r1 = r0.t
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.t = r1
            goto L18
        L13:
            um0 r0 = new um0
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.r
            int r1 = r0.t
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L2e
            if (r1 != r2) goto L28
            hh2 r0 = r0.q
            defpackage.gg4.T(r5)
            goto L41
        L28:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r4)
            return r3
        L2e:
            defpackage.gg4.T(r5)
            hh2 r5 = r4.e
            r0.q = r5
            r0.t = r2
            java.lang.Object r0 = r5.j(r0)
            ri0 r1 = defpackage.ri0.n
            if (r0 != r1) goto L40
            return r1
        L40:
            r0 = r5
        L41:
            int r5 = r4.f     // Catch: java.lang.Throwable -> L51
            int r5 = r5 + (-1)
            r4.f = r5     // Catch: java.lang.Throwable -> L51
            if (r5 != 0) goto L55
            ir3 r5 = r4.g     // Catch: java.lang.Throwable -> L51
            if (r5 == 0) goto L53
            r5.j(r3)     // Catch: java.lang.Throwable -> L51
            goto L53
        L51:
            r4 = move-exception
            goto L5b
        L53:
            r4.g = r3     // Catch: java.lang.Throwable -> L51
        L55:
            r0.b(r3)
            t64 r4 = defpackage.t64.a
            return r4
        L5b:
            r0.b(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fn0.c(fn0, fh0):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object d(defpackage.fn0 r7, defpackage.lc2 r8, defpackage.fh0 r9) {
        /*
            boolean r0 = r9 instanceof defpackage.vm0
            if (r0 == 0) goto L13
            r0 = r9
            vm0 r0 = (defpackage.vm0) r0
            int r1 = r0.t
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.t = r1
            goto L18
        L13:
            vm0 r0 = new vm0
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.r
            int r1 = r0.t
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L30
            if (r1 != r3) goto L2a
            z80 r7 = r0.q
            defpackage.gg4.T(r9)     // Catch: java.lang.Throwable -> L28
            goto L63
        L28:
            r8 = move-exception
            goto L5e
        L2a:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r7)
            return r2
        L30:
            defpackage.gg4.T(r9)
            z80 r9 = r8.b
            hi0 r1 = r8.d     // Catch: java.lang.Throwable -> L58
            hi0 r4 = r0.o     // Catch: java.lang.Throwable -> L5b
            r4.getClass()     // Catch: java.lang.Throwable -> L5b
            hi0 r1 = r1.F(r4)     // Catch: java.lang.Throwable -> L58
            n r4 = new n     // Catch: java.lang.Throwable -> L58
            r5 = 16
            r4.<init>(r7, r8, r2, r5)     // Catch: java.lang.Throwable -> L58
            r0.q = r9     // Catch: java.lang.Throwable -> L58
            r0.t = r3     // Catch: java.lang.Throwable -> L58
            java.lang.Object r7 = defpackage.ca.O(r1, r4, r0)     // Catch: java.lang.Throwable -> L58
            ri0 r8 = defpackage.ri0.n
            if (r7 != r8) goto L54
            return r8
        L54:
            r6 = r9
            r9 = r7
            r7 = r6
            goto L63
        L58:
            r8 = move-exception
        L59:
            r7 = r9
            goto L5e
        L5b:
            r7 = move-exception
            r8 = r7
            goto L59
        L5e:
            f83 r9 = new f83
            r9.<init>(r8)
        L63:
            java.lang.Throwable r8 = defpackage.g83.a(r9)
            if (r8 != 0) goto L6d
            r7.U(r9)
            goto L79
        L6d:
            r7.getClass()
            c90 r9 = new c90
            r0 = 0
            r9.<init>(r8, r0)
            r7.U(r9)
        L79:
            t64 r7 = defpackage.t64.a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fn0.d(fn0, lc2, fh0):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object e(defpackage.fn0 r4, defpackage.fh0 r5) {
        /*
            boolean r0 = r5 instanceof defpackage.wm0
            if (r0 == 0) goto L13
            r0 = r5
            wm0 r0 = (defpackage.wm0) r0
            int r1 = r0.t
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.t = r1
            goto L18
        L13:
            wm0 r0 = new wm0
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.r
            int r1 = r0.t
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L2e
            if (r1 != r2) goto L28
            hh2 r0 = r0.q
            defpackage.gg4.T(r5)
            goto L41
        L28:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r4)
            return r3
        L2e:
            defpackage.gg4.T(r5)
            hh2 r5 = r4.e
            r0.q = r5
            r0.t = r2
            java.lang.Object r0 = r5.j(r0)
            ri0 r1 = defpackage.ri0.n
            if (r0 != r1) goto L40
            return r1
        L40:
            r0 = r5
        L41:
            int r5 = r4.f     // Catch: java.lang.Throwable -> L57
            int r5 = r5 + r2
            r4.f = r5     // Catch: java.lang.Throwable -> L57
            if (r5 != r2) goto L59
            qi0 r5 = r4.c     // Catch: java.lang.Throwable -> L57
            rm0 r1 = new rm0     // Catch: java.lang.Throwable -> L57
            r1.<init>(r4, r3, r2)     // Catch: java.lang.Throwable -> L57
            r2 = 3
            ir3 r5 = defpackage.ca.y(r5, r3, r3, r1, r2)     // Catch: java.lang.Throwable -> L57
            r4.g = r5     // Catch: java.lang.Throwable -> L57
            goto L59
        L57:
            r4 = move-exception
            goto L5f
        L59:
            r0.b(r3)
            t64 r4 = defpackage.t64.a
            return r4
        L5f:
            r0.b(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fn0.e(fn0, fh0):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0059, code lost:
    
        if (r1.G(r0) == r4) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object f(defpackage.fn0 r6, defpackage.fh0 r7) throws java.lang.Throwable {
        /*
            boolean r0 = r7 instanceof defpackage.xm0
            if (r0 == 0) goto L13
            r0 = r7
            xm0 r0 = (defpackage.xm0) r0
            int r1 = r0.t
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.t = r1
            goto L18
        L13:
            xm0 r0 = new xm0
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.r
            int r1 = r0.t
            r2 = 2
            r3 = 1
            ri0 r4 = defpackage.ri0.n
            if (r1 == 0) goto L39
            if (r1 == r3) goto L35
            if (r1 != r2) goto L2e
            int r0 = r0.q
            defpackage.gg4.T(r7)     // Catch: java.lang.Throwable -> L2c
            goto L5c
        L2c:
            r7 = move-exception
            goto L63
        L2e:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r6)
            r6 = 0
            return r6
        L35:
            defpackage.gg4.T(r7)
            goto L49
        L39:
            defpackage.gg4.T(r7)
            vs1 r7 = r6.i()
            r0.t = r3
            java.lang.Object r7 = r7.b(r0)
            if (r7 != r4) goto L49
            goto L5b
        L49:
            java.lang.Number r7 = (java.lang.Number) r7
            int r7 = r7.intValue()
            qd1 r1 = r6.i     // Catch: java.lang.Throwable -> L5f
            r0.q = r7     // Catch: java.lang.Throwable -> L5f
            r0.t = r2     // Catch: java.lang.Throwable -> L5f
            java.lang.Object r6 = r1.G(r0)     // Catch: java.lang.Throwable -> L5f
            if (r6 != r4) goto L5c
        L5b:
            return r4
        L5c:
            t64 r6 = defpackage.t64.a
            return r6
        L5f:
            r0 = move-exception
            r5 = r0
            r0 = r7
            r7 = r5
        L63:
            wu4 r6 = r6.h
            x13 r1 = new x13
            r1.<init>(r7, r0)
            r6.v(r1)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fn0.f(fn0, fh0):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0089, code lost:
    
        if (r11 == r7) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a0, code lost:
    
        if (r11 == r7) goto L38;
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object g(defpackage.fn0 r9, boolean r10, defpackage.dh0 r11) {
        /*
            wu4 r0 = r9.h
            boolean r1 = r11 instanceof defpackage.ym0
            if (r1 == 0) goto L15
            r1 = r11
            ym0 r1 = (defpackage.ym0) r1
            int r2 = r1.f425u
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.f425u = r2
            goto L1a
        L15:
            ym0 r1 = new ym0
            r1.<init>(r9, r11)
        L1a:
            java.lang.Object r11 = r1.s
            int r2 = r1.f425u
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            ri0 r7 = defpackage.ri0.n
            if (r2 == 0) goto L43
            if (r2 == r5) goto L3b
            if (r2 == r4) goto L37
            if (r2 != r3) goto L31
            defpackage.gg4.T(r11)
            goto La3
        L31:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r9)
            return r6
        L37:
            defpackage.gg4.T(r11)
            goto L8c
        L3b:
            boolean r10 = r1.q
            sr3 r2 = r1.r
            defpackage.gg4.T(r11)
            goto L5f
        L43:
            defpackage.gg4.T(r11)
            sr3 r2 = r0.m()
            boolean r11 = r2 instanceof defpackage.j64
            if (r11 != 0) goto Lb7
            vs1 r11 = r9.i()
            r1.r = r2
            r1.q = r10
            r1.f425u = r5
            java.lang.Object r11 = r11.b(r1)
            if (r11 != r7) goto L5f
            goto La2
        L5f:
            java.lang.Number r11 = (java.lang.Number) r11
            int r11 = r11.intValue()
            boolean r5 = r2 instanceof defpackage.am0
            if (r5 == 0) goto L6f
            r8 = r2
            am0 r8 = (defpackage.am0) r8
            int r8 = r8.a
            goto L70
        L6f:
            r8 = -1
        L70:
            if (r5 == 0) goto L75
            if (r11 != r8) goto L75
            return r2
        L75:
            r11 = 0
            if (r10 == 0) goto L8f
            vs1 r10 = r9.i()
            zm0 r2 = new zm0
            r2.<init>(r9, r6, r11)
            r1.r = r6
            r1.f425u = r4
            java.lang.Object r11 = r10.a(r2, r1)
            if (r11 != r7) goto L8c
            goto La2
        L8c:
            js2 r11 = (defpackage.js2) r11
            goto La5
        L8f:
            vs1 r10 = r9.i()
            an0 r2 = new an0
            r2.<init>(r9, r8, r6, r11)
            r1.r = r6
            r1.f425u = r3
            java.lang.Object r11 = r10.e(r2, r1)
            if (r11 != r7) goto La3
        La2:
            return r7
        La3:
            js2 r11 = (defpackage.js2) r11
        La5:
            java.lang.Object r9 = r11.n
            sr3 r9 = (defpackage.sr3) r9
            java.lang.Object r10 = r11.o
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto Lb6
            r0.v(r9)
        Lb6:
            return r9
        Lb7:
            java.lang.String r9 = "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"
            defpackage.k21.n(r9)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fn0.g(fn0, boolean, dh0):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0088 A[Catch: xi0 -> 0x0057, TryCatch #1 {xi0 -> 0x0057, blocks: (B:19:0x0052, B:54:0x00e1, B:24:0x005c, B:51:0x00c6, B:32:0x0071, B:40:0x0088, B:42:0x008e, B:36:0x007a, B:48:0x00b5), top: B:79:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0117 A[Catch: all -> 0x0140, TryCatch #0 {all -> 0x0140, blocks: (B:61:0x0107, B:63:0x0117, B:64:0x011c), top: B:78:0x0107 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x011c A[Catch: all -> 0x0140, TRY_LEAVE, TryCatch #0 {all -> 0x0140, blocks: (B:61:0x0107, B:63:0x0117, B:64:0x011c), top: B:78:0x0107 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object h(defpackage.fn0 r10, boolean r11, defpackage.fh0 r12) {
        /*
            Method dump skipped, instruction units count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fn0.h(fn0, boolean, fh0):java.lang.Object");
    }

    @Override // defpackage.lm0
    public final Object a(df1 df1Var, dh0 dh0Var) {
        u74 u74Var = (u74) dh0Var.e().K(bx3.q);
        if (u74Var != null) {
            u74Var.a(this);
        }
        return ca.O(new u74(u74Var, this), new p(this, df1Var, null, 10), dh0Var);
    }

    @Override // defpackage.lm0
    public final a81 b() {
        return this.d;
    }

    public final vs1 i() {
        return (vs1) this.k.getValue();
    }

    public final Object j(fh0 fh0Var) {
        return ((n51) this.j.getValue()).a(new sm0(3, (dh0) null), fh0Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object k(java.lang.Object r10, boolean r11, defpackage.fh0 r12) {
        /*
            r9 = this;
            boolean r0 = r12 instanceof defpackage.dn0
            if (r0 == 0) goto L13
            r0 = r12
            dn0 r0 = (defpackage.dn0) r0
            int r1 = r0.t
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.t = r1
            goto L18
        L13:
            dn0 r0 = new dn0
            r0.<init>(r9, r12)
        L18:
            java.lang.Object r12 = r0.r
            int r1 = r0.t
            r2 = 1
            if (r1 == 0) goto L2e
            if (r1 != r2) goto L27
            u33 r9 = r0.q
            defpackage.gg4.T(r12)
            goto L55
        L27:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r9)
            r9 = 0
            return r9
        L2e:
            defpackage.gg4.T(r12)
            u33 r4 = new u33
            r4.<init>()
            nv3 r12 = r9.j
            java.lang.Object r12 = r12.getValue()
            n51 r12 = (defpackage.n51) r12
            en0 r3 = new en0
            r8 = 0
            r5 = r9
            r6 = r10
            r7 = r11
            r3.<init>(r4, r5, r6, r7, r8)
            r0.q = r4
            r0.t = r2
            java.lang.Object r9 = r12.b(r3, r0)
            ri0 r10 = defpackage.ri0.n
            if (r9 != r10) goto L54
            return r10
        L54:
            r9 = r4
        L55:
            int r9 = r9.n
            java.lang.Integer r10 = new java.lang.Integer
            r10.<init>(r9)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fn0.k(java.lang.Object, boolean, fh0):java.lang.Object");
    }
}
