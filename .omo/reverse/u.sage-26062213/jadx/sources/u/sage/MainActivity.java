package u.sage;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import defpackage.a6;
import defpackage.a81;
import defpackage.ag1;
import defpackage.bi4;
import defpackage.bx3;
import defpackage.c33;
import defpackage.ca;
import defpackage.cc;
import defpackage.cy;
import defpackage.df1;
import defpackage.dh0;
import defpackage.ea;
import defpackage.ef5;
import defpackage.ei0;
import defpackage.ez3;
import defpackage.g1;
import defpackage.g4;
import defpackage.g70;
import defpackage.gx;
import defpackage.h6;
import defpackage.h92;
import defpackage.hg1;
import defpackage.i6;
import defpackage.i70;
import defpackage.j92;
import defpackage.jg1;
import defpackage.k05;
import defpackage.k21;
import defpackage.k75;
import defpackage.ka0;
import defpackage.l4;
import defpackage.lk2;
import defpackage.mt1;
import defpackage.n44;
import defpackage.n8;
import defpackage.ne1;
import defpackage.nf;
import defpackage.nt1;
import defpackage.nv3;
import defpackage.oa2;
import defpackage.og1;
import defpackage.on3;
import defpackage.p;
import defpackage.p10;
import defpackage.p61;
import defpackage.p70;
import defpackage.pf;
import defpackage.pg2;
import defpackage.ps;
import defpackage.pt;
import defpackage.q4;
import defpackage.qd;
import defpackage.qi2;
import defpackage.qj0;
import defpackage.ql0;
import defpackage.qv3;
import defpackage.qw3;
import defpackage.r50;
import defpackage.r6;
import defpackage.ra3;
import defpackage.rb0;
import defpackage.ri3;
import defpackage.sb0;
import defpackage.sq3;
import defpackage.sy0;
import defpackage.t11;
import defpackage.t64;
import defpackage.tj1;
import defpackage.tv4;
import defpackage.u82;
import defpackage.u90;
import defpackage.uj1;
import defpackage.uq0;
import defpackage.v;
import defpackage.v50;
import defpackage.v82;
import defpackage.v90;
import defpackage.vk0;
import defpackage.vl0;
import defpackage.w6;
import defpackage.wh0;
import defpackage.wl3;
import defpackage.wr3;
import defpackage.ws0;
import defpackage.x4;
import defpackage.xh1;
import defpackage.xi2;
import defpackage.xl3;
import defpackage.xr3;
import defpackage.y33;
import defpackage.y6;
import defpackage.y84;
import defpackage.yh0;
import defpackage.yh2;
import defpackage.z13;
import defpackage.zb4;
import defpackage.zf5;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class MainActivity extends u90 implements og1 {
    public static final /* synthetic */ int C = 0;
    public ri3 A;
    public String B;
    public volatile a6 n;
    public final Object o = new Object();
    public boolean p = false;
    public final nv3 q;
    public final i6 r;
    public final wl3 s;
    public final wr3 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public v50 f348u;
    public yh0 v;
    public pf w;
    public jg1 x;
    public i70 y;
    public n8 z;

    public MainActivity() {
        addOnContextAvailableListener(new uj1(this));
        this.q = new nv3(new cc(17, this));
        this.r = registerForActivityResult(new h6(2), new p61(18));
        this.s = xl3.a(0, 6);
        this.t = xr3.a(null);
    }

    @Override // defpackage.og1
    public final Object a() {
        return h().a();
    }

    public final void g(String str, List list, String str2, ag1 ag1Var, int i) {
        MainActivity mainActivity;
        Object qdVar;
        int i2;
        int i3;
        MainActivity mainActivity2;
        Object cyVar;
        xi2 xi2Var;
        ag1 ag1Var2;
        qi2 qi2Var;
        String str3;
        char c;
        ps r50Var;
        ag1Var.X(-473328592);
        int i4 = i | (ag1Var.f(str) ? 4 : 2) | (ag1Var.h(list) ? 32 : 16) | (ag1Var.f(str2) ? 256 : 128) | (ag1Var.h(this) ? 2048 : 1024);
        if (ag1Var.N(i4 & 1, (i4 & 1171) != 1170)) {
            Context context = (Context) ag1Var.j(ea.b);
            Object[] objArrCopyOf = Arrays.copyOf(new lk2[0], 0);
            xh1 xh1Var = new xh1(new ei0(8), new v(19, context));
            boolean zH = ag1Var.h(context);
            Object objK = ag1Var.K();
            bx3 bx3Var = rb0.a;
            if (zH || objK == bx3Var) {
                objK = new ws0(context, 6);
                ag1Var.g0(objK);
            }
            xi2 xi2Var2 = (xi2) n44.K0(objArrCopyOf, xh1Var, (ne1) objK, ag1Var, 0, 4);
            xi2 xi2Var3 = xi2Var2;
            ag1 ag1Var3 = ag1Var;
            pg2 pg2VarG = ca.g(new z13(xi2Var2.b.A), null, null, ag1Var3, 48, 2);
            yh2 yh2Var = (yh2) pg2VarG.getValue();
            qi2 qi2Var2 = yh2Var != null ? yh2Var.o : null;
            pg2 pg2VarH = ca.h(xi2Var3.b.h, ag1Var3);
            int i5 = i4 & 14;
            boolean zH2 = (i5 == 4) | ((i4 & 896) == 256) | ag1Var3.h(xi2Var3) | ag1Var3.h(this);
            Object objK2 = ag1Var3.K();
            if (zH2 || objK2 == bx3Var) {
                i2 = 1;
                i3 = 16;
                qdVar = new qd(str2, this, str, xi2Var3, null, 7);
                mainActivity2 = this;
                ag1Var3.g0(qdVar);
            } else {
                i2 = 1;
                qdVar = objK2;
                i3 = 16;
                mainActivity2 = this;
            }
            zf5.c((df1) qdVar, ag1Var3, t64.a);
            ag1Var3.W(397864861);
            char c2 = '\n';
            int iA0 = oa2.a0(p70.a0(list, 10));
            if (iA0 >= i3) {
                i3 = iA0;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(i3);
            for (Iterator it = list.iterator(); it.hasNext(); it = it) {
                Object next = it.next();
                y84 y84Var = (y84) next;
                y84Var.getClass();
                int iOrdinal = y84Var.ordinal();
                if (iOrdinal == 0) {
                    c = 2;
                    r50Var = new r50(mainActivity2);
                } else if (iOrdinal != i2) {
                    c = 2;
                    if (iOrdinal == 2) {
                        r50Var = new nf(mainActivity2);
                    } else if (iOrdinal == 3) {
                        r50Var = new g70(mainActivity2);
                    } else {
                        if (iOrdinal != 4) {
                            p61.x();
                            return;
                        }
                        r50Var = new wh0(mainActivity2);
                    }
                } else {
                    c = 2;
                    r50Var = new hg1(mainActivity2);
                }
                LinkedHashMap linkedHashMap2 = linkedHashMap;
                ag1 ag1Var4 = ag1Var3;
                Boolean bool = (Boolean) ca.g((a81) r50Var.h.getValue(), Boolean.TRUE, null, ag1Var4, 48, 2).getValue();
                bool.getClass();
                linkedHashMap2.put(next, bool);
                xi2Var3 = xi2Var3;
                linkedHashMap = linkedHashMap2;
                pg2VarG = pg2VarG;
                i2 = 1;
                ag1Var3 = ag1Var4;
                c2 = '\n';
            }
            LinkedHashMap linkedHashMap3 = linkedHashMap;
            pg2 pg2Var = pg2VarG;
            ag1 ag1Var5 = ag1Var3;
            xi2 xi2Var4 = xi2Var3;
            ag1Var5.p(false);
            ri3 ri3Var = mainActivity2.A;
            if (ri3Var == null) {
                nt1.X("serviceAvailabilityManager");
                throw null;
            }
            pg2 pg2VarH2 = ca.h(ri3Var.c, ag1Var5);
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (!nt1.g(((Map) pg2VarH2.getValue()).get((y84) obj), Boolean.FALSE)) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            int size = arrayList.size();
            int i6 = 0;
            while (i6 < size) {
                Object obj2 = arrayList.get(i6);
                i6++;
                if (nt1.g(linkedHashMap3.get((y84) obj2), Boolean.TRUE)) {
                    arrayList2.add(obj2);
                }
            }
            if (!arrayList2.isEmpty()) {
                arrayList = arrayList2;
            }
            List<y84> list2 = arrayList.isEmpty() ? list : arrayList;
            ArrayList arrayList3 = new ArrayList(p70.a0(list2, 10));
            for (y84 y84Var2 : list2) {
                arrayList3.add(new gx(mt1.i(y84Var2), y84Var2.o, y84Var2.n));
            }
            boolean zH3 = ag1Var5.h(qi2Var2) | ag1Var5.h(list) | ag1Var5.h(list2) | ag1Var5.h(xi2Var4) | (i5 == 4);
            Object objK3 = ag1Var5.K();
            if (zH3 || objK3 == bx3Var) {
                xi2Var = xi2Var4;
                ag1Var2 = ag1Var5;
                qi2Var = qi2Var2;
                cyVar = new cy(qi2Var, list, list2, xi2Var, str, null, 1);
                str3 = str;
                ag1Var2.g0(cyVar);
            } else {
                cyVar = objK3;
                xi2Var = xi2Var4;
                str3 = str;
                ag1Var2 = ag1Var5;
                qi2Var = qi2Var2;
            }
            zf5.d(qi2Var, list2, (df1) cyVar, ag1Var2);
            boolean zH4 = ag1Var2.h(list2) | (i5 == 4) | ag1Var2.h(xi2Var);
            Object objK4 = ag1Var2.K();
            if (zH4 || objK4 == bx3Var) {
                objK4 = new q4(str3, list2, xi2Var, (dh0) null);
                ag1Var2.g0(objK4);
            }
            zf5.c((df1) objK4, ag1Var2, list2);
            String str4 = str3;
            xi2 xi2Var5 = xi2Var;
            mainActivity = this;
            n44.H(on3.b, null, qj0.U(1331863541, new u82(arrayList3, pg2VarH, list, this, pg2Var, xi2Var5, str4), ag1Var2), null, null, 0, 0L, 0L, null, qj0.U(-1857240385, new v82(xi2Var5, str4, mainActivity, 0), ag1Var2), ag1Var, 805306758, 506);
        } else {
            mainActivity = this;
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new g4(mainActivity, str, list, str2, i);
        }
    }

    @Override // defpackage.u90, defpackage.ej1
    public final zb4 getDefaultViewModelProviderFactory() {
        zb4 defaultViewModelProviderFactory = super.getDefaultViewModelProviderFactory();
        vl0 vl0Var = ((ql0) ((uq0) bi4.u(this, uq0.class))).a;
        qv3 qv3Var = new qv3(25);
        defaultViewModelProviderFactory.getClass();
        return new tj1(defaultViewModelProviderFactory, qv3Var);
    }

    public final a6 h() {
        if (this.n == null) {
            synchronized (this.o) {
                try {
                    if (this.n == null) {
                        this.n = new a6(this);
                    }
                } finally {
                }
            }
        }
        return this.n;
    }

    public final n8 i() {
        n8 n8Var = this.z;
        if (n8Var != null) {
            return n8Var;
        }
        nt1.X("analyticsManager");
        throw null;
    }

    public final pt j(y84 y84Var) {
        int iOrdinal = y84Var.ordinal();
        if (iOrdinal == 0) {
            v50 v50Var = this.f348u;
            if (v50Var != null) {
                return v50Var;
            }
            nt1.X("claudeUsageRepository");
            throw null;
        }
        if (iOrdinal == 1) {
            jg1 jg1Var = this.x;
            if (jg1Var != null) {
                return jg1Var;
            }
            nt1.X("geminiUsageRepository");
            throw null;
        }
        if (iOrdinal == 2) {
            pf pfVar = this.w;
            if (pfVar != null) {
                return pfVar;
            }
            nt1.X("antigravityUsageRepository");
            throw null;
        }
        if (iOrdinal == 3) {
            i70 i70Var = this.y;
            if (i70Var != null) {
                return i70Var;
            }
            nt1.X("codexUsageRepository");
            throw null;
        }
        if (iOrdinal != 4) {
            p61.x();
            return null;
        }
        yh0 yh0Var = this.v;
        if (yh0Var != null) {
            return yh0Var;
        }
        nt1.X("copilotUsageRepository");
        throw null;
    }

    public final void k(Bundle bundle) {
        super.onCreate(bundle);
        a6 a6VarH = h();
        y6 y6Var = a6VarH.q;
        sb0 sb0Var = ((w6) y6.b(y6Var.n, y6Var.o).l(y33.a(w6.class))).c;
        a6VarH.r = sb0Var;
        if (((vk0) sb0Var.o) == null) {
            vk0 defaultViewModelCreationExtras = a6VarH.p.getDefaultViewModelCreationExtras();
            if (sb0Var.n) {
                sb0Var.o = defaultViewModelCreationExtras;
            } else {
                k21.n("setExtras should only be called for an Activity that extends ComponentActivity");
            }
        }
    }

    @Override // defpackage.u90, defpackage.t90, android.app.Activity
    public final void onCreate(Bundle bundle) {
        Object next;
        int i = Build.VERSION.SDK_INT;
        xh1 sq3Var = i >= 31 ? new sq3(this) : new xh1(this);
        sq3Var.t();
        k(bundle);
        ef5 ef5VarA = ((k05) this.q.getValue()).a();
        r6 r6Var = new r6(12, new h92(this, 1));
        ef5VarA.getClass();
        ef5VarA.c(qw3.a, r6Var);
        ez3.a.getClass();
        ra3.c(new Object[0]);
        sq3Var.x(new r6(10, this));
        sy0.a(this);
        if (i >= 33 && i >= 33 && k75.m(this, "android.permission.POST_NOTIFICATIONS") != 0) {
            k75.J(this, new String[]{"android.permission.POST_NOTIFICATIONS"}, 1001);
        }
        ca.y(tv4.w(this), null, null, new p10(this, (dh0) null), 3);
        ca.y(tv4.w(this), null, null, new j92(this, null), 3);
        Intent intent = getIntent();
        String stringExtra = intent != null ? intent.getStringExtra("extra_nav_route") : null;
        if (stringExtra != null) {
            t11 t11Var = y84.x;
            t11Var.getClass();
            g1 g1Var = new g1(0, t11Var);
            while (true) {
                if (!g1Var.hasNext()) {
                    next = null;
                    break;
                } else {
                    next = g1Var.next();
                    if (mt1.i((y84) next).equals(stringExtra)) {
                        break;
                    }
                }
            }
            y84 y84Var = (y84) next;
            if (y84Var != null) {
                Intent intent2 = getIntent();
                if (nt1.g(intent2 != null ? intent2.getStringExtra("extra_source") : null, "widget")) {
                    i().k(y84Var);
                } else {
                    i().f(y84Var);
                }
            }
            getIntent().removeExtra("extra_nav_route");
        }
        v90.a(this, new ka0(-761042755, true, new l4(13, this, stringExtra)));
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        sb0 sb0Var = h().r;
        if (sb0Var != null) {
            sb0Var.o = null;
        }
    }

    @Override // defpackage.u90, android.app.Activity
    public final void onNewIntent(Intent intent) {
        intent.getClass();
        super.onNewIntent(intent);
        setIntent(intent);
        String stringExtra = intent.getStringExtra("extra_nav_route");
        if (stringExtra != null) {
            ra3 ra3Var = ez3.a;
            "MainActivity: onNewIntent received route: ".concat(stringExtra);
            ra3Var.getClass();
            ra3.c(new Object[0]);
            ca.y(tv4.w(this), null, null, new p(this, stringExtra, intent, null, 16), 3);
            intent.removeExtra("extra_nav_route");
        }
    }

    @Override // defpackage.u90, android.app.Activity
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        strArr.getClass();
        iArr.getClass();
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 1001 && iArr.length != 0 && iArr[0] == 0) {
            ca.y(tv4.w(this), null, null, new p10(this, (dh0) null), 3);
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        ef5 ef5VarA = ((k05) this.q.getValue()).a();
        r6 r6Var = new r6(11, new h92(this, 0));
        ef5VarA.getClass();
        ef5VarA.c(qw3.a, r6Var);
    }

    @Override // android.app.Activity
    public final void onStart() {
        super.onStart();
        wr3 wr3Var = a.D;
        wr3 wr3Var2 = a.D;
        Boolean bool = Boolean.TRUE;
        wr3Var2.getClass();
        wr3Var2.i(null, bool);
        ca.y(tv4.w(this), null, null, new x4(this, null, 3), 3);
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
        wr3 wr3Var = a.D;
        wr3 wr3Var2 = a.D;
        Boolean bool = Boolean.FALSE;
        wr3Var2.getClass();
        wr3Var2.i(null, bool);
    }
}
