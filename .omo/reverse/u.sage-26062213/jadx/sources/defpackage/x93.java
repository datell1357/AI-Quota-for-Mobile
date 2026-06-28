package defpackage;

import android.content.Context;
import u.sage.worker.RollingWindowWorker;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class x93 extends bv3 implements df1 {
    public final /* synthetic */ String A;
    public final /* synthetic */ v50 B;
    public zy r;
    public w33 s;
    public int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ Context f406u;
    public final /* synthetic */ n8 v;
    public final /* synthetic */ RollingWindowWorker w;
    public final /* synthetic */ long x;
    public final /* synthetic */ boolean y;
    public final /* synthetic */ int z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x93(Context context, n8 n8Var, RollingWindowWorker rollingWindowWorker, long j, boolean z, int i, String str, v50 v50Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.f406u = context;
        this.v = n8Var;
        this.w = rollingWindowWorker;
        this.x = j;
        this.y = z;
        this.z = i;
        this.A = str;
        this.B = v50Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        return ((x93) o((dh0) obj2, (qi0) obj)).q(t64.a);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        return new x93(this.f406u, this.v, this.w, this.x, this.y, this.z, this.A, this.B, dh0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00e6 A[PHI: r0
  0x00e6: PHI (r0v32 android.webkit.WebView) = (r0v22 android.webkit.WebView), (r0v30 android.webkit.WebView), (r0v37 android.webkit.WebView) binds: [B:36:0x0148, B:43:0x0187, B:24:0x00e4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0180  */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v1, types: [w33] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r4v0, types: [int] */
    /* JADX WARN: Type inference failed for: r4v1, types: [yh3] */
    /* JADX WARN: Type inference failed for: r4v4 */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r21) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.x93.q(java.lang.Object):java.lang.Object");
    }
}
