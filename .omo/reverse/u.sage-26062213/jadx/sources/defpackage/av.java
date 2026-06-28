package defpackage;

import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class av extends e1 implements vm1 {
    public kv n;
    public final g03 o;
    public final int p;
    public final String q;
    public xl1 r;
    public final z01 s;
    public final Locale t;

    public av(kv kvVar, z01 z01Var, Locale locale) {
        this.n = kvVar;
        this.o = kvVar.n;
        this.p = kvVar.o;
        this.q = kvVar.p;
        this.s = z01Var;
        this.t = locale;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x004d  */
    @Override // defpackage.vm1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.kv b() {
        /*
            r7 = this;
            kv r0 = r7.n
            if (r0 != 0) goto L53
            kv r0 = new kv
            g03 r1 = r7.o
            if (r1 == 0) goto Lb
            goto Ld
        Lb:
            dn1 r1 = defpackage.dn1.s
        Ld:
            int r2 = r7.p
            java.lang.String r3 = r7.q
            if (r3 == 0) goto L14
            goto L4e
        L14:
            z01 r3 = r7.s
            r4 = 0
            if (r3 == 0) goto L4d
            java.util.Locale r3 = r7.t
            if (r3 == 0) goto L1e
            goto L21
        L1e:
            java.util.Locale.getDefault()
        L21:
            r3 = 100
            if (r2 < r3) goto L2b
            r3 = 600(0x258, float:8.41E-43)
            if (r2 >= r3) goto L2b
            r3 = 1
            goto L2c
        L2b:
            r3 = 0
        L2c:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r6 = "Unknown category for status code "
            r5.<init>(r6)
            r5.append(r2)
            java.lang.String r5 = r5.toString()
            defpackage.w80.l(r5, r3)
            int r3 = r2 / 100
            int r5 = r3 * 100
            int r5 = r2 - r5
            java.lang.String[][] r6 = defpackage.z01.b
            r3 = r6[r3]
            int r6 = r3.length
            if (r6 <= r5) goto L4d
            r3 = r3[r5]
            goto L4e
        L4d:
            r3 = r4
        L4e:
            r0.<init>(r1, r2, r3)
            r7.n = r0
        L53:
            kv r7 = r7.n
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.av.b():kv");
    }

    @Override // defpackage.vm1
    public final xl1 getEntity() {
        return this.r;
    }

    @Override // defpackage.im1
    public final g03 getProtocolVersion() {
        return this.o;
    }

    @Override // defpackage.vm1
    public final void setEntity(xl1 xl1Var) {
        this.r = xl1Var;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(b());
        sb.append(' ');
        sb.append(this.headergroup);
        if (this.r != null) {
            sb.append(' ');
            sb.append(this.r);
        }
        return sb.toString();
    }

    public av(g03 g03Var, int i) {
        w80.J(i, "Status code");
        this.n = null;
        this.o = g03Var;
        this.p = i;
        this.q = null;
        this.s = null;
        this.t = null;
    }
}
