package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class p30 implements qf1 {
    public final hi0 n;
    public final int o;
    public final vy p;

    public p30(hi0 hi0Var, int i, vy vyVar) {
        this.n = hi0Var;
        this.o = i;
        this.p = vyVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0015  */
    @Override // defpackage.qf1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.a81 a(defpackage.hi0 r5, int r6, defpackage.vy r7) {
        /*
            r4 = this;
            hi0 r0 = r4.n
            hi0 r5 = r5.F(r0)
            vy r1 = defpackage.vy.n
            vy r2 = r4.p
            int r3 = r4.o
            if (r7 == r1) goto Lf
            goto L26
        Lf:
            r7 = -3
            if (r3 != r7) goto L13
            goto L25
        L13:
            if (r6 != r7) goto L17
        L15:
            r6 = r3
            goto L25
        L17:
            r7 = -2
            if (r3 != r7) goto L1b
            goto L25
        L1b:
            if (r6 != r7) goto L1e
            goto L15
        L1e:
            int r6 = r6 + r3
            if (r6 < 0) goto L22
            goto L25
        L22:
            r6 = 2147483647(0x7fffffff, float:NaN)
        L25:
            r7 = r2
        L26:
            boolean r0 = defpackage.nt1.g(r5, r0)
            if (r0 == 0) goto L31
            if (r6 != r3) goto L31
            if (r7 != r2) goto L31
            return r4
        L31:
            p30 r4 = r4.e(r5, r6, r7)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.p30.a(hi0, int, vy):a81");
    }

    @Override // defpackage.a81
    public Object b(b81 b81Var, dh0 dh0Var) {
        Object objR = dm0.r(new p(b81Var, this, null, 7), dh0Var);
        return objR == ri0.n ? objR : t64.a;
    }

    public String c() {
        return null;
    }

    public abstract Object d(hz2 hz2Var, dh0 dh0Var);

    public abstract p30 e(hi0 hi0Var, int i, vy vyVar);

    public a81 f() {
        return null;
    }

    public n30 g(qi0 qi0Var) {
        int i = this.o;
        if (i == -3) {
            i = -2;
        }
        df1 nVar = new n(this, null, 6);
        hz2 hz2Var = new hz2(ix.F(qi0Var, this.n), ix.c(i, 4, this.p));
        hz2Var.s0(ti0.p, hz2Var, nVar);
        return hz2Var;
    }

    public String toString() {
        ArrayList arrayList = new ArrayList(4);
        String strC = c();
        if (strC != null) {
            arrayList.add(strC);
        }
        d01 d01Var = d01.n;
        hi0 hi0Var = this.n;
        if (hi0Var != d01Var) {
            arrayList.add("context=" + hi0Var);
        }
        int i = this.o;
        if (i != -3) {
            arrayList.add("capacity=" + i);
        }
        vy vyVar = vy.n;
        vy vyVar2 = this.p;
        if (vyVar2 != vyVar) {
            arrayList.add("onBufferOverflow=" + vyVar2);
        }
        return getClass().getSimpleName() + '[' + o70.n0(arrayList, ", ", null, null, null, 62) + ']';
    }
}
