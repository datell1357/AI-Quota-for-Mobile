package defpackage;

import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yf1 extends zb0 {
    public final long a;
    public final boolean b;
    public final boolean c;
    public HashSet d;
    public final lg2 e;
    public final ws2 f;
    public final /* synthetic */ ag1 g;

    public yf1(ag1 ag1Var, long j, boolean z, boolean z2, wu4 wu4Var) {
        this.g = ag1Var;
        this.a = j;
        this.b = z;
        this.c = z2;
        lg2 lg2Var = ud3.a;
        this.e = new lg2();
        this.f = new ws2(hu2.q, w13.P);
    }

    @Override // defpackage.zb0
    public final void a(ec0 ec0Var, df1 df1Var) {
        this.g.b.a(ec0Var, df1Var);
    }

    @Override // defpackage.zb0
    public final lg2 b(ec0 ec0Var, sm3 sm3Var, df1 df1Var) {
        return this.g.b.b(ec0Var, sm3Var, df1Var);
    }

    @Override // defpackage.zb0
    public final void c() {
        ag1 ag1Var = this.g;
        ag1Var.A--;
    }

    @Override // defpackage.zb0
    public final boolean d() {
        return this.g.b.d();
    }

    @Override // defpackage.zb0
    public final boolean e() {
        return this.b;
    }

    @Override // defpackage.zb0
    public final boolean f() {
        return this.c;
    }

    @Override // defpackage.zb0
    public final long g() {
        return this.a;
    }

    @Override // defpackage.zb0
    public final yb0 h() {
        return this.g.h;
    }

    @Override // defpackage.zb0
    public final hu2 i() {
        return (hu2) this.f.getValue();
    }

    @Override // defpackage.zb0
    public final hi0 j() {
        return this.g.b.j();
    }

    @Override // defpackage.zb0
    public final boolean k() {
        return this.g.b.k();
    }

    @Override // defpackage.zb0
    public final void l(ec0 ec0Var) {
        ag1 ag1Var = this.g;
        ag1Var.b.l(ag1Var.h);
        ag1Var.b.l(ec0Var);
    }

    @Override // defpackage.zb0
    public final ne2 m(oe2 oe2Var) {
        return this.g.b.m(oe2Var);
    }

    @Override // defpackage.zb0
    public final lg2 n(ec0 ec0Var, sm3 sm3Var, lg2 lg2Var) {
        return this.g.b.n(ec0Var, sm3Var, lg2Var);
    }

    @Override // defpackage.zb0
    public final void o(Set set) {
        HashSet hashSet = this.d;
        if (hashSet == null) {
            hashSet = new HashSet();
            this.d = hashSet;
        }
        hashSet.add(set);
    }

    @Override // defpackage.zb0
    public final void p(ag1 ag1Var) {
        this.e.a(ag1Var);
    }

    @Override // defpackage.zb0
    public final void q(c33 c33Var) {
        this.g.b.q(c33Var);
    }

    @Override // defpackage.zb0
    public final void r(ec0 ec0Var) {
        this.g.b.r(ec0Var);
    }

    @Override // defpackage.zb0
    public final q20 s(je jeVar) {
        return this.g.b.s(jeVar);
    }

    @Override // defpackage.zb0
    public final void t() {
        this.g.A++;
    }

    @Override // defpackage.zb0
    public final void u(ag1 ag1Var) {
        HashSet<Set> hashSet = this.d;
        if (hashSet != null) {
            for (Set set : hashSet) {
                ag1Var.getClass();
                set.remove(ag1Var.v());
            }
        }
        if (ag1Var != null) {
            this.e.l(ag1Var);
        }
    }

    @Override // defpackage.zb0
    public final void v(ec0 ec0Var) {
        this.g.b.v(ec0Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void w() {
        /*
            r15 = this;
            lg2 r0 = r15.e
            boolean r1 = r0.h()
            if (r1 == 0) goto L69
            java.util.HashSet r15 = r15.d
            if (r15 == 0) goto L66
            java.lang.Object[] r1 = r0.b
            long[] r2 = r0.a
            int r3 = r2.length
            int r3 = r3 + (-2)
            if (r3 < 0) goto L66
            r4 = 0
            r5 = r4
        L17:
            r6 = r2[r5]
            long r8 = ~r6
            r10 = 7
            long r8 = r8 << r10
            long r8 = r8 & r6
            r10 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r8 = r8 & r10
            int r8 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r8 == 0) goto L61
            int r8 = r5 - r3
            int r8 = ~r8
            int r8 = r8 >>> 31
            r9 = 8
            int r8 = 8 - r8
            r10 = r4
        L31:
            if (r10 >= r8) goto L5f
            r11 = 255(0xff, double:1.26E-321)
            long r11 = r11 & r6
            r13 = 128(0x80, double:6.32E-322)
            int r11 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1))
            if (r11 >= 0) goto L5b
            int r11 = r5 << 3
            int r11 = r11 + r10
            r11 = r1[r11]
            ag1 r11 = (defpackage.ag1) r11
            java.util.Iterator r12 = r15.iterator()
        L47:
            boolean r13 = r12.hasNext()
            if (r13 == 0) goto L5b
            java.lang.Object r13 = r12.next()
            java.util.Set r13 = (java.util.Set) r13
            bc0 r14 = r11.v()
            r13.remove(r14)
            goto L47
        L5b:
            long r6 = r6 >> r9
            int r10 = r10 + 1
            goto L31
        L5f:
            if (r8 != r9) goto L66
        L61:
            if (r5 == r3) goto L66
            int r5 = r5 + 1
            goto L17
        L66:
            r0.b()
        L69:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.yf1.w():void");
    }
}
