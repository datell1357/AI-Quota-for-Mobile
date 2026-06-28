package u.sage;

import android.webkit.WebSettings;
import android.webkit.WebView;
import defpackage.ez3;
import defpackage.jf;
import defpackage.n1;
import defpackage.n8;
import defpackage.nf;
import defpackage.nt1;
import defpackage.oe3;
import defpackage.og1;
import defpackage.pf;
import defpackage.ps;
import defpackage.pt;
import defpackage.qf;
import defpackage.ra3;
import defpackage.ti3;
import defpackage.tl0;
import defpackage.vl0;
import defpackage.y84;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class AntigravityUsageService extends a implements og1 {
    public static final /* synthetic */ int Y = 0;
    public volatile ti3 H;
    public pf K;
    public n8 L;
    public nf M;
    public jf N;
    public final Object I = new Object();
    public boolean J = false;
    public final String O = "antigravity_usage_channel";
    public final String P = "Antigravity Usage Monitor";
    public final int Q = 1003;
    public final String R = "about:blank";
    public final Class S = AntigravityUsageService.class;
    public final int T = R.drawable.antigravity_24px;
    public final String U = "Antigravity";
    public final String V = "ANTIGRAVITY";
    public final y84 W = y84.t;
    public final String X = (String) oe3.c.a;

    @Override // defpackage.og1
    public final Object a() {
        if (this.H == null) {
            synchronized (this.I) {
                try {
                    if (this.H == null) {
                        this.H = new ti3(this);
                    }
                } finally {
                }
            }
        }
        return this.H.a();
    }

    @Override // u.sage.a
    public final void d() {
        WebSettings settings;
        super.d();
        WebView webView = this.p;
        if (webView == null || (settings = webView.getSettings()) == null) {
            return;
        }
        settings.setUserAgentString("antigravity/2.0.0 android/unknown");
    }

    @Override // u.sage.a
    public final n1 f() {
        jf jfVar = this.N;
        if (jfVar != null) {
            return jfVar;
        }
        nt1.X("accountDataStore");
        throw null;
    }

    @Override // u.sage.a
    public final n8 g() {
        n8 n8Var = this.L;
        if (n8Var != null) {
            return n8Var;
        }
        nt1.X("analyticsManager");
        throw null;
    }

    @Override // u.sage.a
    public final String h() {
        return this.O;
    }

    @Override // u.sage.a
    public final String i() {
        return this.P;
    }

    @Override // u.sage.a
    public final String k() {
        return this.X;
    }

    @Override // u.sage.a
    public final int l() {
        return this.T;
    }

    @Override // u.sage.a
    public final int m() {
        return this.Q;
    }

    @Override // u.sage.a
    public final String n() {
        return this.U;
    }

    @Override // u.sage.a
    public final pt o() {
        pf pfVar = this.K;
        if (pfVar != null) {
            return pfVar;
        }
        nt1.X("antigravityRepository");
        throw null;
    }

    @Override // u.sage.a, android.app.Service
    public final void onCreate() {
        this.M = new nf(this);
        this.N = new jf(this, 0);
        z();
        ra3 ra3Var = ez3.a;
        j().concat(": onCreate finished. Stores initialized.");
        ra3Var.getClass();
        ra3.c(new Object[0]);
    }

    @Override // u.sage.a, android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        ra3 ra3Var = ez3.a;
        j().concat(": onDestroy called.");
        ra3Var.getClass();
        ra3.c(new Object[0]);
    }

    @Override // u.sage.a
    public final Class p() {
        return this.S;
    }

    @Override // u.sage.a
    public final y84 q() {
        return this.W;
    }

    @Override // u.sage.a
    public final String r() {
        return this.V;
    }

    @Override // u.sage.a
    public final ps s() {
        nf nfVar = this.M;
        if (nfVar != null) {
            return nfVar;
        }
        nt1.X("usageDataStore");
        throw null;
    }

    @Override // u.sage.a
    public final String t() {
        return this.R;
    }

    public final void z() {
        if (!this.J) {
            this.J = true;
            vl0 vl0Var = ((tl0) ((qf) a())).a;
            this.K = (pf) vl0Var.l.get();
            this.L = (n8) vl0Var.c.get();
        }
        super.onCreate();
    }
}
