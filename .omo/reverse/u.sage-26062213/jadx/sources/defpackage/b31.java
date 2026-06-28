package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class b31 extends g34 {
    public volatile g34 a;
    public final /* synthetic */ boolean b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ pi1 d;
    public final /* synthetic */ q44 e;
    public final /* synthetic */ c31 f;

    public b31(c31 c31Var, boolean z, boolean z2, pi1 pi1Var, q44 q44Var) {
        this.f = c31Var;
        this.b = z;
        this.c = z2;
        this.d = pi1Var;
        this.e = q44Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0083 A[SYNTHETIC] */
    @Override // defpackage.g34
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(defpackage.ww1 r12) throws java.io.IOException {
        /*
            r11 = this;
            boolean r0 = r11.b
            r1 = 0
            if (r0 == 0) goto L9
            r12.y0()
            return r1
        L9:
            g34 r0 = r11.a
            if (r0 != 0) goto L92
            pi1 r0 = r11.d
            c31 r2 = r11.f
            q44 r3 = r11.e
            iv1 r4 = r0.d
            r4.getClass()
            java.util.concurrent.ConcurrentHashMap r5 = r4.o
            hv1 r6 = defpackage.iv1.p
            r7 = 1
            if (r2 != r6) goto L20
            goto L61
        L20:
            java.lang.Class r6 = r3.a
            java.lang.Object r8 = r5.get(r6)
            h34 r8 = (defpackage.h34) r8
            if (r8 == 0) goto L2d
            if (r8 != r2) goto L62
            goto L61
        L2d:
            java.lang.Class<gv1> r8 = defpackage.gv1.class
            java.lang.annotation.Annotation r8 = r6.getAnnotation(r8)
            gv1 r8 = (defpackage.gv1) r8
            if (r8 != 0) goto L38
            goto L62
        L38:
            java.lang.Class r8 = r8.value()
            java.lang.Class<h34> r9 = defpackage.h34.class
            boolean r9 = r9.isAssignableFrom(r8)
            if (r9 != 0) goto L45
            goto L62
        L45:
            gw4 r9 = r4.n
            q44 r10 = new q44
            r10.<init>(r8)
            on2 r8 = r9.y(r10, r7)
            java.lang.Object r8 = r8.d()
            h34 r8 = (defpackage.h34) r8
            java.lang.Object r5 = r5.putIfAbsent(r6, r8)
            h34 r5 = (defpackage.h34) r5
            if (r5 == 0) goto L5f
            r8 = r5
        L5f:
            if (r8 != r2) goto L62
        L61:
            r2 = r4
        L62:
            java.util.List r4 = r0.e
            java.util.Iterator r4 = r4.iterator()
            r5 = 0
        L69:
            boolean r6 = r4.hasNext()
            if (r6 == 0) goto L83
            java.lang.Object r6 = r4.next()
            h34 r6 = (defpackage.h34) r6
            if (r5 != 0) goto L7b
            if (r6 != r2) goto L69
            r5 = r7
            goto L69
        L7b:
            g34 r6 = r6.a(r0, r3)
            if (r6 == 0) goto L69
            r0 = r6
            goto L89
        L83:
            if (r5 != 0) goto L8c
            g34 r0 = r0.b(r3)
        L89:
            r11.a = r0
            goto L92
        L8c:
            java.lang.String r11 = "GSON cannot serialize or deserialize "
            defpackage.p61.i(r3, r11)
            return r1
        L92:
            java.lang.Object r11 = r0.b(r12)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.b31.b(ww1):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0082 A[SYNTHETIC] */
    @Override // defpackage.g34
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(defpackage.bx1 r11, java.lang.Object r12) throws java.io.IOException {
        /*
            r10 = this;
            boolean r0 = r10.c
            if (r0 == 0) goto L8
            r11.L()
            return
        L8:
            g34 r0 = r10.a
            if (r0 != 0) goto L91
            pi1 r0 = r10.d
            c31 r1 = r10.f
            q44 r2 = r10.e
            iv1 r3 = r0.d
            r3.getClass()
            java.util.concurrent.ConcurrentHashMap r4 = r3.o
            hv1 r5 = defpackage.iv1.p
            r6 = 1
            if (r1 != r5) goto L1f
            goto L60
        L1f:
            java.lang.Class r5 = r2.a
            java.lang.Object r7 = r4.get(r5)
            h34 r7 = (defpackage.h34) r7
            if (r7 == 0) goto L2c
            if (r7 != r1) goto L61
            goto L60
        L2c:
            java.lang.Class<gv1> r7 = defpackage.gv1.class
            java.lang.annotation.Annotation r7 = r5.getAnnotation(r7)
            gv1 r7 = (defpackage.gv1) r7
            if (r7 != 0) goto L37
            goto L61
        L37:
            java.lang.Class r7 = r7.value()
            java.lang.Class<h34> r8 = defpackage.h34.class
            boolean r8 = r8.isAssignableFrom(r7)
            if (r8 != 0) goto L44
            goto L61
        L44:
            gw4 r8 = r3.n
            q44 r9 = new q44
            r9.<init>(r7)
            on2 r7 = r8.y(r9, r6)
            java.lang.Object r7 = r7.d()
            h34 r7 = (defpackage.h34) r7
            java.lang.Object r4 = r4.putIfAbsent(r5, r7)
            h34 r4 = (defpackage.h34) r4
            if (r4 == 0) goto L5e
            r7 = r4
        L5e:
            if (r7 != r1) goto L61
        L60:
            r1 = r3
        L61:
            java.util.List r3 = r0.e
            java.util.Iterator r3 = r3.iterator()
            r4 = 0
        L68:
            boolean r5 = r3.hasNext()
            if (r5 == 0) goto L82
            java.lang.Object r5 = r3.next()
            h34 r5 = (defpackage.h34) r5
            if (r4 != 0) goto L7a
            if (r5 != r1) goto L68
            r4 = r6
            goto L68
        L7a:
            g34 r5 = r5.a(r0, r2)
            if (r5 == 0) goto L68
            r0 = r5
            goto L88
        L82:
            if (r4 != 0) goto L8b
            g34 r0 = r0.b(r2)
        L88:
            r10.a = r0
            goto L91
        L8b:
            java.lang.String r10 = "GSON cannot serialize or deserialize "
            defpackage.p61.i(r2, r10)
            return
        L91:
            r0.c(r11, r12)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.b31.c(bx1, java.lang.Object):void");
    }
}
