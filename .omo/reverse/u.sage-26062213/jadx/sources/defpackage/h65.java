package defpackage;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h65 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ m75 o;

    public /* synthetic */ h65(m75 m75Var, int i) {
        this.n = i;
        this.o = m75Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.n;
        m75 m75Var = this.o;
        switch (i) {
            case 0:
                m75Var.S();
                break;
            case 1:
                e65 e65Var = m75Var.q;
                r45 r45Var = e65Var.a;
                j45 j45Var = r45Var.g;
                m75 m75Var2 = r45Var.m;
                f35 f35Var = r45Var.e;
                r45.l(j45Var);
                j45Var.v();
                if (e65Var.d()) {
                    if (e65Var.c()) {
                        r45.j(f35Var);
                        f35Var.w.i(null);
                        Bundle bundle = new Bundle();
                        bundle.putString("source", "(not set)");
                        bundle.putString("medium", "(not set)");
                        bundle.putString("_cis", "intent");
                        bundle.putLong("_cc", 1L);
                        r45.k(m75Var2);
                        m75Var2.C("auto", "_cmpx", bundle);
                    } else {
                        r45.j(f35Var);
                        mu0 mu0Var = f35Var.w;
                        String strH = mu0Var.h();
                        if (TextUtils.isEmpty(strH)) {
                            a25 a25Var = r45Var.f;
                            r45.l(a25Var);
                            a25Var.g.a("Cache still valid but referrer not found");
                        } else {
                            long j = 3600000;
                            long jA = f35Var.x.a() / 3600000;
                            Uri uri = Uri.parse(strH);
                            Bundle bundle2 = new Bundle();
                            Pair pair = new Pair(uri.getPath(), bundle2);
                            for (String str : uri.getQueryParameterNames()) {
                                bundle2.putString(str, uri.getQueryParameter(str));
                                j = j;
                            }
                            ((Bundle) pair.second).putLong("_cc", (jA - 1) * j);
                            Object obj = pair.first;
                            String str2 = obj == null ? "app" : (String) obj;
                            r45.k(m75Var2);
                            m75Var2.C(str2, "_cmp", (Bundle) pair.second);
                        }
                        mu0Var.i(null);
                    }
                    r45.j(f35Var);
                    f35Var.x.b(0L);
                    break;
                }
                break;
            case 2:
                m75Var.v();
                r45 r45Var2 = (r45) m75Var.a;
                f35 f35Var2 = r45Var2.e;
                a25 a25Var2 = r45Var2.f;
                r45.j(f35Var2);
                u25 u25Var = f35Var2.t;
                if (u25Var.a()) {
                    r45.l(a25Var2);
                    a25Var2.m.a("Deferred Deep Link already retrieved. Not fetching again.");
                } else {
                    y25 y25Var = f35Var2.f91u;
                    long jA2 = y25Var.a();
                    y25Var.b(1 + jA2);
                    if (jA2 >= 5) {
                        r45.l(a25Var2);
                        a25Var2.i.a("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                        u25Var.b(true);
                    } else {
                        if (m75Var.s == null) {
                            m75Var.s = new i65(m75Var, r45Var2, 3);
                        }
                        m75Var.s.b(0L);
                    }
                }
                break;
            default:
                m75Var.S();
                break;
        }
    }
}
