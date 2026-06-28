package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class to3 extends e83 implements df1 {
    public long[] p;
    public int q;
    public int r;
    public int s;
    public /* synthetic */ Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ uo3 f341u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public to3(uo3 uo3Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.f341u = uo3Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        return ((to3) o((dh0) obj2, (bi3) obj)).q(t64.a);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        to3 to3Var = new to3(this.f341u, dh0Var);
        to3Var.t = obj;
        return to3Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x009e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x007e -> B:26:0x0093). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00bc -> B:37:0x00be). Please report as a decompilation issue!!! */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r23) {
        /*
            r22 = this;
            r0 = r22
            uo3 r1 = r0.f341u
            long r2 = r1.n
            long r4 = r1.p
            long r6 = r1.o
            int r8 = r0.s
            r9 = 0
            r12 = 64
            r13 = 3
            r14 = 2
            r16 = 0
            r18 = 1
            r10 = 1
            ri0 r11 = defpackage.ri0.n
            if (r8 == 0) goto L4b
            if (r8 == r10) goto L3c
            if (r8 == r14) goto L32
            if (r8 != r13) goto L2c
            int r1 = r0.q
            java.lang.Object r6 = r0.t
            bi3 r6 = (defpackage.bi3) r6
            defpackage.gg4.T(r23)
            r7 = r13
            goto Lbe
        L2c:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r0)
            return r9
        L32:
            int r1 = r0.q
            java.lang.Object r8 = r0.t
            bi3 r8 = (defpackage.bi3) r8
            defpackage.gg4.T(r23)
            goto L93
        L3c:
            int r1 = r0.r
            int r8 = r0.q
            long[] r15 = r0.p
            java.lang.Object r13 = r0.t
            bi3 r13 = (defpackage.bi3) r13
            defpackage.gg4.T(r23)
            int r8 = r8 + r10
            goto L59
        L4b:
            defpackage.gg4.T(r23)
            java.lang.Object r8 = r0.t
            r13 = r8
            bi3 r13 = (defpackage.bi3) r13
            long[] r15 = r1.q
            if (r15 == 0) goto L70
            int r1 = r15.length
            r8 = 0
        L59:
            if (r8 >= r1) goto L70
            r2 = r15[r8]
            java.lang.Long r4 = new java.lang.Long
            r4.<init>(r2)
            r0.t = r13
            r0.p = r15
            r0.q = r8
            r0.r = r1
            r0.s = r10
            r13.d(r4, r0)
            return r11
        L70:
            int r1 = (r6 > r16 ? 1 : (r6 == r16 ? 0 : -1))
            if (r1 == 0) goto L96
            r8 = r13
            r1 = 0
        L76:
            if (r1 >= r12) goto L95
            long r20 = r18 << r1
            long r20 = r6 & r20
            int r13 = (r20 > r16 ? 1 : (r20 == r16 ? 0 : -1))
            if (r13 == 0) goto L93
            long r2 = (long) r1
            long r4 = r4 + r2
            java.lang.Long r2 = new java.lang.Long
            r2.<init>(r4)
            r0.t = r8
            r0.p = r9
            r0.q = r1
            r0.s = r14
            r8.d(r2, r0)
            return r11
        L93:
            int r1 = r1 + r10
            goto L76
        L95:
            r13 = r8
        L96:
            int r1 = (r2 > r16 ? 1 : (r2 == r16 ? 0 : -1))
            if (r1 == 0) goto Lc1
            r6 = r13
            r15 = 0
        L9c:
            if (r15 >= r12) goto Lc1
            long r7 = r18 << r15
            long r7 = r7 & r2
            int r1 = (r7 > r16 ? 1 : (r7 == r16 ? 0 : -1))
            if (r1 == 0) goto Lbc
            long r1 = (long) r15
            long r4 = r4 + r1
            r1 = 64
            long r4 = r4 + r1
            java.lang.Long r1 = new java.lang.Long
            r1.<init>(r4)
            r0.t = r6
            r0.p = r9
            r0.q = r15
            r7 = 3
            r0.s = r7
            r6.d(r1, r0)
            return r11
        Lbc:
            r7 = 3
            r1 = r15
        Lbe:
            int r15 = r1 + 1
            goto L9c
        Lc1:
            t64 r0 = defpackage.t64.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.to3.q(java.lang.Object):java.lang.Object");
    }
}
