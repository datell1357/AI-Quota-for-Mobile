package defpackage;

import android.os.Build;
import android.view.View;
import java.util.Arrays;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e02 implements ff1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ Object r;

    public /* synthetic */ e02(y84 y84Var, ne1 ne1Var, pg2 pg2Var, pg2 pg2Var2) {
        this.n = 2;
        this.o = y84Var;
        this.p = ne1Var;
        this.r = pg2Var;
        this.q = pg2Var2;
    }

    @Override // defpackage.ff1
    public final Object d(Object obj, Object obj2, Object obj3) {
        nd2 nd2VarC;
        Object obj4;
        int i = this.n;
        t64 t64Var = t64.a;
        Object obj5 = rb0.a;
        Object obj6 = this.q;
        Object obj7 = this.r;
        Object obj8 = this.p;
        Object obj9 = this.o;
        int i2 = 0;
        switch (i) {
            case 0:
                n02 n02Var = (n02) obj9;
                nd2 nd2Var = (nd2) obj8;
                e12 e12Var = (e12) obj6;
                pg2 pg2Var = (pg2) obj7;
                fc3 fc3Var = (fc3) obj;
                ag1 ag1Var = (ag1) obj2;
                ((Integer) obj3).getClass();
                Object objK = ag1Var.K();
                if (objK == obj5) {
                    objK = new c02(fc3Var, new f02(pg2Var, 0));
                    ag1Var.g0(objK);
                }
                c02 c02Var = (c02) objK;
                Object objK2 = ag1Var.K();
                if (objK2 == obj5) {
                    xh1 xh1Var = new xh1();
                    xh1Var.n = c02Var;
                    cg2 cg2Var = sn2.a;
                    xh1Var.o = new cg2();
                    objK2 = new pt3(xh1Var);
                    ag1Var.g0(objK2);
                }
                pt3 pt3Var = (pt3) objK2;
                if (n02Var != null) {
                    ag1Var.W(1743490539);
                    ag1Var.W(887527095);
                    String str = Build.FINGERPRINT;
                    if (str == null || !str.equals("robolectric")) {
                        ag1Var.W(1345729441);
                        View view = (View) ag1Var.j(ea.f);
                        boolean zF = ag1Var.f(view);
                        Object objK3 = ag1Var.K();
                        if (zF || objK3 == obj5) {
                            Object tag = view.getTag(R.id.compose_prefetch_scheduler);
                            Object acVar = tag instanceof dy2 ? (dy2) tag : null;
                            if (acVar == null) {
                                acVar = new ac(view);
                                view.setTag(R.id.compose_prefetch_scheduler, acVar);
                            }
                            objK3 = acVar;
                            ag1Var.g0(objK3);
                        }
                        obj4 = (dy2) objK3;
                        ag1Var.p(false);
                    } else {
                        ag1Var.W(1345548711);
                        Object objK4 = ag1Var.K();
                        if (objK4 == obj5) {
                            objK4 = new ey2();
                            ag1Var.g0(objK4);
                        }
                        obj4 = (ey2) objK4;
                        ag1Var.p(false);
                    }
                    ag1Var.p(false);
                    Object[] objArr = {n02Var, c02Var, pt3Var, obj4};
                    boolean zF2 = ag1Var.f(n02Var) | ag1Var.h(c02Var) | ag1Var.h(pt3Var) | ag1Var.h(obj4);
                    Object objK5 = ag1Var.K();
                    if (zF2 || objK5 == obj5) {
                        Object k4Var = new k4(n02Var, c02Var, pt3Var, obj4, 4);
                        ag1Var.g0(k4Var);
                        objK5 = k4Var;
                    }
                    pe1 pe1Var = (pe1) objK5;
                    Object[] objArrCopyOf = Arrays.copyOf(objArr, 4);
                    boolean zF3 = false;
                    for (Object obj10 : objArrCopyOf) {
                        zF3 |= ag1Var.f(obj10);
                    }
                    Object objK6 = ag1Var.K();
                    if (zF3 || objK6 == obj5) {
                        ag1Var.g0(new fv0(pe1Var));
                    }
                    ag1Var.p(false);
                } else {
                    ag1Var.W(1744076749);
                    ag1Var.p(false);
                }
                int i3 = o02.a;
                if (n02Var != null && (nd2VarC = nd2Var.c(new c24(n02Var))) != null) {
                    nd2Var = nd2VarC;
                }
                boolean zF4 = ag1Var.f(c02Var) | ag1Var.f(e12Var);
                Object objK7 = ag1Var.K();
                if (zF4 || objK7 == obj5) {
                    objK7 = new l4(11, c02Var, e12Var);
                    ag1Var.g0(objK7);
                }
                mt3.b(pt3Var, nd2Var, (df1) objK7, ag1Var, 8);
                break;
            case 1:
                fo3 fo3Var = (fo3) obj9;
                fo3 fo3Var2 = (fo3) obj8;
                Object obj11 = (m41) obj6;
                String str2 = (String) obj7;
                df1 df1Var = (df1) obj;
                ag1 ag1Var2 = (ag1) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= ag1Var2.h(df1Var) ? 4 : 2;
                }
                if (ag1Var2.N(iIntValue & 1, (iIntValue & 19) != 18)) {
                    boolean zG = nt1.g(fo3Var, fo3Var2);
                    yq3 yq3VarY = zf5.Y(fe2.p, ag1Var2);
                    boolean zF5 = ag1Var2.f(fo3Var) | ag1Var2.h(obj11);
                    Object objK8 = ag1Var2.K();
                    if (zF5 || objK8 == obj5) {
                        objK8 = new do3(i2, fo3Var, obj11);
                        ag1Var2.g0(objK8);
                    }
                    ne1 ne1Var = (ne1) objK8;
                    Object objK9 = ag1Var2.K();
                    if (objK9 == obj5) {
                        objK9 = dm0.a(!zG ? 1.0f : 0.0f);
                        ag1Var2.g0(objK9);
                    }
                    pd pdVar = (pd) objK9;
                    Boolean boolValueOf = Boolean.valueOf(zG);
                    boolean zH = ag1Var2.h(pdVar) | ag1Var2.g(zG) | ag1Var2.h(yq3VarY) | ag1Var2.f(ne1Var);
                    Object objK10 = ag1Var2.K();
                    if (zH || objK10 == obj5) {
                        Object s93Var = new s93(pdVar, zG, yq3VarY, ne1Var, null);
                        ag1Var2.g0(s93Var);
                        objK10 = s93Var;
                    }
                    zf5.c((df1) objK10, ag1Var2, boolValueOf);
                    we weVar = pdVar.c;
                    yq3 yq3VarY2 = zf5.Y(fe2.n, ag1Var2);
                    Object objK11 = ag1Var2.K();
                    if (objK11 == obj5) {
                        objK11 = dm0.a(!zG ? 1.0f : 0.8f);
                        ag1Var2.g0(objK11);
                    }
                    pd pdVar2 = (pd) objK11;
                    Boolean boolValueOf2 = Boolean.valueOf(zG);
                    boolean zH2 = ag1Var2.h(pdVar2) | ag1Var2.g(zG) | ag1Var2.h(yq3VarY2);
                    Object objK12 = ag1Var2.K();
                    if (zH2 || objK12 == obj5) {
                        objK12 = new ml0(pdVar2, zG, yq3VarY2, (dh0) null);
                        ag1Var2.g0(objK12);
                    }
                    zf5.c((df1) objK12, ag1Var2, boolValueOf2);
                    we weVar2 = pdVar2.c;
                    nd2 nd2VarR0 = n44.r0(kd2.b, ((Number) weVar2.o.getValue()).floatValue(), ((Number) weVar2.o.getValue()).floatValue(), ((Number) weVar.o.getValue()).floatValue(), 0.0f, null, false, 1048568);
                    boolean zG2 = ag1Var2.g(zG) | ag1Var2.f(fo3Var) | ag1Var2.f(str2);
                    Object objK13 = ag1Var2.K();
                    if (zG2 || objK13 == obj5) {
                        objK13 = new ot0(zG, str2, fo3Var);
                        ag1Var2.g0(objK13);
                    }
                    nd2 nd2VarA = dh3.a(nd2VarR0, (pe1) objK13);
                    db2 db2VarD = qx.d(mj1.o, false);
                    int iHashCode = Long.hashCode(ag1Var2.T);
                    hu2 hu2VarL = ag1Var2.l();
                    nd2 nd2VarH = is0.H(ag1Var2, nd2VarA);
                    lb0.c.getClass();
                    ne1 ne1Var2 = kb0.b;
                    ag1Var2.Z();
                    if (ag1Var2.S) {
                        ag1Var2.k(ne1Var2);
                    } else {
                        ag1Var2.j0();
                    }
                    ht4.D(kb0.f, ag1Var2, db2VarD);
                    ht4.D(kb0.e, ag1Var2, hu2VarL);
                    ht4.D(kb0.g, ag1Var2, Integer.valueOf(iHashCode));
                    ht4.y(ag1Var2, kb0.h);
                    ht4.D(kb0.d, ag1Var2, nd2VarH);
                    df1Var.f(ag1Var2, Integer.valueOf(iIntValue & 14));
                    ag1Var2.p(true);
                } else {
                    ag1Var2.Q();
                }
                break;
            default:
                y84 y84Var = (y84) obj9;
                ne1 ne1Var3 = (ne1) obj8;
                ag1 ag1Var3 = (ag1) obj2;
                ((Integer) obj3).getClass();
                ((pe) obj).getClass();
                String str3 = (String) ((pg2) obj7).getValue();
                String str4 = (String) ((pg2) obj6).getValue();
                boolean zF6 = ag1Var3.f(ne1Var3);
                Object objK14 = ag1Var3.K();
                if (zF6 || objK14 == obj5) {
                    objK14 = new zi1(2, ne1Var3);
                    ag1Var3.g0(objK14);
                }
                kt4.i(str3, str4, y84Var, (ne1) objK14, ag1Var3, 0);
                break;
        }
        return t64Var;
    }

    public /* synthetic */ e02(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.n = i;
        this.o = obj;
        this.p = obj2;
        this.q = obj3;
        this.r = obj4;
    }
}
