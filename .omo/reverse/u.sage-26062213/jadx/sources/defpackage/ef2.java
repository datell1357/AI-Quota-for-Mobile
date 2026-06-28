package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ef2 {
    public final kg2 a;

    public static final Object a(kg2 kg2Var) {
        Object objG = kg2Var.g(null);
        if (objG == null) {
            return null;
        }
        if (!(objG instanceof dg2)) {
            kg2Var.k(null);
            return objG;
        }
        dg2 dg2Var = (dg2) objG;
        if (dg2Var.h()) {
            q73.l("List is empty.");
            return null;
        }
        int i = dg2Var.b - 1;
        Object objF = dg2Var.f(i);
        dg2Var.k(i);
        objF.getClass();
        if (dg2Var.h()) {
            kg2Var.k(null);
        }
        if (dg2Var.b == 1) {
            kg2Var.m(null, dg2Var.e());
        }
        return objF;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final defpackage.dg2 b(defpackage.kg2 r14) {
        /*
            boolean r0 = r14.i()
            if (r0 == 0) goto Lc
            dg2 r14 = defpackage.tn2.b
            r14.getClass()
            return r14
        Lc:
            dg2 r0 = new dg2
            r0.<init>()
            java.lang.Object[] r1 = r14.c
            long[] r14 = r14.a
            int r2 = r14.length
            int r2 = r2 + (-2)
            if (r2 < 0) goto L61
            r3 = 0
            r4 = r3
        L1c:
            r5 = r14[r4]
            long r7 = ~r5
            r9 = 7
            long r7 = r7 << r9
            long r7 = r7 & r5
            r9 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r7 = r7 & r9
            int r7 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r7 == 0) goto L5c
            int r7 = r4 - r2
            int r7 = ~r7
            int r7 = r7 >>> 31
            r8 = 8
            int r7 = 8 - r7
            r9 = r3
        L36:
            if (r9 >= r7) goto L5a
            r10 = 255(0xff, double:1.26E-321)
            long r10 = r10 & r5
            r12 = 128(0x80, double:6.32E-322)
            int r10 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r10 >= 0) goto L56
            int r10 = r4 << 3
            int r10 = r10 + r9
            r10 = r1[r10]
            boolean r11 = r10 instanceof defpackage.dg2
            if (r11 == 0) goto L50
            dg2 r10 = (defpackage.dg2) r10
            r0.b(r10)
            goto L56
        L50:
            r10.getClass()
            r0.a(r10)
        L56:
            long r5 = r5 >> r8
            int r9 = r9 + 1
            goto L36
        L5a:
            if (r7 != r8) goto L61
        L5c:
            if (r4 == r2) goto L61
            int r4 = r4 + 1
            goto L1c
        L61:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ef2.b(kg2):dg2");
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ef2) {
            return this.a.equals(((ef2) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "MultiValueMap(map=" + this.a + ")";
    }
}
