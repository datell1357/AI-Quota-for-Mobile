package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gk3 {
    public final sk3 a;
    public final sk3 b;

    public gk3(sk3 sk3Var, sk3 sk3Var2) {
        sk3Var.getClass();
        sk3Var2.getClass();
        this.a = sk3Var;
        this.b = sk3Var2;
    }

    public final double a() {
        Double dB = this.a.b();
        if (dB != null) {
            double dDoubleValue = dB.doubleValue();
            if (0.0d <= dDoubleValue && dDoubleValue <= 1.0d) {
                return dDoubleValue;
            }
        }
        Double dB2 = this.b.b();
        if (dB2 != null) {
            double dDoubleValue2 = dB2.doubleValue();
            if (0.0d <= dDoubleValue2 && dDoubleValue2 <= 1.0d) {
                return dDoubleValue2;
            }
        }
        return 1.0d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x004b, code lost:
    
        if (r5.b.c(r0) == r4) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(defpackage.fh0 r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof defpackage.fk3
            if (r0 == 0) goto L13
            r0 = r6
            fk3 r0 = (defpackage.fk3) r0
            int r1 = r0.s
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.s = r1
            goto L18
        L13:
            fk3 r0 = new fk3
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.q
            int r1 = r0.s
            r2 = 2
            r3 = 1
            ri0 r4 = defpackage.ri0.n
            if (r1 == 0) goto L35
            if (r1 == r3) goto L31
            if (r1 != r2) goto L2a
            defpackage.gg4.T(r6)
            goto L4e
        L2a:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r5)
            r5 = 0
            return r5
        L31:
            defpackage.gg4.T(r6)
            goto L43
        L35:
            defpackage.gg4.T(r6)
            r0.s = r3
            sk3 r6 = r5.a
            java.lang.Object r6 = r6.c(r0)
            if (r6 != r4) goto L43
            goto L4d
        L43:
            r0.s = r2
            sk3 r5 = r5.b
            java.lang.Object r5 = r5.c(r0)
            if (r5 != r4) goto L4e
        L4d:
            return r4
        L4e:
            t64 r5 = defpackage.t64.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gk3.b(fh0):java.lang.Object");
    }
}
