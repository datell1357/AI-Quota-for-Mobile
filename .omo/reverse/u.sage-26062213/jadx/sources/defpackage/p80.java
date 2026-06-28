package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class p80 extends bv3 implements df1 {
    public final /* synthetic */ b81 A;
    public n30 r;
    public byte[] s;
    public int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f258u;
    public int v;
    public /* synthetic */ Object w;
    public final /* synthetic */ a81[] x;
    public final /* synthetic */ ne1 y;
    public final /* synthetic */ ff1 z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p80(dh0 dh0Var, b81 b81Var, ne1 ne1Var, ff1 ff1Var, a81[] a81VarArr) {
        super(2, dh0Var);
        this.x = a81VarArr;
        this.y = ne1Var;
        this.z = ff1Var;
        this.A = b81Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        return ((p80) o((dh0) obj2, (qi0) obj)).q(t64.a);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        p80 p80Var = new p80(dh0Var, this.A, this.y, this.z, this.x);
        p80Var.w = obj;
        return p80Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0084, code lost:
    
        if (r6 != 0) goto L19;
     */
    /* JADX WARN: Path cross not found for [B:33:0x00c3, B:31:0x00b4], limit reached: 42 */
    /* JADX WARN: Path cross not found for [B:34:0x00c5, B:19:0x0084], limit reached: 42 */
    /* JADX WARN: Path cross not found for [B:36:0x00d3, B:39:0x00e6], limit reached: 42 */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a4 A[LOOP:0: B:26:0x00a4->B:44:?, LOOP_START, PHI: r6 r12
  0x00a4: PHI (r6v3 int) = (r6v2 int), (r6v4 int) binds: [B:23:0x009f, B:44:?] A[DONT_GENERATE, DONT_INLINE]
  0x00a4: PHI (r12v4 vp1) = (r12v3 vp1), (r12v10 vp1) binds: [B:23:0x009f, B:44:?] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00e3 -> B:19:0x0084). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00fb -> B:19:0x0084). Please report as a decompilation issue!!! */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r20) {
        /*
            Method dump skipped, instruction units count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.p80.q(java.lang.Object):java.lang.Object");
    }
}
