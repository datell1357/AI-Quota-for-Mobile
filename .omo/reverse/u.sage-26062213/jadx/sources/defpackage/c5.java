package defpackage;

import android.webkit.WebView;
import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class c5 extends bv3 implements df1 {
    public final /* synthetic */ int r = 1;
    public int s;
    public final /* synthetic */ long t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public /* synthetic */ Object f42u;
    public final /* synthetic */ Object v;
    public final /* synthetic */ Object w;
    public final /* synthetic */ Object x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c5(s33 s33Var, String str, long j, WebView webView, e4 e4Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.f42u = s33Var;
        this.v = str;
        this.t = j;
        this.w = webView;
        this.x = e4Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
        }
        return ((c5) o(dh0Var, qi0Var)).q(t64Var);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        Object obj2 = this.x;
        Object obj3 = this.w;
        Object obj4 = this.v;
        switch (i) {
            case 0:
                return new c5((s33) this.f42u, (String) obj4, this.t, (WebView) obj3, (e4) obj2, dh0Var);
            default:
                c5 c5Var = new c5((fg0) obj4, (t74) obj3, (gy) obj2, this.t, dh0Var);
                c5Var.f42u = obj;
                return c5Var;
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        t64 t64Var = t64.a;
        Object obj2 = this.x;
        Object obj3 = this.w;
        ri0 ri0Var = ri0.n;
        switch (i) {
            case 0:
                int i2 = this.s;
                if (i2 == 0) {
                    gg4.T(obj);
                    this.s = 1;
                    if (zf5.A(5000L, this) != ri0Var) {
                    }
                    return ri0Var;
                }
                if (i2 != 1) {
                    if (i2 == 2) {
                        gg4.T(obj);
                        return t64Var;
                    }
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                gg4.T(obj);
                if (((s33) this.f42u).n) {
                    return t64Var;
                }
                ra3 ra3Var = ez3.a;
                System.currentTimeMillis();
                WebView webView = (WebView) obj3;
                if (webView != null) {
                    webView.getUrl();
                }
                ra3Var.getClass();
                ra3.m(new Object[0]);
                zp0 zp0Var = zu0.a;
                xi1 xi1Var = n92.a;
                b5 b5Var = new b5((e4) obj2, null, 1);
                this.s = 2;
                if (ca.O(xi1Var, b5Var, this) != ri0Var) {
                    return t64Var;
                }
                return ri0Var;
            default:
                fg0 fg0Var = (fg0) this.v;
                zx zxVar = fg0Var.F;
                int i3 = this.s;
                try {
                    try {
                        if (i3 == 0) {
                            gg4.T(obj);
                            tu1 tu1VarO0 = n44.o0(((qi0) this.f42u).d());
                            fg0Var.I = true;
                            dg3 dg3Var = fg0Var.C;
                            xg2 xg2Var = xg2.n;
                            eg0 eg0Var = new eg0((t74) obj3, fg0Var, (gy) obj2, this.t, tu1VarO0, null);
                            this.s = 1;
                            if (dg3Var.g(xg2Var, eg0Var, this) == ri0Var) {
                                return ri0Var;
                            }
                        } else {
                            if (i3 != 1) {
                                k21.n("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            gg4.T(obj);
                        }
                        zxVar.b();
                        return t64Var;
                    } catch (CancellationException e) {
                        throw e;
                    }
                } finally {
                    fg0Var.I = false;
                    zxVar.a(null);
                    fg0Var.G = false;
                }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c5(fg0 fg0Var, t74 t74Var, gy gyVar, long j, dh0 dh0Var) {
        super(2, dh0Var);
        this.v = fg0Var;
        this.w = t74Var;
        this.x = gyVar;
        this.t = j;
    }
}
