package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pf0 implements qn3, ld2 {
    public long b;
    public ArrayList c;

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // defpackage.qn3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(defpackage.dh0 r7) throws java.lang.Throwable {
        /*
            r6 = this;
            boolean r0 = r7 instanceof defpackage.of0
            if (r0 == 0) goto L13
            r0 = r7
            of0 r0 = (defpackage.of0) r0
            int r1 = r0.t
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.t = r1
            goto L1a
        L13:
            of0 r0 = new of0
            fh0 r7 = (defpackage.fh0) r7
            r0.<init>(r6, r7)
        L1a:
            java.lang.Object r7 = r0.r
            int r1 = r0.t
            r2 = 1
            if (r1 == 0) goto L32
            if (r1 != r2) goto L2b
            w33 r0 = r0.q
            defpackage.gg4.T(r7)     // Catch: java.lang.Throwable -> L29
            goto L63
        L29:
            r7 = move-exception
            goto L72
        L2b:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r6)
            r6 = 0
            return r6
        L32:
            defpackage.gg4.T(r7)
            long r3 = r6.b
            boolean r7 = defpackage.mf0.k(r3)
            if (r7 == 0) goto L7d
            w33 r7 = new w33
            r7.<init>()
            r0.q = r7     // Catch: java.lang.Throwable -> L6e
            r0.t = r2     // Catch: java.lang.Throwable -> L6e
            o20 r1 = new o20     // Catch: java.lang.Throwable -> L6e
            dh0 r0 = defpackage.dm0.A(r0)     // Catch: java.lang.Throwable -> L6e
            r1.<init>(r2, r0)     // Catch: java.lang.Throwable -> L6e
            r1.x()     // Catch: java.lang.Throwable -> L6e
            r7.n = r1     // Catch: java.lang.Throwable -> L6e
            java.util.ArrayList r0 = r6.c     // Catch: java.lang.Throwable -> L6e
            r0.add(r1)     // Catch: java.lang.Throwable -> L6e
            java.lang.Object r0 = r1.v()     // Catch: java.lang.Throwable -> L6e
            ri0 r1 = defpackage.ri0.n
            if (r0 != r1) goto L62
            return r1
        L62:
            r0 = r7
        L63:
            java.util.ArrayList r7 = r6.c
            java.lang.Object r0 = r0.n
            defpackage.n44.O(r7)
            r7.remove(r0)
            goto L7d
        L6e:
            r0 = move-exception
            r5 = r0
            r0 = r7
            r7 = r5
        L72:
            java.util.ArrayList r6 = r6.c
            java.lang.Object r0 = r0.n
            defpackage.n44.O(r6)
            r6.remove(r0)
            throw r7
        L7d:
            long r6 = r6.b
            ln3 r0 = new ln3
            int r1 = defpackage.mf0.h(r6)
            bu0 r2 = defpackage.bu0.a
            r3 = 2147483647(0x7fffffff, float:NaN)
            if (r1 == r3) goto L95
            defpackage.qn0.c(r1)
            au0 r4 = new au0
            r4.<init>(r1)
            goto L96
        L95:
            r4 = r2
        L96:
            int r6 = defpackage.mf0.g(r6)
            if (r6 == r3) goto La4
            defpackage.qn0.c(r6)
            au0 r2 = new au0
            r2.<init>(r6)
        La4:
            r0.<init>(r4, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pf0.e(dh0):java.lang.Object");
    }

    public final eb2 f(gb2 gb2Var, ya2 ya2Var, long j) {
        g(j);
        dv2 dv2VarE = ya2Var.e(j);
        return gb2Var.e0(dv2VarE.n, dv2VarE.o, h01.n, new e0(dv2VarE, 3));
    }

    public final void g(long j) {
        this.b = j;
        if (mf0.k(j)) {
            return;
        }
        ArrayList arrayList = this.c;
        if (arrayList.isEmpty()) {
            return;
        }
        this.c = new ArrayList();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((dh0) obj).g(t64.a);
        }
    }
}
