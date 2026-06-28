package u.sage;

import defpackage.ca;
import defpackage.dh0;
import defpackage.jf;
import defpackage.n1;
import defpackage.n8;
import defpackage.nt1;
import defpackage.og1;
import defpackage.pe3;
import defpackage.ps;
import defpackage.pt;
import defpackage.r50;
import defpackage.ti3;
import defpackage.tl0;
import defpackage.us0;
import defpackage.v50;
import defpackage.vl0;
import defpackage.x50;
import defpackage.xr3;
import defpackage.y50;
import defpackage.y84;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ClaudeUsageService extends a implements og1 {
    public static final /* synthetic */ int Z = 0;
    public volatile ti3 H;
    public v50 K;
    public n8 L;
    public r50 M;
    public jf N;
    public us0 O;
    public final Object I = new Object();
    public boolean J = false;
    public final String P = "claude_usage_channel";
    public final String Q = "Claude Usage Monitor";
    public final int R = 1001;
    public final String S = "about:blank";
    public final Class T = ClaudeUsageService.class;
    public final int U = R.drawable.ic_claude;
    public final String V = "Claude";
    public final String W = "CLAUDE";
    public final y84 X = y84.r;
    public final String Y = (String) pe3.c.a;

    static {
        xr3.a(null);
    }

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
        return this.P;
    }

    @Override // u.sage.a
    public final String i() {
        return this.Q;
    }

    @Override // u.sage.a
    public final String k() {
        return this.Y;
    }

    @Override // u.sage.a
    public final int l() {
        return this.U;
    }

    @Override // u.sage.a
    public final int m() {
        return this.R;
    }

    @Override // u.sage.a
    public final String n() {
        return this.V;
    }

    @Override // u.sage.a
    public final pt o() {
        v50 v50Var = this.K;
        if (v50Var != null) {
            return v50Var;
        }
        nt1.X("repository");
        throw null;
    }

    @Override // u.sage.a, android.app.Service
    public final void onCreate() {
        this.M = new r50(this);
        this.N = new jf(this, 1);
        this.O = new us0(this);
        z();
        ca.y(this.q, null, null, new x50(this, (dh0) null, 0), 3);
    }

    @Override // u.sage.a
    public final Class p() {
        return this.T;
    }

    @Override // u.sage.a
    public final y84 q() {
        return this.X;
    }

    @Override // u.sage.a
    public final String r() {
        return this.W;
    }

    @Override // u.sage.a
    public final ps s() {
        r50 r50Var = this.M;
        if (r50Var != null) {
            return r50Var;
        }
        nt1.X("usageDataStore");
        throw null;
    }

    @Override // u.sage.a
    public final String t() {
        return this.S;
    }

    public final void z() {
        if (!this.J) {
            this.J = true;
            vl0 vl0Var = ((tl0) ((y50) a())).a;
            this.K = (v50) vl0Var.j.get();
            this.L = (n8) vl0Var.c.get();
        }
        super.onCreate();
    }
}
