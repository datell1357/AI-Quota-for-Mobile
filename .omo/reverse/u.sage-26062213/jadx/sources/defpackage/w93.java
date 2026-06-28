package defpackage;

import android.content.Context;
import u.sage.worker.RollingWindowWorker;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class w93 extends bv3 implements df1 {
    public final /* synthetic */ v50 A;
    public wy r;
    public int s;
    public final /* synthetic */ zy t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ n8 f396u;
    public final /* synthetic */ RollingWindowWorker v;
    public final /* synthetic */ Context w;
    public final /* synthetic */ long x;
    public final /* synthetic */ boolean y;
    public final /* synthetic */ int z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w93(zy zyVar, n8 n8Var, RollingWindowWorker rollingWindowWorker, Context context, long j, boolean z, int i, v50 v50Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.t = zyVar;
        this.f396u = n8Var;
        this.v = rollingWindowWorker;
        this.w = context;
        this.x = j;
        this.y = z;
        this.z = i;
        this.A = v50Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        return ((w93) o((dh0) obj2, (qi0) obj)).q(t64.a);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        return new w93(this.t, this.f396u, this.v, this.w, this.x, this.y, this.z, this.A, dh0Var);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0034  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0029 -> B:12:0x002c). Please report as a decompilation issue!!! */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.w93.q(java.lang.Object):java.lang.Object");
    }
}
