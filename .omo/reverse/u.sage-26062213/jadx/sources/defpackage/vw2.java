package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vw2 implements d14, u13 {
    public final oe0 a;
    public final boolean b;
    public final vh c;
    public final AtomicBoolean d;

    public vw2(oe0 oe0Var, boolean z) {
        oe0Var.getClass();
        this.a = oe0Var;
        this.b = z;
        this.c = new vh();
        this.d = new AtomicBoolean(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // defpackage.nw2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.lang.String r6, defpackage.pe1 r7, defpackage.fh0 r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof defpackage.uw2
            if (r0 == 0) goto L13
            r0 = r8
            uw2 r0 = (defpackage.uw2) r0
            int r1 = r0.w
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.w = r1
            goto L18
        L13:
            uw2 r0 = new uw2
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.f365u
            int r1 = r0.w
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L36
            if (r1 != r2) goto L30
            oe0 r5 = r0.t
            pe1 r7 = r0.s
            java.lang.String r6 = r0.r
            vw2 r0 = r0.q
            defpackage.gg4.T(r8)
            r8 = r5
            r5 = r0
            goto L6d
        L30:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r5)
            return r3
        L36:
            defpackage.gg4.T(r8)
            java.util.concurrent.atomic.AtomicBoolean r8 = r5.d
            boolean r8 = r8.get()
            r1 = 21
            if (r8 != 0) goto L96
            hi0 r8 = r0.o
            r8.getClass()
            bx3 r4 = defpackage.zd0.o
            fi0 r8 = r8.K(r4)
            zd0 r8 = (defpackage.zd0) r8
            if (r8 == 0) goto L90
            vw2 r8 = r8.n
            if (r8 != r5) goto L90
            r0.q = r5
            r0.r = r6
            r0.s = r7
            oe0 r8 = r5.a
            r0.t = r8
            r0.w = r2
            fh2 r1 = r8.o
            java.lang.Object r0 = r1.j(r0)
            ri0 r1 = defpackage.ri0.n
            if (r0 != r1) goto L6d
            return r1
        L6d:
            ow2 r0 = new ow2     // Catch: java.lang.Throwable -> L83
            oe0 r1 = r5.a     // Catch: java.lang.Throwable -> L83
            pb3 r6 = r1.k0(r6)     // Catch: java.lang.Throwable -> L83
            r0.<init>(r5, r6)     // Catch: java.lang.Throwable -> L83
            java.lang.Object r5 = r7.k(r0)     // Catch: java.lang.Throwable -> L85
            defpackage.is0.r(r0, r3)     // Catch: java.lang.Throwable -> L83
            r8.b(r3)
            return r5
        L83:
            r5 = move-exception
            goto L8c
        L85:
            r5 = move-exception
            throw r5     // Catch: java.lang.Throwable -> L87
        L87:
            r6 = move-exception
            defpackage.is0.r(r0, r5)     // Catch: java.lang.Throwable -> L83
            throw r6     // Catch: java.lang.Throwable -> L83
        L8c:
            r8.b(r3)
            throw r5
        L90:
            java.lang.String r5 = "Attempted to use connection on a different coroutine"
            defpackage.ix.U(r1, r5)
            throw r3
        L96:
            java.lang.String r5 = "Connection is recycled"
            defpackage.ix.U(r1, r5)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.vw2.a(java.lang.String, pe1, fh0):java.lang.Object");
    }

    @Override // defpackage.u13
    public final jb3 b() {
        return this.a;
    }

    @Override // defpackage.d14
    public final Object c(bv3 bv3Var) {
        if (this.d.get()) {
            ix.U(21, "Connection is recycled");
            throw null;
        }
        hi0 hi0Var = bv3Var.o;
        hi0Var.getClass();
        zd0 zd0Var = (zd0) hi0Var.K(zd0.o);
        if (zd0Var != null && zd0Var.n == this) {
            return Boolean.valueOf(!this.c.isEmpty());
        }
        ix.U(21, "Attempted to use connection on a different coroutine");
        throw null;
    }

    @Override // defpackage.d14
    public final Object d(c14 c14Var, df1 df1Var, bv3 bv3Var) {
        if (this.d.get()) {
            ix.U(21, "Connection is recycled");
            throw null;
        }
        hi0 hi0Var = bv3Var.o;
        hi0Var.getClass();
        zd0 zd0Var = (zd0) hi0Var.K(zd0.o);
        if (zd0Var != null && zd0Var.n == this) {
            return g(c14Var, df1Var, bv3Var);
        }
        ix.U(21, "Attempted to use connection on a different coroutine");
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(defpackage.c14 r7, defpackage.fh0 r8) {
        /*
            r6 = this;
            java.lang.String r0 = "SAVEPOINT '"
            boolean r1 = r8 instanceof defpackage.rw2
            if (r1 == 0) goto L15
            r1 = r8
            rw2 r1 = (defpackage.rw2) r1
            int r2 = r1.v
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.v = r2
            goto L1a
        L15:
            rw2 r1 = new rw2
            r1.<init>(r6, r8)
        L1a:
            java.lang.Object r8 = r1.t
            int r2 = r1.v
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L36
            if (r2 != r3) goto L30
            oe0 r6 = r1.s
            c14 r7 = r1.r
            vw2 r1 = r1.q
            defpackage.gg4.T(r8)
            r8 = r6
            r6 = r1
            goto L4e
        L30:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r6)
            return r4
        L36:
            defpackage.gg4.T(r8)
            r1.q = r6
            r1.r = r7
            oe0 r8 = r6.a
            r1.s = r8
            r1.v = r3
            fh2 r2 = r8.o
            java.lang.Object r1 = r2.j(r1)
            ri0 r2 = defpackage.ri0.n
            if (r1 != r2) goto L4e
            return r2
        L4e:
            vh r1 = r6.c     // Catch: java.lang.Throwable -> L6b
            oe0 r6 = r6.a     // Catch: java.lang.Throwable -> L6b
            int r2 = r1.p     // Catch: java.lang.Throwable -> L6b
            boolean r5 = r1.isEmpty()     // Catch: java.lang.Throwable -> L6b
            if (r5 == 0) goto L80
            int r7 = r7.ordinal()     // Catch: java.lang.Throwable -> L6b
            if (r7 == 0) goto L7a
            if (r7 == r3) goto L74
            r0 = 2
            if (r7 != r0) goto L6d
            java.lang.String r7 = "BEGIN EXCLUSIVE TRANSACTION"
            defpackage.ix.r(r6, r7)     // Catch: java.lang.Throwable -> L6b
            goto L94
        L6b:
            r6 = move-exception
            goto La2
        L6d:
            v00 r6 = new v00     // Catch: java.lang.Throwable -> L6b
            r7 = 7
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L6b
            throw r6     // Catch: java.lang.Throwable -> L6b
        L74:
            java.lang.String r7 = "BEGIN IMMEDIATE TRANSACTION"
            defpackage.ix.r(r6, r7)     // Catch: java.lang.Throwable -> L6b
            goto L94
        L7a:
            java.lang.String r7 = "BEGIN DEFERRED TRANSACTION"
            defpackage.ix.r(r6, r7)     // Catch: java.lang.Throwable -> L6b
            goto L94
        L80:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6b
            r7.<init>(r0)     // Catch: java.lang.Throwable -> L6b
            r7.append(r2)     // Catch: java.lang.Throwable -> L6b
            r0 = 39
            r7.append(r0)     // Catch: java.lang.Throwable -> L6b
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> L6b
            defpackage.ix.r(r6, r7)     // Catch: java.lang.Throwable -> L6b
        L94:
            qw2 r6 = new qw2     // Catch: java.lang.Throwable -> L6b
            r6.<init>(r2)     // Catch: java.lang.Throwable -> L6b
            r1.addLast(r6)     // Catch: java.lang.Throwable -> L6b
            t64 r6 = defpackage.t64.a     // Catch: java.lang.Throwable -> L6b
            r8.b(r4)
            return r6
        La2:
            r8.b(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.vw2.e(c14, fh0):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(boolean r7, defpackage.fh0 r8) {
        /*
            r6 = this;
            java.lang.String r0 = "ROLLBACK TRANSACTION TO SAVEPOINT '"
            java.lang.String r1 = "RELEASE SAVEPOINT '"
            boolean r2 = r8 instanceof defpackage.sw2
            if (r2 == 0) goto L17
            r2 = r8
            sw2 r2 = (defpackage.sw2) r2
            int r3 = r2.v
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L17
            int r3 = r3 - r4
            r2.v = r3
            goto L1c
        L17:
            sw2 r2 = new sw2
            r2.<init>(r6, r8)
        L1c:
            java.lang.Object r8 = r2.t
            int r3 = r2.v
            r4 = 1
            r5 = 0
            if (r3 == 0) goto L38
            if (r3 != r4) goto L32
            boolean r7 = r2.s
            oe0 r6 = r2.r
            vw2 r2 = r2.q
            defpackage.gg4.T(r8)
            r8 = r6
            r6 = r2
            goto L50
        L32:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r6)
            return r5
        L38:
            defpackage.gg4.T(r8)
            r2.q = r6
            oe0 r8 = r6.a
            r2.r = r8
            r2.s = r7
            r2.v = r4
            fh2 r3 = r8.o
            java.lang.Object r2 = r3.j(r2)
            ri0 r3 = defpackage.ri0.n
            if (r2 != r3) goto L50
            return r3
        L50:
            vh r2 = r6.c     // Catch: java.lang.Throwable -> L73
            oe0 r6 = r6.a     // Catch: java.lang.Throwable -> L73
            boolean r3 = r2.isEmpty()     // Catch: java.lang.Throwable -> L73
            if (r3 != 0) goto Lb0
            java.lang.Object r3 = defpackage.o70.u0(r2)     // Catch: java.lang.Throwable -> L73
            qw2 r3 = (defpackage.qw2) r3     // Catch: java.lang.Throwable -> L73
            r4 = 39
            if (r7 == 0) goto L8a
            r3.getClass()     // Catch: java.lang.Throwable -> L73
            boolean r7 = r2.isEmpty()     // Catch: java.lang.Throwable -> L73
            if (r7 == 0) goto L75
            java.lang.String r7 = "END TRANSACTION"
            defpackage.ix.r(r6, r7)     // Catch: java.lang.Throwable -> L73
            goto Laa
        L73:
            r6 = move-exception
            goto Lb8
        L75:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L73
            r7.<init>(r1)     // Catch: java.lang.Throwable -> L73
            int r0 = r3.a     // Catch: java.lang.Throwable -> L73
            r7.append(r0)     // Catch: java.lang.Throwable -> L73
            r7.append(r4)     // Catch: java.lang.Throwable -> L73
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> L73
            defpackage.ix.r(r6, r7)     // Catch: java.lang.Throwable -> L73
            goto Laa
        L8a:
            boolean r7 = r2.isEmpty()     // Catch: java.lang.Throwable -> L73
            if (r7 == 0) goto L96
            java.lang.String r7 = "ROLLBACK TRANSACTION"
            defpackage.ix.r(r6, r7)     // Catch: java.lang.Throwable -> L73
            goto Laa
        L96:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L73
            r7.<init>(r0)     // Catch: java.lang.Throwable -> L73
            int r0 = r3.a     // Catch: java.lang.Throwable -> L73
            r7.append(r0)     // Catch: java.lang.Throwable -> L73
            r7.append(r4)     // Catch: java.lang.Throwable -> L73
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> L73
            defpackage.ix.r(r6, r7)     // Catch: java.lang.Throwable -> L73
        Laa:
            t64 r6 = defpackage.t64.a     // Catch: java.lang.Throwable -> L73
            r8.b(r5)
            return r6
        Lb0:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L73
            java.lang.String r7 = "Not in a transaction"
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L73
            throw r6     // Catch: java.lang.Throwable -> L73
        Lb8:
            r8.b(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.vw2.f(boolean, fh0):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object g(defpackage.c14 r11, defpackage.df1 r12, defpackage.fh0 r13) throws java.lang.Throwable {
        /*
            r10 = this;
            boolean r0 = r13 instanceof defpackage.tw2
            if (r0 == 0) goto L13
            r0 = r13
            tw2 r0 = (defpackage.tw2) r0
            int r1 = r0.v
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.v = r1
            goto L18
        L13:
            tw2 r0 = new tw2
            r0.<init>(r10, r13)
        L18:
            java.lang.Object r13 = r0.t
            int r1 = r0.v
            r2 = 0
            r3 = 0
            r4 = 5
            r5 = 3
            r6 = 2
            r7 = 1
            ri0 r8 = defpackage.ri0.n
            if (r1 == 0) goto L69
            if (r1 == r7) goto L5c
            if (r1 == r6) goto L4d
            if (r1 == r5) goto L47
            r10 = 4
            if (r1 == r10) goto L47
            if (r1 == r4) goto L37
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r10)
            return r2
        L37:
            java.io.Serializable r10 = r0.r
            java.lang.Throwable r10 = (java.lang.Throwable) r10
            java.lang.Object r11 = r0.q
            java.lang.Throwable r11 = (java.lang.Throwable) r11
            defpackage.gg4.T(r13)     // Catch: android.database.SQLException -> L44
            goto Lc0
        L44:
            r12 = move-exception
            goto Lbb
        L47:
            java.lang.Object r10 = r0.q
            defpackage.gg4.T(r13)
            return r10
        L4d:
            int r10 = r0.s
            java.lang.Object r11 = r0.q
            vw2 r11 = (defpackage.vw2) r11
            defpackage.gg4.T(r13)     // Catch: java.lang.Throwable -> L57
            goto L96
        L57:
            r10 = move-exception
            r9 = r11
            r11 = r10
            r10 = r9
            goto La6
        L5c:
            java.io.Serializable r10 = r0.r
            r12 = r10
            df1 r12 = (defpackage.df1) r12
            java.lang.Object r10 = r0.q
            vw2 r10 = (defpackage.vw2) r10
            defpackage.gg4.T(r13)
            goto L80
        L69:
            defpackage.gg4.T(r13)
            if (r11 != 0) goto L70
            c14 r11 = defpackage.c14.n
        L70:
            r0.q = r10
            r13 = r12
            java.io.Serializable r13 = (java.io.Serializable) r13
            r0.r = r13
            r0.v = r7
            java.lang.Object r11 = r10.e(r11, r0)
            if (r11 != r8) goto L80
            goto Lb4
        L80:
            pw2 r11 = new pw2     // Catch: java.lang.Throwable -> La5
            r11.<init>(r3, r10)     // Catch: java.lang.Throwable -> La5
            r0.q = r10     // Catch: java.lang.Throwable -> La5
            r0.r = r2     // Catch: java.lang.Throwable -> La5
            r0.s = r7     // Catch: java.lang.Throwable -> La5
            r0.v = r6     // Catch: java.lang.Throwable -> La5
            java.lang.Object r13 = r12.f(r11, r0)     // Catch: java.lang.Throwable -> La5
            if (r13 != r8) goto L94
            goto Lb4
        L94:
            r11 = r10
            r10 = r7
        L96:
            if (r10 == 0) goto L99
            r3 = r7
        L99:
            r0.q = r13
            r0.v = r5
            java.lang.Object r10 = r11.f(r3, r0)
            if (r10 != r8) goto La4
            goto Lb4
        La4:
            return r13
        La5:
            r11 = move-exception
        La6:
            throw r11     // Catch: java.lang.Throwable -> La7
        La7:
            r12 = move-exception
            r0.q = r11     // Catch: android.database.SQLException -> Lb7
            r0.r = r12     // Catch: android.database.SQLException -> Lb7
            r0.v = r4     // Catch: android.database.SQLException -> Lb7
            java.lang.Object r10 = r10.f(r3, r0)     // Catch: android.database.SQLException -> Lb7
            if (r10 != r8) goto Lb5
        Lb4:
            return r8
        Lb5:
            r10 = r12
            goto Lc0
        Lb7:
            r10 = move-exception
            r9 = r12
            r12 = r10
            r10 = r9
        Lbb:
            if (r11 == 0) goto Lc1
            defpackage.on4.j(r11, r12)
        Lc0:
            throw r10
        Lc1:
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.vw2.g(c14, df1, fh0):java.lang.Object");
    }
}
