package u.sage;

import defpackage.ez3;
import defpackage.g70;
import defpackage.i70;
import defpackage.j70;
import defpackage.jf;
import defpackage.n1;
import defpackage.n8;
import defpackage.nt1;
import defpackage.og1;
import defpackage.ps;
import defpackage.pt;
import defpackage.qe3;
import defpackage.ra3;
import defpackage.ti3;
import defpackage.tl0;
import defpackage.vl0;
import defpackage.y84;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class CodexUsageService extends a implements og1 {
    public static final /* synthetic */ int Y = 0;
    public volatile ti3 H;
    public i70 K;
    public n8 L;
    public g70 M;
    public jf N;
    public final Object I = new Object();
    public boolean J = false;
    public final String O = "codex_usage_channel";
    public final String P = "Codex Usage Monitor";
    public final int Q = 1005;
    public final String R = "about:blank";
    public final Class S = CodexUsageService.class;
    public final int T = R.drawable.codex;
    public final String U = "Codex";
    public final String V = "CODEX";
    public final y84 W = y84.f419u;
    public final String X = (String) qe3.c.a;

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
        i70 i70Var = this.K;
        if (i70Var != null) {
            return i70Var;
        }
        nt1.X("codexRepository");
        throw null;
    }

    @Override // u.sage.a, android.app.Service
    public final void onCreate() {
        this.M = new g70(this);
        this.N = new jf(this, 2);
        z();
        ra3 ra3Var = ez3.a;
        j().concat(": onCreate finished. Stores initialized.");
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
        g70 g70Var = this.M;
        if (g70Var != null) {
            return g70Var;
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
            vl0 vl0Var = ((tl0) ((j70) a())).a;
            this.K = (i70) vl0Var.n.get();
            this.L = (n8) vl0Var.c.get();
        }
        super.onCreate();
    }
}
