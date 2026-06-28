package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class r12 implements ic3, fc3 {
    public final jc3 n;
    public final fc3 o;
    public final lg2 p;

    public r12(ic3 ic3Var, Map map, fc3 fc3Var) {
        v vVar = new v(15, ic3Var);
        is3 is3Var = kc3.a;
        this.n = new jc3(map, vVar);
        this.o = fc3Var;
        lg2 lg2Var = ud3.a;
        this.p = new lg2();
    }

    @Override // defpackage.ic3
    public final hc3 a(String str, ne1 ne1Var) {
        return this.n.a(str, ne1Var);
    }

    @Override // defpackage.ic3
    public final boolean b(Object obj) {
        return this.n.b(obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0042  */
    @Override // defpackage.ic3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map c() {
        /*
            r14 = this;
            lg2 r0 = r14.p
            java.lang.Object[] r1 = r0.b
            long[] r0 = r0.a
            int r2 = r0.length
            int r2 = r2 + (-2)
            if (r2 < 0) goto L47
            r3 = 0
            r4 = r3
        Ld:
            r5 = r0[r4]
            long r7 = ~r5
            r9 = 7
            long r7 = r7 << r9
            long r7 = r7 & r5
            r9 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r7 = r7 & r9
            int r7 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r7 == 0) goto L42
            int r7 = r4 - r2
            int r7 = ~r7
            int r7 = r7 >>> 31
            r8 = 8
            int r7 = 8 - r7
            r9 = r3
        L27:
            if (r9 >= r7) goto L40
            r10 = 255(0xff, double:1.26E-321)
            long r10 = r10 & r5
            r12 = 128(0x80, double:6.32E-322)
            int r10 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r10 >= 0) goto L3c
            int r10 = r4 << 3
            int r10 = r10 + r9
            r10 = r1[r10]
            fc3 r11 = r14.o
            r11.f(r10)
        L3c:
            long r5 = r5 >> r8
            int r9 = r9 + 1
            goto L27
        L40:
            if (r7 != r8) goto L47
        L42:
            if (r4 == r2) goto L47
            int r4 = r4 + 1
            goto Ld
        L47:
            jc3 r14 = r14.n
            java.util.Map r14 = r14.c()
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.r12.c():java.util.Map");
    }

    @Override // defpackage.ic3
    public final Object d(String str) {
        return this.n.d(str);
    }

    @Override // defpackage.fc3
    public final void e(Object obj, ka0 ka0Var, ag1 ag1Var, int i) {
        int i2;
        ag1Var.X(-858296452);
        if ((i & 6) == 0) {
            i2 = (ag1Var.h(obj) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= ag1Var.h(ka0Var) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= ag1Var.h(this) ? 256 : 128;
        }
        if (ag1Var.N(i2 & 1, (i2 & 147) != 146)) {
            this.o.e(obj, ka0Var, ag1Var, i2 & 126);
            boolean zH = ag1Var.h(this) | ag1Var.h(obj);
            Object objK = ag1Var.K();
            if (zH || objK == rb0.a) {
                objK = new m(11, this, obj);
                ag1Var.g0(objK);
            }
            zf5.a(obj, (pe1) objK, ag1Var);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new ha0((fc3) this, obj, ka0Var, i, 2);
        }
    }

    @Override // defpackage.fc3
    public final void f(Object obj) {
        this.o.f(obj);
    }
}
