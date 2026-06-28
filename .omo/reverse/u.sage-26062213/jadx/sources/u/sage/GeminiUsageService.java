package u.sage;

import defpackage.ez3;
import defpackage.hg1;
import defpackage.jf;
import defpackage.jg1;
import defpackage.kg1;
import defpackage.n1;
import defpackage.n8;
import defpackage.nt1;
import defpackage.og1;
import defpackage.ps;
import defpackage.pt;
import defpackage.ra3;
import defpackage.ti3;
import defpackage.tl0;
import defpackage.ve3;
import defpackage.vl0;
import defpackage.y84;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class GeminiUsageService extends a implements og1 {
    public static final /* synthetic */ int Y = 0;
    public volatile ti3 H;
    public jg1 K;
    public n8 L;
    public hg1 M;
    public jf N;
    public final Object I = new Object();
    public boolean J = false;
    public final String O = "gemini_usage_channel";
    public final String P = "Gemini Usage Monitor";
    public final int Q = 1004;
    public final String R = "about:blank";
    public final Class S = GeminiUsageService.class;
    public final int T = R.drawable.gemini;
    public final String U = "Gemini";
    public final String V = "GEMINI";
    public final y84 W = y84.s;
    public final String X = (String) ve3.c.a;

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
        jg1 jg1Var = this.K;
        if (jg1Var != null) {
            return jg1Var;
        }
        nt1.X("geminiRepository");
        throw null;
    }

    @Override // u.sage.a, android.app.Service
    public final void onCreate() {
        this.M = new hg1(this);
        this.N = new jf(this, 4);
        z();
        ra3 ra3Var = ez3.a;
        j();
        ra3Var.getClass();
        ra3.c(new Object[0]);
        j();
        ra3.h(new Object[0]);
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
        hg1 hg1Var = this.M;
        if (hg1Var != null) {
            return hg1Var;
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
            vl0 vl0Var = ((tl0) ((kg1) a())).a;
            this.K = (jg1) vl0Var.m.get();
            this.L = (n8) vl0Var.c.get();
        }
        super.onCreate();
    }
}
