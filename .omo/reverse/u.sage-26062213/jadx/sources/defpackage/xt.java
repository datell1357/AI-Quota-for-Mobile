package defpackage;

import android.app.NotificationManager;
import android.webkit.WebView;
import java.util.Objects;
import u.sage.a;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xt extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public final /* synthetic */ a t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ String f412u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ xt(a aVar, String str, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = aVar;
        this.f412u = str;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
        }
        return ((xt) o(dh0Var, qi0Var)).q(t64Var);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        String str = this.f412u;
        a aVar = this.t;
        switch (i) {
            case 0:
                return new xt(aVar, str, dh0Var, 0);
            case 1:
                return new xt(aVar, str, dh0Var, 1);
            case 2:
                return new xt(aVar, str, dh0Var, 2);
            case 3:
                return new xt(aVar, str, dh0Var, 3);
            case 4:
                return new xt(aVar, str, dh0Var, 4);
            default:
                return new xt(aVar, str, dh0Var, 5);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        String str = this.f412u;
        ri0 ri0Var = ri0.n;
        a aVar = this.t;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                int i2 = this.s;
                if (i2 == 0) {
                    gg4.T(obj);
                    this.s = 1;
                    if (aVar.y(this) == ri0Var) {
                        return ri0Var;
                    }
                } else {
                    if (i2 != 1) {
                        k21.n("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    gg4.T(obj);
                }
                aVar.n.post(new st(aVar, str, 1));
                return t64Var;
            case 1:
                int i3 = this.s;
                if (i3 == 0) {
                    gg4.T(obj);
                    this.s = 1;
                    if (zf5.A(409L, this) == ri0Var) {
                        return ri0Var;
                    }
                } else {
                    if (i3 != 1) {
                        k21.n("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    gg4.T(obj);
                }
                if (nt1.g(aVar.v, str)) {
                    ra3 ra3Var = ez3.a;
                    aVar.j().concat(": [ThrottleCheck] WebView timer timed out! Reporting FROZEN to JS.");
                    ra3Var.getClass();
                    ra3.m(new Object[0]);
                    aVar.v = null;
                    aVar.n.post(new st(aVar, str, 2));
                }
                return t64Var;
            case 2:
                int i4 = this.s;
                if (i4 == 0) {
                    gg4.T(obj);
                    this.s = 1;
                    if (aVar.y(this) == ri0Var) {
                        return ri0Var;
                    }
                } else {
                    if (i4 != 1) {
                        k21.n("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    gg4.T(obj);
                }
                aVar.n.post(new st(aVar, str, 3));
                return t64Var;
            case 3:
                int i5 = this.s;
                if (i5 == 0) {
                    gg4.T(obj);
                    this.s = 1;
                    if (aVar.y(this) == ri0Var) {
                        return ri0Var;
                    }
                } else {
                    if (i5 != 1) {
                        k21.n("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    gg4.T(obj);
                }
                if (nt1.g(aVar.s, str) && aVar.o().g()) {
                    ra3 ra3Var2 = ez3.a;
                    aVar.j();
                    ra3Var2.getClass();
                    ra3.c(new Object[0]);
                    WebView webView = aVar.p;
                    if (webView != null) {
                        webView.evaluateJavascript("sage(4, '" + str + "');", null);
                    }
                } else {
                    ra3 ra3Var3 = ez3.a;
                    aVar.j();
                    ra3Var3.getClass();
                    ra3.c(new Object[0]);
                }
                return t64Var;
            case 4:
                int i6 = this.s;
                if (i6 == 0) {
                    gg4.T(obj);
                    this.s = 1;
                    if (zf5.A(13000L, this) == ri0Var) {
                        return ri0Var;
                    }
                } else {
                    if (i6 != 1) {
                        k21.n("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    gg4.T(obj);
                }
                if (aVar.o().g() && nt1.g(aVar.s, str)) {
                    ra3 ra3Var4 = ez3.a;
                    aVar.j();
                    Objects.toString(aVar.y.getValue());
                    ra3Var4.getClass();
                    ra3.f(new Object[0]);
                    aVar.b(str, "Timeout");
                }
                return t64Var;
            default:
                int i7 = this.s;
                if (i7 == 0) {
                    gg4.T(obj);
                    a81 a81VarD = aVar.s().d();
                    this.s = 1;
                    obj = qj0.H(a81VarD, this);
                    if (obj == ri0Var) {
                        return ri0Var;
                    }
                } else {
                    if (i7 != 1) {
                        if (i7 != 2) {
                            k21.n("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        gg4.T(obj);
                        Object systemService = aVar.getSystemService("notification");
                        systemService.getClass();
                        ra3 ra3Var5 = ez3.a;
                        aVar.j();
                        ra3Var5.getClass();
                        ra3.c(new Object[0]);
                        ((NotificationManager) systemService).notify(aVar.m(), aVar.c((d84) obj));
                        return t64Var;
                    }
                    gg4.T(obj);
                }
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                ra3 ra3Var6 = ez3.a;
                aVar.j();
                ra3Var6.getClass();
                ra3.c(new Object[0]);
                if (!zBooleanValue) {
                    aVar.j();
                    ra3.c(new Object[0]);
                    aVar.stopForeground(1);
                    return t64Var;
                }
                pt ptVarO = aVar.o();
                this.s = 2;
                obj = qj0.H(ptVarO.k(), this);
                if (obj == ri0Var) {
                    return ri0Var;
                }
                Object systemService2 = aVar.getSystemService("notification");
                systemService2.getClass();
                ra3 ra3Var52 = ez3.a;
                aVar.j();
                ra3Var52.getClass();
                ra3.c(new Object[0]);
                ((NotificationManager) systemService2).notify(aVar.m(), aVar.c((d84) obj));
                return t64Var;
        }
    }
}
