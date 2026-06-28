package defpackage;

import android.content.Context;
import java.util.Iterator;
import u.sage.MainActivity;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class p10 extends bv3 implements df1 {
    public final /* synthetic */ int r = 0;
    public Iterator s;
    public int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f253u;
    public Context v;
    public /* synthetic */ Object w;
    public Object x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p10(Context context, dh0 dh0Var) {
        super(2, dh0Var);
        this.w = context;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
        }
        return ((p10) o(dh0Var, qi0Var)).q(t64Var);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        switch (this.r) {
            case 0:
                return new p10((Context) this.w, dh0Var);
            default:
                p10 p10Var = new p10((MainActivity) this.x, dh0Var);
                p10Var.w = obj;
                return p10Var;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0047 A[PHI: r2 r9 r10
  0x0047: PHI (r2v11 int) = (r2v9 int), (r2v12 int) binds: [B:14:0x003c, B:21:0x0079] A[DONT_GENERATE, DONT_INLINE]
  0x0047: PHI (r9v2 java.util.Iterator) = (r9v1 java.util.Iterator), (r9v3 java.util.Iterator) binds: [B:14:0x003c, B:21:0x0079] A[DONT_GENERATE, DONT_INLINE]
  0x0047: PHI (r10v1 u.sage.MainActivity) = (r10v0 u.sage.MainActivity), (r10v2 u.sage.MainActivity) binds: [B:14:0x003c, B:21:0x0079] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0096 A[LOOP:0: B:26:0x0090->B:28:0x0096, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x013e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x006f -> B:20:0x0073). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x0121 -> B:49:0x0125). Please report as a decompilation issue!!! */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r13) {
        /*
            Method dump skipped, instruction units count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.p10.q(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p10(MainActivity mainActivity, dh0 dh0Var) {
        super(2, dh0Var);
        this.x = mainActivity;
    }
}
