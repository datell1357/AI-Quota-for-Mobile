package defpackage;

import android.content.Context;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class mn0 implements ff1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;

    public /* synthetic */ mn0(hh2 hh2Var, gh2 gh2Var) {
        this.n = 6;
        this.o = hh2Var;
    }

    @Override // defpackage.ff1
    public final Object d(Object obj, Object obj2, Object obj3) throws XmlPullParserException, IOException {
        ag1 ag1Var;
        long jU;
        int i = this.n;
        oh ohVar = th.c;
        dh0 dh0Var = null;
        bx3 bx3Var = rb0.a;
        kd2 kd2Var = kd2.b;
        int i2 = 1;
        boolean z = false;
        t64 t64Var = t64.a;
        Object obj4 = this.o;
        switch (i) {
            case 0:
                tr3 tr3Var = (tr3) obj4;
                zr2 zr2Var = (zr2) obj;
                ag1 ag1Var2 = (ag1) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                zr2Var.getClass();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= ag1Var2.f(zr2Var) ? 4 : 2;
                }
                if (ag1Var2.N(iIntValue & 1, (iIntValue & 19) != 18)) {
                    nd2 nd2VarJ = is0.J(kd2Var, zr2Var);
                    k80 k80VarA = i80.a(ohVar, mj1.z, ag1Var2, 0);
                    int iHashCode = Long.hashCode(ag1Var2.T);
                    hu2 hu2VarL = ag1Var2.l();
                    nd2 nd2VarH = is0.H(ag1Var2, nd2VarJ);
                    lb0.c.getClass();
                    ic0 ic0Var = kb0.b;
                    ag1Var2.Z();
                    if (ag1Var2.S) {
                        ag1Var2.k(ic0Var);
                    } else {
                        ag1Var2.j0();
                    }
                    fd fdVar = kb0.f;
                    ht4.D(fdVar, ag1Var2, k80VarA);
                    fd fdVar2 = kb0.e;
                    ht4.D(fdVar2, ag1Var2, hu2VarL);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    fd fdVar3 = kb0.g;
                    ht4.D(fdVar3, ag1Var2, numValueOf);
                    l9 l9Var = kb0.h;
                    ht4.y(ag1Var2, l9Var);
                    fd fdVar4 = kb0.d;
                    ht4.D(fdVar4, ag1Var2, nd2VarH);
                    if (((List) tr3Var.getValue()).isEmpty()) {
                        ag1Var2.W(-1103386054);
                        u51 u51Var = on3.b;
                        db2 db2VarD = qx.d(mj1.s, false);
                        int iHashCode2 = Long.hashCode(ag1Var2.T);
                        hu2 hu2VarL2 = ag1Var2.l();
                        nd2 nd2VarH2 = is0.H(ag1Var2, u51Var);
                        ag1Var2.Z();
                        if (ag1Var2.S) {
                            ag1Var2.k(ic0Var);
                        } else {
                            ag1Var2.j0();
                        }
                        ht4.D(fdVar, ag1Var2, db2VarD);
                        ht4.D(fdVar2, ag1Var2, hu2VarL2);
                        di0.C(iHashCode2, ag1Var2, fdVar3, ag1Var2, l9Var);
                        ht4.D(fdVar4, ag1Var2, nd2VarH2);
                        lx3.b("No events logged.", null, ((ua2) ag1Var2.j(wa2.a)).a.s, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ag1Var2, 6, 0, 262138);
                        ag1Var = ag1Var2;
                        ag1Var.p(true);
                        ag1Var.p(false);
                    } else {
                        ag1Var = ag1Var2;
                        ag1Var.W(-1103145897);
                        u51 u51Var2 = on3.b;
                        ds2 ds2Var = new ds2(16.0f, 16.0f, 16.0f, 16.0f);
                        boolean zF = ag1Var.f(tr3Var);
                        Object objK = ag1Var.K();
                        if (zF || objK == bx3Var) {
                            objK = new nn0(tr3Var, z ? 1 : 0);
                            ag1Var.g0(objK);
                        }
                        qj0.h(u51Var2, null, ds2Var, null, null, null, false, null, (pe1) objK, ag1Var, 390);
                        ag1Var.p(false);
                    }
                    ag1Var.p(true);
                } else {
                    ag1Var2.Q();
                }
                break;
            case 1:
                pg2 pg2Var = (pg2) obj4;
                zr2 zr2Var2 = (zr2) obj;
                ag1 ag1Var3 = (ag1) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                zr2Var2.getClass();
                if ((iIntValue2 & 6) == 0) {
                    iIntValue2 |= ag1Var3.f(zr2Var2) ? 4 : 2;
                }
                if (!ag1Var3.N(iIntValue2 & 1, (iIntValue2 & 19) != 18)) {
                    ag1Var3.Q();
                } else if (((String) pg2Var.getValue()).length() == 0) {
                    ag1Var3.W(984234759);
                    nd2 nd2VarJ2 = is0.J(on3.b, zr2Var2);
                    db2 db2VarD2 = qx.d(mj1.s, false);
                    int iHashCode3 = Long.hashCode(ag1Var3.T);
                    hu2 hu2VarL3 = ag1Var3.l();
                    nd2 nd2VarH3 = is0.H(ag1Var3, nd2VarJ2);
                    lb0.c.getClass();
                    ic0 ic0Var2 = kb0.b;
                    ag1Var3.Z();
                    if (ag1Var3.S) {
                        ag1Var3.k(ic0Var2);
                    } else {
                        ag1Var3.j0();
                    }
                    ht4.D(kb0.f, ag1Var3, db2VarD2);
                    ht4.D(kb0.e, ag1Var3, hu2VarL3);
                    ht4.D(kb0.g, ag1Var3, Integer.valueOf(iHashCode3));
                    ht4.y(ag1Var3, kb0.h);
                    ht4.D(kb0.d, ag1Var3, nd2VarH3);
                    is3 is3Var = wa2.a;
                    lx3.b("No diagnostic logs yet.\n\nLogs are recorded when RollingWindowWorker runs.", null, ((ua2) ag1Var3.j(is3Var)).a.s, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, ((ua2) ag1Var3.j(is3Var)).b.k, ag1Var3, 6, 0, 131066);
                    ag1Var3.p(true);
                    ag1Var3.p(false);
                } else {
                    ag1Var3.W(984747468);
                    lf3 lf3VarO = w80.O(ag1Var3);
                    lf3 lf3VarO2 = w80.O(ag1Var3);
                    String str = (String) pg2Var.getValue();
                    boolean zF2 = ag1Var3.f(lf3VarO);
                    Object objK2 = ag1Var3.K();
                    Object obj5 = objK2;
                    if (zF2 || objK2 == bx3Var) {
                        x50 x50Var = new x50(lf3VarO, dh0Var, 3);
                        ag1Var3.g0(x50Var);
                        obj5 = x50Var;
                    }
                    zf5.c((df1) obj5, ag1Var3, str);
                    u51 u51Var3 = on3.b;
                    nd2 nd2VarJ3 = is0.J(u51Var3, zr2Var2);
                    db2 db2VarD3 = qx.d(mj1.o, false);
                    int iHashCode4 = Long.hashCode(ag1Var3.T);
                    hu2 hu2VarL4 = ag1Var3.l();
                    nd2 nd2VarH4 = is0.H(ag1Var3, nd2VarJ3);
                    lb0.c.getClass();
                    ic0 ic0Var3 = kb0.b;
                    ag1Var3.Z();
                    if (ag1Var3.S) {
                        ag1Var3.k(ic0Var3);
                    } else {
                        ag1Var3.j0();
                    }
                    ht4.D(kb0.f, ag1Var3, db2VarD3);
                    ht4.D(kb0.e, ag1Var3, hu2VarL4);
                    ht4.D(kb0.g, ag1Var3, Integer.valueOf(iHashCode4));
                    ht4.y(ag1Var3, kb0.h);
                    ht4.D(kb0.d, ag1Var3, nd2VarH4);
                    lx3.b((String) pg2Var.getValue(), is0.K(w80.T(w80.T(u51Var3, lf3VarO, true), lf3VarO2, false), 12.0f), ((ua2) ag1Var3.j(wa2.a)).a.q, on4.D(11), null, ra1.d, 0L, null, on4.D(16), 0, false, 0, 0, null, ag1Var3, 24576, 48, 259944);
                    ag1Var3.p(true);
                    ag1Var3.p(false);
                }
                break;
            case 2:
                pe1 pe1Var = (pe1) obj4;
                zr2 zr2Var3 = (zr2) obj;
                ag1 ag1Var4 = (ag1) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                zr2Var3.getClass();
                if ((iIntValue3 & 6) == 0) {
                    iIntValue3 |= ag1Var4.f(zr2Var3) ? 4 : 2;
                }
                if (ag1Var4.N(iIntValue3 & 1, (iIntValue3 & 19) != 18)) {
                    nd2 nd2VarM = is0.M(is0.J(on3.b, zr2Var3), 24.0f, 0.0f, 2);
                    k80 k80VarA2 = i80.a(ohVar, mj1.A, ag1Var4, 48);
                    int iHashCode5 = Long.hashCode(ag1Var4.T);
                    hu2 hu2VarL5 = ag1Var4.l();
                    nd2 nd2VarH5 = is0.H(ag1Var4, nd2VarM);
                    lb0.c.getClass();
                    ic0 ic0Var4 = kb0.b;
                    ag1Var4.Z();
                    if (ag1Var4.S) {
                        ag1Var4.k(ic0Var4);
                    } else {
                        ag1Var4.j0();
                    }
                    ht4.D(kb0.f, ag1Var4, k80VarA2);
                    ht4.D(kb0.e, ag1Var4, hu2VarL5);
                    ht4.D(kb0.g, ag1Var4, Integer.valueOf(iHashCode5));
                    ht4.y(ag1Var4, kb0.h);
                    ht4.D(kb0.d, ag1Var4, nd2VarH5);
                    mt1.f(ag1Var4, on3.b(kd2Var, 16.0f));
                    String strO = on4.O(R.string.widget_config_title, ag1Var4);
                    is3 is3Var2 = wa2.a;
                    lx3.b(strO, null, ((ua2) ag1Var4.j(is3Var2)).a.o, 0L, pb1.r, null, 0L, null, 0L, 0, false, 0, 0, ((ua2) ag1Var4.j(is3Var2)).b.f, ag1Var4, 1572864, 0, 131002);
                    mt1.f(ag1Var4, on3.b(kd2Var, 8.0f));
                    lx3.b(on4.O(R.string.widget_config_subtitle, ag1Var4), null, ((ua2) ag1Var4.j(is3Var2)).a.s, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, ((ua2) ag1Var4.j(is3Var2)).b.k, ag1Var4, 0, 0, 131066);
                    mt1.f(ag1Var4, on3.b(kd2Var, 32.0f));
                    Context context = (Context) ag1Var4.j(ea.b);
                    boolean zF3 = ag1Var4.f(context);
                    Object objK3 = ag1Var4.K();
                    Object obj6 = objK3;
                    if (zF3 || objK3 == bx3Var) {
                        Context applicationContext = context.getApplicationContext();
                        applicationContext.getClass();
                        ri3 ri3Var = (ri3) ((vl0) ((fn3) gg4.w(applicationContext, fn3.class))).d.get();
                        ag1Var4.g0(ri3Var);
                        obj6 = ri3Var;
                    }
                    pg2 pg2VarH = ca.h(((ri3) obj6).c, ag1Var4);
                    ag1Var4.W(945558922);
                    ArrayList arrayList = new ArrayList();
                    for (Object obj7 : y84.x) {
                        if (!nt1.g(((Map) pg2VarH.getValue()).get((y84) obj7), Boolean.FALSE)) {
                            arrayList.add(obj7);
                        }
                    }
                    int size = arrayList.size();
                    int i3 = 0;
                    while (i3 < size) {
                        Object obj8 = arrayList.get(i3);
                        i3++;
                        y84 y84Var = (y84) obj8;
                        boolean zF4 = ag1Var4.f(pe1Var) | ag1Var4.d(y84Var.ordinal());
                        Object objK4 = ag1Var4.K();
                        if (zF4 || objK4 == bx3Var) {
                            objK4 = new do3(i2, pe1Var, y84Var);
                            ag1Var4.g0(objK4);
                        }
                        tv4.f(y84Var, (ne1) objK4, ag1Var4, 0);
                        mt1.f(ag1Var4, on3.b(kd2Var, 12.0f));
                    }
                    ag1Var4.p(false);
                    mt1.f(ag1Var4, new nz1(1.0f, true));
                    String strO2 = on4.O(R.string.widget_config_multiple_widgets_note, ag1Var4);
                    is3 is3Var3 = wa2.a;
                    lx3.b(strO2, null, ((ua2) ag1Var4.j(is3Var3)).a.s, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, ((ua2) ag1Var4.j(is3Var3)).b.l, ag1Var4, 0, 0, 131066);
                    mt1.f(ag1Var4, on3.b(kd2Var, 16.0f));
                    ag1Var4.p(true);
                } else {
                    ag1Var4.Q();
                }
                break;
            case 3:
                y84 y84Var2 = (y84) obj4;
                ag1 ag1Var5 = (ag1) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                ((l80) obj).getClass();
                if (ag1Var5.N(iIntValue4 & 1, (iIntValue4 & 17) != 16)) {
                    nd2 nd2VarL = is0.L(on3.a, 20.0f, 18.0f);
                    cb3 cb3VarA = bb3.a(th.a, mj1.y, ag1Var5, 48);
                    int iHashCode6 = Long.hashCode(ag1Var5.T);
                    hu2 hu2VarL6 = ag1Var5.l();
                    nd2 nd2VarH6 = is0.H(ag1Var5, nd2VarL);
                    lb0.c.getClass();
                    ic0 ic0Var5 = kb0.b;
                    ag1Var5.Z();
                    if (ag1Var5.S) {
                        ag1Var5.k(ic0Var5);
                    } else {
                        ag1Var5.j0();
                    }
                    ht4.D(kb0.f, ag1Var5, cb3VarA);
                    ht4.D(kb0.e, ag1Var5, hu2VarL6);
                    ht4.D(kb0.g, ag1Var5, Integer.valueOf(iHashCode6));
                    ht4.y(ag1Var5, kb0.h);
                    ht4.D(kb0.d, ag1Var5, nd2VarH6);
                    Integer numV = k30.v(y84Var2);
                    gs2 gs2VarW = kt4.W(numV != null ? numV.intValue() : y84Var2.o, ag1Var5);
                    nd2 nd2VarC = on3.c(kd2Var, 24.0f);
                    if (k30.v(y84Var2) != null) {
                        ag1Var5.W(-1292215077);
                        ag1Var5.p(false);
                        jU = t70.f;
                    } else {
                        ag1Var5.W(-1292214150);
                        jU = k30.u(y84Var2, ag1Var5);
                        ag1Var5.p(false);
                    }
                    qn1.b(gs2VarW, null, nd2VarC, jU, ag1Var5, 440, 0);
                    mt1.f(ag1Var5, on3.f(16.0f));
                    String str2 = y84Var2.n;
                    is3 is3Var4 = wa2.a;
                    lx3.b(str2, null, ((ua2) ag1Var5.j(is3Var4)).a.q, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, ((ua2) ag1Var5.j(is3Var4)).b.j, ag1Var5, 0, 0, 131066);
                    ag1Var5.p(true);
                } else {
                    ag1Var5.Q();
                }
                break;
            case 4:
                ((Integer) obj3).getClass();
                ((pe) obj).getClass();
                ix.e(((y3) obj4).a, (ag1) obj2, 0);
                break;
            case 5:
                ((v) obj4).k((Throwable) obj);
                break;
            case 6:
                hh2 hh2Var = (hh2) obj4;
                hh2.w.set(hh2Var, null);
                hh2Var.b(null);
                break;
            case 7:
                ((uh3) obj4).d();
                break;
            default:
                String str3 = (String) obj4;
                ag1 ag1Var6 = (ag1) obj2;
                int iIntValue5 = ((Integer) obj3).intValue();
                ((db3) obj).getClass();
                if (ag1Var6.N(iIntValue5 & 1, (iIntValue5 & 17) != 16)) {
                    lx3.b(str3, null, 0L, on4.D(17), null, null, 0L, null, 0L, 0, false, 0, 0, ((ua2) ag1Var6.j(wa2.a)).b.m, ag1Var6, 24576, 0, 131054);
                } else {
                    ag1Var6.Q();
                }
                break;
        }
        return t64Var;
    }

    public /* synthetic */ mn0(int i, Object obj) {
        this.n = i;
        this.o = obj;
    }
}
