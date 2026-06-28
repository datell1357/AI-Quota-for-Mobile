package defpackage;

import u.sage.a;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class au implements b81 {
    public final /* synthetic */ int n;
    public final /* synthetic */ a o;

    public /* synthetic */ au(a aVar, int i) {
        this.n = i;
        this.o = aVar;
    }

    @Override // defpackage.b81
    public final Object m(Object obj, dh0 dh0Var) {
        int i = this.n;
        t64 t64Var = t64.a;
        a aVar = this.o;
        switch (i) {
            case 0:
                if (!((Boolean) obj).booleanValue()) {
                    ra3 ra3Var = ez3.a;
                    aVar.j().concat(": isLoggedIn flipped to false; clearing WebView. Expiration analytics is handled at the JS fetch detection site.");
                    ra3Var.getClass();
                    ra3.c(new Object[0]);
                    aVar.n.post(new rt(aVar, 1));
                }
                break;
            case 1:
                js2 js2Var = (js2) obj;
                boolean zBooleanValue = ((Boolean) js2Var.n).booleanValue();
                String str = (String) js2Var.o;
                if (!zBooleanValue) {
                    aVar.w = false;
                } else if (!aVar.w) {
                    if (nt1.g(str, "usage_fetch")) {
                        ra3 ra3Var2 = ez3.a;
                        aVar.j().concat(": Session expiration detected (source=usage_fetch). Skipping duplicate log.");
                        ra3Var2.getClass();
                        ra3.c(new Object[0]);
                    } else {
                        ra3 ra3Var3 = ez3.a;
                        aVar.j();
                        ra3Var3.getClass();
                        ra3.m(new Object[0]);
                        aVar.g().h(aVar.q(), nt1.g(str, "web_app") ? qj3.b : oj3.b);
                    }
                    aVar.w = true;
                }
                aVar.z = zBooleanValue;
                aVar.x("SessionExpiredObserver");
                break;
            case 2:
                aVar.x("RepositoryObserver");
                break;
            default:
                String str2 = (String) obj;
                if (str2 == null || str2.length() == 0) {
                    ra3 ra3Var4 = ez3.a;
                    aVar.j().concat(": [RemoteConfig] setupScriptObserver: Received NULL/empty script from provider.");
                    ra3Var4.getClass();
                    ra3.m(new Object[0]);
                } else {
                    ra3 ra3Var5 = ez3.a;
                    aVar.j();
                    ra3Var5.getClass();
                    ra3.h(new Object[0]);
                    aVar.e(str2);
                }
                break;
        }
        return t64Var;
    }
}
