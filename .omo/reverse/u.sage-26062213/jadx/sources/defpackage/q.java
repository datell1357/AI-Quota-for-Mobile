package defpackage;

import android.os.Handler;
import android.webkit.WebView;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class q extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public final /* synthetic */ long t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Object f266u;
    public final /* synthetic */ Object v;
    public final /* synthetic */ Object w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(n84 n84Var, long j, qi0 qi0Var, String str, dh0 dh0Var) {
        super(2, dh0Var);
        this.r = 2;
        this.f266u = n84Var;
        this.t = j;
        this.v = qi0Var;
        this.w = str;
    }

    public static final void t(long j, s33 s33Var, u33 u33Var, u33 u33Var2, u33 u33Var3, n84 n84Var, Handler handler, WebView webView, String str, String str2) {
        if (s33Var.n) {
            ez3.a.getClass();
            ra3.c(new Object[0]);
            return;
        }
        s33Var.n = true;
        ra3 ra3Var = ez3.a;
        System.currentTimeMillis();
        ra3Var.getClass();
        ra3.c(new Object[0]);
        handler.post(new o9(13, webView));
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                return ((q) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 1:
                return ((q) o((dh0) obj2, (bg3) obj)).q(t64Var);
            case 2:
                return ((q) o((dh0) obj2, (qi0) obj)).q(t64Var);
            default:
                return ((q) o((dh0) obj2, (qi0) obj)).q(t64Var);
        }
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        Object obj2 = this.w;
        Object obj3 = this.v;
        switch (i) {
            case 0:
                return new q((tu1) obj3, this.t, (vf2) obj2, dh0Var, 0);
            case 1:
                q qVar = new q((dg3) obj3, this.t, (t33) obj2, dh0Var, 1);
                qVar.f266u = obj;
                return qVar;
            case 2:
                return new q((n84) this.f266u, this.t, (qi0) obj3, (String) obj2, dh0Var);
            default:
                q qVar2 = new q((n84) obj3, this.t, (String) obj2, dh0Var, 3);
                qVar2.f266u = obj;
                return qVar2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:72:? A[RETURN, SYNTHETIC] */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r32) {
        /*
            Method dump skipped, instruction units count: 600
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.q.q(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ q(Object obj, long j, Object obj2, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.v = obj;
        this.t = j;
        this.w = obj2;
    }
}
