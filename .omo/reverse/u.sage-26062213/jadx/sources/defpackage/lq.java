package defpackage;

import com.google.android.gms.common.ConnectionResult;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class lq implements ff1 {
    public final /* synthetic */ int n;

    public /* synthetic */ lq(long j) {
        this.n = 1;
    }

    @Override // defpackage.ff1
    public final Object d(Object obj, Object obj2, Object obj3) {
        int i = this.n;
        kd2 kd2Var = kd2.b;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                dv2 dv2VarE = ((ya2) obj2).e(((mf0) obj3).a);
                break;
            case 1:
                ag1 ag1Var = (ag1) obj2;
                ((Integer) obj3).getClass();
                ag1Var.W(-1218883371);
                ag1Var.p(false);
                Object objK = ag1Var.K();
                if (objK == rb0.a) {
                    objK = ca.A(null);
                    ag1Var.g0(objK);
                }
                pg2 pg2Var = (pg2) objK;
                db2 db2VarD = qx.d(mj1.s, false);
                int iHashCode = Long.hashCode(ag1Var.T);
                hu2 hu2VarL = ag1Var.l();
                nd2 nd2VarH = is0.H(ag1Var, kd2Var);
                lb0.c.getClass();
                ic0 ic0Var = kb0.b;
                ag1Var.Z();
                if (ag1Var.S) {
                    ag1Var.k(ic0Var);
                } else {
                    ag1Var.j0();
                }
                ht4.D(kb0.f, ag1Var, db2VarD);
                ht4.D(kb0.e, ag1Var, hu2VarL);
                ht4.D(kb0.g, ag1Var, Integer.valueOf(iHashCode));
                ht4.y(ag1Var, kb0.h);
                ht4.D(kb0.d, ag1Var, nd2VarH);
                df1 df1Var = (df1) pg2Var.getValue();
                if (df1Var == null) {
                    ag1Var.W(-657207800);
                } else {
                    ag1Var.W(671536409);
                    df1Var.f(ag1Var, 0);
                }
                ag1Var.p(false);
                ag1Var.p(true);
                break;
            case 2:
                ag1 ag1Var2 = (ag1) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                if (!ag1Var2.N(iIntValue & 1, (iIntValue & 17) != 16)) {
                    ag1Var2.Q();
                }
                break;
            case 3:
                ag1 ag1Var3 = (ag1) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ((db3) obj).getClass();
                if (!ag1Var3.N(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    ag1Var3.Q();
                } else {
                    qn1.a(fl4.r(), null, on3.c(kd2Var, 16.0f), 0L, ag1Var3, 432, 8);
                    mt1.f(ag1Var3, on3.f(8.0f));
                    lx3.b("In 10s", null, 0L, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ag1Var3, 6, 0, 262142);
                }
                break;
            case 4:
                ag1 ag1Var4 = (ag1) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                ((db3) obj).getClass();
                if (!ag1Var4.N(iIntValue3 & 1, (iIntValue3 & 17) != 16)) {
                    ag1Var4.Q();
                } else {
                    qn1.a(fl4.r(), null, on3.c(kd2Var, 16.0f), 0L, ag1Var4, 432, 8);
                    mt1.f(ag1Var4, on3.f(8.0f));
                    lx3.b("In 60s", null, 0L, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ag1Var4, 6, 0, 262142);
                }
                break;
            case 5:
                ag1 ag1Var5 = (ag1) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                ((db3) obj).getClass();
                if (!ag1Var5.N(iIntValue4 & 1, (iIntValue4 & 17) != 16)) {
                    ag1Var5.Q();
                } else {
                    lx3.b("Freeze Claude", null, 0L, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ag1Var5, 6, 0, 262142);
                }
                break;
            case 6:
                ag1 ag1Var6 = (ag1) obj2;
                int iIntValue5 = ((Integer) obj3).intValue();
                ((db3) obj).getClass();
                if (!ag1Var6.N(iIntValue5 & 1, (iIntValue5 & 17) != 16)) {
                    ag1Var6.Q();
                } else {
                    lx3.b("Freeze Copilot", null, 0L, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ag1Var6, 6, 0, 262142);
                }
                break;
            case 7:
                ag1 ag1Var7 = (ag1) obj2;
                int iIntValue6 = ((Integer) obj3).intValue();
                ((db3) obj).getClass();
                if (!ag1Var7.N(iIntValue6 & 1, (iIntValue6 & 17) != 16)) {
                    ag1Var7.Q();
                } else {
                    lx3.b(on4.O(R.string.got_it, ag1Var7), null, 0L, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ag1Var7, 0, 0, 262142);
                }
                break;
            case 8:
                ag1 ag1Var8 = (ag1) obj2;
                int iIntValue7 = ((Integer) obj3).intValue();
                ((db3) obj).getClass();
                if (!ag1Var8.N(iIntValue7 & 1, (iIntValue7 & 17) != 16)) {
                    ag1Var8.Q();
                } else {
                    lx3.b(on4.O(R.string.got_it, ag1Var8), null, 0L, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ag1Var8, 0, 0, 262142);
                }
                break;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                fo3 fo3Var = (fo3) obj;
                ag1 ag1Var9 = (ag1) obj2;
                int iIntValue8 = ((Integer) obj3).intValue();
                if ((iIntValue8 & 6) == 0) {
                    iIntValue8 |= ag1Var9.f(fo3Var) ? 4 : 2;
                }
                if (!ag1Var9.N(iIntValue8 & 1, (iIntValue8 & 19) != 18)) {
                    ag1Var9.Q();
                } else {
                    c75.h(fo3Var, null, null, 0L, 0L, 0L, 0L, 0L, ag1Var9, iIntValue8 & 14);
                }
                break;
            default:
                ag1 ag1Var10 = (ag1) obj2;
                ((Integer) obj3).getClass();
                ((pe) obj).getClass();
                wu3.a(is0.O(kd2Var, 8.0f, 0.0f, 0.0f, 14), oa3.a(4.0f), ((ua2) ag1Var10.j(wa2.a)).a.O, 0L, 0.0f, null, dm0.k, ag1Var10, 12582918, 120);
                break;
        }
        return t64Var;
    }

    public /* synthetic */ lq(int i) {
        this.n = i;
    }
}
