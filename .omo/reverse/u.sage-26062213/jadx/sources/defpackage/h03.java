package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class h03 {
    public final w12 a;

    public h03(ne1 ne1Var) {
        this.a = new w12(ne1Var);
    }

    public abstract j03 a(Object obj);

    public x94 b() {
        return this.a;
    }

    public final j03 c(pe1 pe1Var) {
        return new j03(this, null, false, null, pe1Var, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0034 A[PHI: r7
  0x0034: PHI (r7v2 java.lang.Object) = (r7v6 java.lang.Object), (r7v7 java.lang.Object) binds: [B:18:0x003e, B:13:0x0032] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.x94 d(defpackage.j03 r6, defpackage.x94 r7) {
        /*
            r5 = this;
            pe1 r5 = r6.d
            java.lang.Object r0 = r6.f
            boolean r1 = r6.e
            boolean r2 = r7 instanceof defpackage.hy0
            r3 = 0
            if (r2 == 0) goto L1a
            if (r1 == 0) goto L41
            r3 = r7
            hy0 r3 = (defpackage.hy0) r3
            ws2 r7 = r3.a
            java.lang.Object r2 = r6.a()
            r7.setValue(r2)
            goto L41
        L1a:
            boolean r2 = r7 instanceof defpackage.js3
            if (r2 == 0) goto L36
            boolean r2 = r6.b
            if (r2 != 0) goto L24
            if (r0 == 0) goto L41
        L24:
            if (r1 != 0) goto L41
            java.lang.Object r2 = r6.a()
            js3 r7 = (defpackage.js3) r7
            java.lang.Object r4 = r7.a
            boolean r2 = defpackage.nt1.g(r2, r4)
            if (r2 == 0) goto L41
        L34:
            r3 = r7
            goto L41
        L36:
            boolean r2 = r7 instanceof defpackage.mc0
            if (r2 == 0) goto L41
            mc0 r7 = (defpackage.mc0) r7
            pe1 r2 = r7.a
            if (r5 != r2) goto L41
            goto L34
        L41:
            if (r3 != 0) goto L68
            if (r1 == 0) goto L56
            hy0 r5 = new hy0
            w13 r6 = r6.c
            if (r6 != 0) goto L4d
            w13 r6 = defpackage.w13.S
        L4d:
            ws2 r7 = new ws2
            r7.<init>(r0, r6)
            r5.<init>(r7)
            return r5
        L56:
            if (r5 == 0) goto L5e
            mc0 r6 = new mc0
            r6.<init>(r5)
            return r6
        L5e:
            js3 r5 = new js3
            java.lang.Object r6 = r6.a()
            r5.<init>(r6)
            return r5
        L68:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.h03.d(j03, x94):x94");
    }
}
