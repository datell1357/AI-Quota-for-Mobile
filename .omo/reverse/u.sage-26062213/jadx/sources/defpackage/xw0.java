package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xw0 extends bv3 implements df1 {
    public final /* synthetic */ int r = 0;
    public w33 s;
    public w33 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f414u;
    public /* synthetic */ Object v;
    public final /* synthetic */ wf3 w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xw0(w33 w33Var, wf3 wf3Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.t = w33Var;
        this.w = wf3Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                return ((xw0) o((dh0) obj2, (pe1) obj)).q(t64Var);
            default:
                return ((xw0) o((dh0) obj2, (qi0) obj)).q(t64Var);
        }
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        wf3 wf3Var = this.w;
        switch (i) {
            case 0:
                xw0 xw0Var = new xw0(this.t, wf3Var, dh0Var);
                xw0Var.v = obj;
                return xw0Var;
            default:
                xw0 xw0Var2 = new xw0(wf3Var, dh0Var);
                xw0Var2.v = obj;
                return xw0Var2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x00f6, code lost:
    
        if (defpackage.wf3.J0(r3, r11) != r5) goto L12;
     */
    /* JADX WARN: Path cross not found for [B:48:0x00d9, B:44:0x00c7], limit reached: 89 */
    /* JADX WARN: Path cross not found for [B:50:0x00dd, B:20:0x005e], limit reached: 89 */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003a A[PHI: r0 r2
  0x003a: PHI (r0v13 w33) = (r0v5 w33), (r0v17 w33) binds: [B:14:0x0037, B:40:0x00be] A[DONT_GENERATE, DONT_INLINE]
  0x003a: PHI (r2v15 qi0) = (r2v13 qi0), (r2v16 qi0) binds: [B:14:0x0037, B:40:0x00be] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005e A[PHI: r7
  0x005e: PHI (r7v15 qi0) = (r7v7 qi0), (r7v10 qi0), (r7v10 qi0), (r7v10 qi0), (r7v13 qi0), (r7v16 qi0) binds: [B:19:0x0056, B:49:0x00db, B:51:0x00e8, B:45:0x00d4, B:31:0x0089, B:12:0x002f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c7 A[Catch: CancellationException -> 0x00d7, TryCatch #2 {CancellationException -> 0x00d7, blocks: (B:42:0x00c1, B:44:0x00c7, B:48:0x00d9, B:50:0x00dd), top: B:88:0x00c1 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d9 A[Catch: CancellationException -> 0x00d7, TryCatch #2 {CancellationException -> 0x00d7, blocks: (B:42:0x00c1, B:44:0x00c7, B:48:0x00d9, B:50:0x00dd), top: B:88:0x00c1 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:91:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x0089 -> B:20:0x005e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00d4 -> B:20:0x005e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x00db -> B:20:0x005e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x00e8 -> B:20:0x005e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x00f6 -> B:12:0x002f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:78:0x0142 -> B:79:0x0143). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:80:0x0146 -> B:81:0x0148). Please report as a decompilation issue!!! */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xw0.q(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xw0(wf3 wf3Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.w = wf3Var;
    }
}
