package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mg2 extends e83 implements df1 {
    public final /* synthetic */ ug1 A;
    public ug1 p;
    public ng2 q;
    public long[] r;
    public int s;
    public int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f209u;
    public int v;
    public long w;
    public int x;
    public /* synthetic */ Object y;
    public final /* synthetic */ ng2 z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mg2(ng2 ng2Var, ug1 ug1Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.z = ng2Var;
        this.A = ug1Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        return ((mg2) o((dh0) obj2, (bi3) obj)).q(t64.a);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        mg2 mg2Var = new mg2(this.z, this.A, dh0Var);
        mg2Var.y = obj;
        return mg2Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a1  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x004f -> B:22:0x009f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0051 -> B:14:0x0064). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x006d -> B:19:0x0094). Please report as a decompilation issue!!! */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r21) {
        /*
            r20 = this;
            r0 = r20
            int r1 = r0.x
            r2 = 0
            r3 = 8
            r4 = 1
            if (r1 == 0) goto L2c
            if (r1 != r4) goto L25
            int r1 = r0.v
            int r5 = r0.f209u
            long r6 = r0.w
            int r8 = r0.t
            int r9 = r0.s
            long[] r10 = r0.r
            ng2 r11 = r0.q
            ug1 r12 = r0.p
            java.lang.Object r13 = r0.y
            bi3 r13 = (defpackage.bi3) r13
            defpackage.gg4.T(r21)
            goto L94
        L25:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r0)
            r0 = 0
            return r0
        L2c:
            defpackage.gg4.T(r21)
            java.lang.Object r1 = r0.y
            bi3 r1 = (defpackage.bi3) r1
            ng2 r5 = r0.z
            lg2 r6 = r5.o
            long[] r6 = r6.a
            int r7 = r6.length
            int r7 = r7 + (-2)
            if (r7 < 0) goto La4
            ug1 r8 = r0.A
            r9 = r2
        L41:
            r10 = r6[r9]
            long r12 = ~r10
            r14 = 7
            long r12 = r12 << r14
            long r12 = r12 & r10
            r14 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r12 = r12 & r14
            int r12 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
            if (r12 == 0) goto L9f
            int r12 = r9 - r7
            int r12 = ~r12
            int r12 = r12 >>> 31
            int r12 = 8 - r12
            r13 = r1
            r1 = r2
            r18 = r10
            r11 = r5
            r10 = r6
            r5 = r12
            r12 = r8
            r8 = r9
            r9 = r7
            r6 = r18
        L64:
            if (r1 >= r5) goto L97
            r14 = 255(0xff, double:1.26E-321)
            long r14 = r14 & r6
            r16 = 128(0x80, double:6.32E-322)
            int r14 = (r14 > r16 ? 1 : (r14 == r16 ? 0 : -1))
            if (r14 >= 0) goto L94
            int r2 = r8 << 3
            int r2 = r2 + r1
            r12.o = r2
            lg2 r3 = r11.o
            java.lang.Object[] r3 = r3.b
            r2 = r3[r2]
            r0.y = r13
            r0.p = r12
            r0.q = r11
            r0.r = r10
            r0.s = r9
            r0.t = r8
            r0.w = r6
            r0.f209u = r5
            r0.v = r1
            r0.x = r4
            r13.d(r2, r0)
            ri0 r0 = defpackage.ri0.n
            return r0
        L94:
            long r6 = r6 >> r3
            int r1 = r1 + r4
            goto L64
        L97:
            if (r5 != r3) goto La4
            r7 = r9
            r6 = r10
            r5 = r11
            r1 = r13
            r9 = r8
            r8 = r12
        L9f:
            if (r9 == r7) goto La4
            int r9 = r9 + 1
            goto L41
        La4:
            t64 r0 = defpackage.t64.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.mg2.q(java.lang.Object):java.lang.Object");
    }
}
