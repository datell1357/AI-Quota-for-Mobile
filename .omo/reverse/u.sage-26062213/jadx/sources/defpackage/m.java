package defpackage;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import java.io.File;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CancellationException;
import org.json.JSONObject;
import u.sage.MainActivity;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class m implements pe1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;

    public /* synthetic */ m(String str, qi0 qi0Var, e4 e4Var) {
        this.n = 1;
        this.o = qi0Var;
        this.p = e4Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        h22 lifecycle;
        int i = 2;
        final int i2 = 1;
        final int i3 = 0;
        dh0 dh0Var = null;
        switch (this.n) {
            case 0:
                ((vf2) this.o).c((gy2) this.p);
                return t64.a;
            case 1:
                qi0 qi0Var = (qi0) this.o;
                e4 e4Var = (e4) this.p;
                String str = (String) obj;
                str.getClass();
                ez3.a.getClass();
                ra3.c(new Object[0]);
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    String strOptString = jSONObject.optString("type", "");
                    String strOptString2 = jSONObject.optString("message", "");
                    zp0 zp0Var = zu0.a;
                    ca.y(qi0Var, n92.a, null, new q4(e4Var, strOptString, strOptString2, null, 1), 2);
                    break;
                } catch (Exception unused) {
                    ez3.a.getClass();
                    ra3.g(new Object[0]);
                }
                return t64.a;
            case 2:
                np npVar = (np) this.o;
                op opVar = (op) this.p;
                t64 t64Var = t64.a;
                vy3 vy3Var = npVar.B;
                if (vy3Var != null) {
                    vy3Var.b();
                }
                npVar.B = null;
                z80 z80Var = opVar.c;
                if (z80Var != null) {
                    z80Var.U(t64Var);
                }
                opVar.c = null;
                return t64Var;
            case 3:
                vp vpVar = (vp) this.o;
                ra0 ra0Var = (ra0) this.p;
                vpVar.a(ra0Var);
                return new aq(i3, vpVar, ra0Var);
            case 4:
                sb sbVar = (sb) this.o;
                zf5 zf5Var = (zf5) this.p;
                zy1 zy1Var = (zy1) obj;
                zy1Var.a();
                kx0.S(zy1Var, sbVar, zf5Var, 0.0f, null, 60);
                return t64.a;
            case 5:
                kr2 kr2Var = (kr2) this.o;
                zf5 zf5Var2 = (zf5) this.p;
                zy1 zy1Var2 = (zy1) obj;
                zy1Var2.a();
                kx0.S(zy1Var2, kr2Var.x, zf5Var2, 0.0f, null, 60);
                return t64.a;
            case 6:
                ((zx) this.o).a.k((dg0) this.p);
                return t64.a;
            case 7:
                js0 js0Var = (js0) this.o;
                gs0 gs0Var = (gs0) this.p;
                jb3 jb3Var = (jb3) obj;
                jb3Var.getClass();
                js0Var.b.F(jb3Var, gs0Var);
                return t64.a;
            case 8:
                ((vf2) this.o).c((ws1) this.p);
                return t64.a;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                ((xi1) this.o).p.removeCallbacks((h7) this.p);
                return t64.a;
            case 10:
                rq1 rq1Var = (rq1) this.o;
                pq1 pq1Var = (pq1) this.p;
                rq1Var.a.c(pq1Var);
                rq1Var.b.setValue(Boolean.TRUE);
                return new aq(i, rq1Var, pq1Var);
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                r12 r12Var = (r12) this.o;
                Object obj2 = this.p;
                r12Var.p.i(obj2);
                return new aq(3, r12Var, obj2);
            case 12:
                return new r12((ic3) this.o, (Map) obj, (fc3) this.p);
            case 13:
                final MainActivity mainActivity = (MainActivity) this.o;
                final xi2 xi2Var = (xi2) this.p;
                ti2 ti2Var = (ti2) obj;
                int i4 = MainActivity.C;
                ti2Var.getClass();
                for (final y84 y84Var : y84.x) {
                    nt1.n(ti2Var, mt1.i(y84Var), null, new ka0(-804883745, true, new gf1() { // from class: x82
                        @Override // defpackage.gf1
                        public final Object n(Object obj3, Object obj4, Object obj5, Object obj6) {
                            ag1 ag1Var = (ag1) obj5;
                            ((Integer) obj6).getClass();
                            int i5 = MainActivity.C;
                            ((ae) obj3).getClass();
                            ((yh2) obj4).getClass();
                            MainActivity mainActivity2 = mainActivity;
                            boolean zH = ag1Var.h(mainActivity2);
                            y84 y84Var2 = y84Var;
                            boolean zD = zH | ag1Var.d(y84Var2.ordinal());
                            Object objK = ag1Var.K();
                            bx3 bx3Var = rb0.a;
                            if (zD || objK == bx3Var) {
                                objK = new p4(mainActivity2, y84Var2, null, 6);
                                ag1Var.g0(objK);
                            }
                            t64 t64Var2 = t64.a;
                            zf5.c((df1) objK, ag1Var, t64Var2);
                            pt ptVarJ = mainActivity2.j(y84Var2);
                            xi2 xi2Var2 = xi2Var;
                            boolean zH2 = ag1Var.h(xi2Var2) | ag1Var.d(y84Var2.ordinal());
                            Object objK2 = ag1Var.K();
                            if (zH2 || objK2 == bx3Var) {
                                objK2 = new h4(19, xi2Var2, y84Var2);
                                ag1Var.g0(objK2);
                            }
                            ne1 ne1Var = (ne1) objK2;
                            boolean zD2 = ag1Var.d(y84Var2.ordinal()) | ag1Var.h(mainActivity2) | ag1Var.h(xi2Var2);
                            Object objK3 = ag1Var.K();
                            if (zD2 || objK3 == bx3Var) {
                                objK3 = new d92(y84Var2, mainActivity2, xi2Var2, 0);
                                ag1Var.g0(objK3);
                            }
                            kt4.m(ptVarJ, y84Var2, ne1Var, (ne1) objK3, ag1Var, 0);
                            return t64Var2;
                        }
                    }), 254);
                }
                nt1.n(ti2Var, (String) we3.c.a, tv4.E(ix.E(new t3(29))), new ka0(169006012, true, new y82(mainActivity, xi2Var, i3)), 252);
                nt1.n(ti2Var, (String) ne3.c.a, tv4.E(ix.E(new z82(i3))), new ka0(-1078183451, true, new y82(xi2Var, mainActivity)), 252);
                nt1.n(ti2Var, (String) te3.c.a, null, new ka0(-1512147132, true, new gf1() { // from class: a92
                    @Override // defpackage.gf1
                    public final Object n(Object obj3, Object obj4, Object obj5, Object obj6) {
                        int i5 = i3;
                        t64 t64Var2 = t64.a;
                        bx3 bx3Var = rb0.a;
                        xi2 xi2Var2 = xi2Var;
                        int i6 = 0;
                        yh2 yh2Var = (yh2) obj4;
                        ag1 ag1Var = (ag1) obj5;
                        ((Integer) obj6).getClass();
                        int i7 = MainActivity.C;
                        ((ae) obj3).getClass();
                        yh2Var.getClass();
                        switch (i5) {
                            case 0:
                                boolean zH = ag1Var.h(xi2Var2) | ag1Var.h(yh2Var);
                                Object objK = ag1Var.K();
                                if (zH || objK == bx3Var) {
                                    objK = new e92(xi2Var2, yh2Var, i6);
                                    ag1Var.g0(objK);
                                }
                                ne1 ne1Var = (ne1) objK;
                                boolean zH2 = ag1Var.h(xi2Var2);
                                Object objK2 = ag1Var.K();
                                if (zH2 || objK2 == bx3Var) {
                                    objK2 = new f92(xi2Var2, i6);
                                    ag1Var.g0(objK2);
                                }
                                ne1 ne1Var2 = (ne1) objK2;
                                boolean zH3 = ag1Var.h(xi2Var2);
                                Object objK3 = ag1Var.K();
                                if (zH3 || objK3 == bx3Var) {
                                    objK3 = new f92(xi2Var2, 1);
                                    ag1Var.g0(objK3);
                                }
                                on4.b(ne1Var, ne1Var2, (ne1) objK3, ag1Var, 0);
                                break;
                            default:
                                boolean zH4 = ag1Var.h(xi2Var2) | ag1Var.h(yh2Var);
                                Object objK4 = ag1Var.K();
                                if (zH4 || objK4 == bx3Var) {
                                    objK4 = new e92(xi2Var2, yh2Var, 4);
                                    ag1Var.g0(objK4);
                                }
                                qj0.g((ne1) objK4, ag1Var, 0);
                                break;
                        }
                        return t64Var2;
                    }
                }), 254);
                nt1.n(ti2Var, (String) se3.c.a, null, new ka0(-1946110813, true, new y82(mainActivity, xi2Var, i)), 254);
                nt1.n(ti2Var, (String) ue3.c.a, null, new ka0(1914892802, true, new gf1() { // from class: a92
                    @Override // defpackage.gf1
                    public final Object n(Object obj3, Object obj4, Object obj5, Object obj6) {
                        int i5 = i2;
                        t64 t64Var2 = t64.a;
                        bx3 bx3Var = rb0.a;
                        xi2 xi2Var2 = xi2Var;
                        int i6 = 0;
                        yh2 yh2Var = (yh2) obj4;
                        ag1 ag1Var = (ag1) obj5;
                        ((Integer) obj6).getClass();
                        int i7 = MainActivity.C;
                        ((ae) obj3).getClass();
                        yh2Var.getClass();
                        switch (i5) {
                            case 0:
                                boolean zH = ag1Var.h(xi2Var2) | ag1Var.h(yh2Var);
                                Object objK = ag1Var.K();
                                if (zH || objK == bx3Var) {
                                    objK = new e92(xi2Var2, yh2Var, i6);
                                    ag1Var.g0(objK);
                                }
                                ne1 ne1Var = (ne1) objK;
                                boolean zH2 = ag1Var.h(xi2Var2);
                                Object objK2 = ag1Var.K();
                                if (zH2 || objK2 == bx3Var) {
                                    objK2 = new f92(xi2Var2, i6);
                                    ag1Var.g0(objK2);
                                }
                                ne1 ne1Var2 = (ne1) objK2;
                                boolean zH3 = ag1Var.h(xi2Var2);
                                Object objK3 = ag1Var.K();
                                if (zH3 || objK3 == bx3Var) {
                                    objK3 = new f92(xi2Var2, 1);
                                    ag1Var.g0(objK3);
                                }
                                on4.b(ne1Var, ne1Var2, (ne1) objK3, ag1Var, 0);
                                break;
                            default:
                                boolean zH4 = ag1Var.h(xi2Var2) | ag1Var.h(yh2Var);
                                Object objK4 = ag1Var.K();
                                if (zH4 || objK4 == bx3Var) {
                                    objK4 = new e92(xi2Var2, yh2Var, 4);
                                    ag1Var.g0(objK4);
                                }
                                qj0.g((ne1) objK4, ag1Var, 0);
                                break;
                        }
                        return t64Var2;
                    }
                }), 254);
                return t64.a;
            case 14:
                ((df2) this.o).c.add(new af2(obj, (yh3) this.p));
                return t64.a;
            case 15:
                File file = (File) this.o;
                hz2 hz2Var = (hz2) this.p;
                t64 t64Var2 = t64.a;
                if (nt1.g((String) obj, file.getName())) {
                    Object objN = hz2Var.s.n(t64Var2);
                    if (objN instanceof y30) {
                        Object obj3 = ((z30) ca.H(d01.n, new n(hz2Var, dh0Var, 9))).a;
                    }
                }
                return t64Var2;
            case 16:
                qi2 qi2Var = (qi2) this.o;
                ii2 ii2Var = ((xi2) this.p).b;
                kj2 kj2Var = (kj2) obj;
                kj2Var.getClass();
                ij2 ij2Var = kj2Var.a;
                ij2Var.e = 0;
                ij2Var.f = 0;
                if (qi2Var instanceof si2) {
                    int i5 = qi2.r;
                    Iterator it = mt1.z(qi2Var).iterator();
                    while (true) {
                        if (it.hasNext()) {
                            qi2 qi2Var2 = (qi2) it.next();
                            qi2 qi2VarH = ii2Var.h();
                            if (nt1.g(qi2Var2, qi2VarH != null ? qi2VarH.p : null)) {
                            }
                        } else {
                            int i6 = si2.t;
                            Iterator it2 = ci3.K(ii2Var.i(), new z82(11)).iterator();
                            if (!it2.hasNext()) {
                                q73.l("Sequence is empty.");
                                return null;
                            }
                            Object next = it2.next();
                            while (it2.hasNext()) {
                                next = it2.next();
                            }
                            kj2Var.a(((qi2) next).o.a);
                            kj2Var.f = false;
                            kj2Var.g = true;
                        }
                    }
                }
                return t64.a;
            case 17:
                return new aq(4, (tr3) this.o, (wa0) this.p);
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                xi2 xi2Var2 = (xi2) this.o;
                p22 p22Var = (p22) this.p;
                p22Var.getClass();
                ii2 ii2Var2 = xi2Var2.b;
                fi2 fi2Var = ii2Var2.s;
                if (!p22Var.equals(ii2Var2.o)) {
                    p22 p22Var2 = ii2Var2.o;
                    if (p22Var2 != null && (lifecycle = p22Var2.getLifecycle()) != null) {
                        lifecycle.b(fi2Var);
                    }
                    ii2Var2.o = p22Var;
                    p22Var.getLifecycle().a(fi2Var);
                }
                return new gj2(0);
            case 19:
                ((ir3) this.o).j(null);
                ((hz2) this.p).n((sf0) obj);
                return t64.a;
            case 20:
                yr2 yr2Var = (yr2) this.o;
                dv2 dv2Var = (dv2) this.p;
                cv2 cv2Var = (cv2) obj;
                boolean z = yr2Var.F;
                float f = yr2Var.B;
                if (z) {
                    cv2.j(cv2Var, dv2Var, cv2Var.N(f), cv2Var.N(yr2Var.C));
                } else {
                    cv2.h(cv2Var, dv2Var, cv2Var.N(f), cv2Var.N(yr2Var.C));
                }
                return t64.a;
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                vp vpVar2 = (vp) this.o;
                cb0 cb0Var = (cb0) this.p;
                vpVar2.a(cb0Var);
                return new aq(5, vpVar2, cb0Var);
            case 22:
                nx2 nx2Var = (nx2) this.o;
                mx2 mx2Var = (mx2) this.p;
                jb3 jb3Var2 = (jb3) obj;
                jb3Var2.getClass();
                nx2Var.b.F(jb3Var2, mx2Var);
                return t64.a;
            case ConnectionResult.API_DISABLED /* 23 */:
                ec0 ec0Var = (ec0) this.o;
                lg2 lg2Var = (lg2) this.p;
                ec0Var.A(obj);
                if (lg2Var != null) {
                    lg2Var.a(obj);
                }
                return t64.a;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                h33 h33Var = (h33) this.o;
                Throwable th = (Throwable) this.p;
                Throwable th2 = (Throwable) obj;
                synchronized (h33Var.c) {
                    if (th == null) {
                        th = null;
                    } else if (th2 != null) {
                        try {
                            if (th2 instanceof CancellationException) {
                                th2 = null;
                            }
                            if (th2 != null) {
                                on4.j(th, th2);
                            }
                        } catch (Throwable th3) {
                            throw th3;
                        }
                    }
                    h33Var.e = th;
                    wr3 wr3Var = h33Var.f119u;
                    f33 f33Var = f33.n;
                    wr3Var.getClass();
                    wr3Var.i(null, f33Var);
                }
                return t64.a;
            case 25:
                ((wg2) this.o).a.setValue(new a31((hd4) this.p, (hd4) obj));
                return t64.a;
            case 26:
                bg3 bg3Var = (bg3) this.o;
                dg3 dg3Var = (dg3) this.p;
                nw0 nw0Var = (nw0) obj;
                float f2 = nw0Var.b ? -1.0f : 1.0f;
                long j = nw0Var.a;
                bg3Var.a(1, go2.f(f2, dg3Var.d == hr2.o ? go2.a(1, j) : go2.a(2, j)));
                return t64.a;
            case 27:
                xv3 xv3Var = (xv3) this.o;
                vv3 vv3Var = (vv3) this.p;
                jb3 jb3Var3 = (jb3) obj;
                jb3Var3.getClass();
                xv3Var.b.F(jb3Var3, vv3Var);
                return t64.a;
            case 28:
                ca.y((qi0) this.o, null, ti0.q, new ej2((n14) this.p, null), 1);
                return new gj2(1);
            default:
                ib0 ib0Var = (ib0) this.o;
                ((pg3) ib0Var).G(new ip3(new q14(i, Thread.currentThread(), (qi0) this.p)));
                return new s6(6, ib0Var);
        }
    }

    public /* synthetic */ m(int i, Object obj, Object obj2) {
        this.n = i;
        this.o = obj;
        this.p = obj2;
    }
}
