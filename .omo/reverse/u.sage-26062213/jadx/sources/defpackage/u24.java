package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class u24 extends bv3 implements df1 {
    public final /* synthetic */ d14 A;
    public zn2[] r;
    public v24 s;
    public d14 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f351u;
    public int v;
    public int w;
    public int x;
    public final /* synthetic */ zn2[] y;
    public final /* synthetic */ v24 z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u24(zn2[] zn2VarArr, v24 v24Var, d14 d14Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.y = zn2VarArr;
        this.z = v24Var;
        this.A = d14Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        return ((u24) o((dh0) obj2, (pw2) obj)).q(t64.a);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        return new u24(this.y, this.z, this.A, dh0Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x006f, code lost:
    
        if (defpackage.v24.c(r7, r6, r12, r11) == r10) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0057, code lost:
    
        r5 = r9;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0075  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0072 -> B:27:0x0073). Please report as a decompilation issue!!! */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r12) {
        /*
            r11 = this;
            int r0 = r11.x
            r1 = 0
            r2 = 2
            r3 = 1
            if (r0 == 0) goto L21
            if (r0 == r3) goto Lb
            if (r0 != r2) goto L1b
        Lb:
            int r0 = r11.w
            int r4 = r11.v
            int r5 = r11.f351u
            d14 r6 = r11.t
            v24 r7 = r11.s
            zn2[] r8 = r11.r
            defpackage.gg4.T(r12)
            goto L57
        L1b:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r11)
            return r1
        L21:
            defpackage.gg4.T(r12)
            zn2[] r12 = r11.y
            int r0 = r12.length
            r4 = 0
            v24 r5 = r11.z
            d14 r6 = r11.A
            r8 = r12
            r12 = r4
            r7 = r5
        L2f:
            if (r4 >= r0) goto L75
            r5 = r8[r4]
            int r9 = r12 + 1
            int r5 = r5.ordinal()
            if (r5 == 0) goto L72
            ri0 r10 = defpackage.ri0.n
            if (r5 == r3) goto L5d
            if (r5 != r2) goto L59
            r11.r = r8
            r11.s = r7
            r11.t = r6
            r11.f351u = r9
            r11.v = r4
            r11.w = r0
            r11.x = r2
            java.lang.Object r12 = defpackage.v24.d(r7, r6, r12, r11)
            if (r12 != r10) goto L56
            goto L71
        L56:
            r5 = r9
        L57:
            r12 = r5
            goto L73
        L59:
            defpackage.p61.x()
            return r1
        L5d:
            r11.r = r8
            r11.s = r7
            r11.t = r6
            r11.f351u = r9
            r11.v = r4
            r11.w = r0
            r11.x = r3
            java.lang.Object r12 = defpackage.v24.c(r7, r6, r12, r11)
            if (r12 != r10) goto L56
        L71:
            return r10
        L72:
            r12 = r9
        L73:
            int r4 = r4 + r3
            goto L2f
        L75:
            t64 r11 = defpackage.t64.a
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.u24.q(java.lang.Object):java.lang.Object");
    }
}
