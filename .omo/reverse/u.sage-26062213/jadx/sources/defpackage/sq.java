package defpackage;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class sq implements df1 {
    public final /* synthetic */ int n;

    public /* synthetic */ sq(int i) {
        this.n = i;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.n;
        kd2 kd2Var = kd2.b;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                boolean zBooleanValue2 = ((Boolean) obj2).booleanValue();
                if (zBooleanValue != zBooleanValue2) {
                    ez3.a.getClass();
                    ra3.c(new Object[0]);
                }
                break;
            case 1:
                w3 w3Var = (w3) obj;
                w3 w3Var2 = (w3) obj2;
                w3Var.getClass();
                w3Var2.getClass();
                String strF = w3Var.f();
                String strF2 = w3Var2.f();
                break;
            case 2:
                String str = (String) obj;
                fi0 fi0Var = (fi0) obj2;
                str.getClass();
                fi0Var.getClass();
                if (str.length() != 0) {
                }
                break;
            case 3:
                ag1 ag1Var = (ag1) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (!ag1Var.N(iIntValue & 1, (iIntValue & 3) != 2)) {
                    ag1Var.Q();
                } else {
                    qn1.b(kt4.W(R.drawable.anthropicon_arrow_left, ag1Var), "Back", null, 0L, ag1Var, 56, 12);
                }
                break;
            case 4:
                ag1 ag1Var2 = (ag1) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (!ag1Var2.N(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    ag1Var2.Q();
                }
                break;
            case 5:
                ag1 ag1Var3 = (ag1) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                if (!ag1Var3.N(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    ag1Var3.Q();
                } else {
                    lx3.b("Analytics Debugger", null, 0L, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ag1Var3, 6, 0, 262142);
                }
                break;
            case 6:
                ag1 ag1Var4 = (ag1) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                if (!ag1Var4.N(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    ag1Var4.Q();
                } else {
                    so1 so1VarB = qj0.k;
                    if (so1VarB == null) {
                        ro1 ro1Var = new ro1("AutoMirrored.Filled.ArrowBack", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, true, 96);
                        int i2 = ea4.a;
                        sp3 sp3Var = new sp3(t70.b);
                        ct2 ct2Var = new ct2();
                        ct2Var.h(20.0f, 11.0f);
                        ct2Var.d(7.83f);
                        ct2Var.g(5.59f, -5.59f);
                        ct2Var.f(12.0f, 4.0f);
                        ct2Var.g(-8.0f, 8.0f);
                        ct2Var.g(8.0f, 8.0f);
                        ct2Var.g(1.41f, -1.41f);
                        ct2Var.f(7.83f, 13.0f);
                        ct2Var.d(20.0f);
                        ct2Var.m(-2.0f);
                        ct2Var.a();
                        ro1.a(ro1Var, ct2Var.n, sp3Var);
                        so1VarB = ro1Var.b();
                        qj0.k = so1VarB;
                    }
                    qn1.a(so1VarB, "Back", null, 0L, ag1Var4, 48, 12);
                }
                break;
            case 7:
                ag1 ag1Var5 = (ag1) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                if (!ag1Var5.N(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    ag1Var5.Q();
                } else {
                    qn1.a(ht4.u(), "Share Logs", null, 0L, ag1Var5, 48, 12);
                }
                break;
            case 8:
                ag1 ag1Var6 = (ag1) obj;
                int iIntValue6 = ((Integer) obj2).intValue();
                if (!ag1Var6.N(iIntValue6 & 1, (iIntValue6 & 3) != 2)) {
                    ag1Var6.Q();
                } else {
                    qn1.a(ix.t(), "Clear Logs", null, 0L, ag1Var6, 48, 12);
                }
                break;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                ag1 ag1Var7 = (ag1) obj;
                int iIntValue7 = ((Integer) obj2).intValue();
                if (!ag1Var7.N(iIntValue7 & 1, (iIntValue7 & 3) != 2)) {
                    ag1Var7.Q();
                } else {
                    lx3.b("Developer Settings", null, 0L, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ag1Var7, 6, 0, 262142);
                }
                break;
            case 10:
                ag1 ag1Var8 = (ag1) obj;
                int iIntValue8 = ((Integer) obj2).intValue();
                if (!ag1Var8.N(iIntValue8 & 1, (iIntValue8 & 3) != 2)) {
                    ag1Var8.Q();
                } else {
                    qn1.b(kt4.W(R.drawable.anthropicon_arrow_left, ag1Var8), "Back", null, 0L, ag1Var8, 56, 12);
                }
                break;
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                ag1 ag1Var9 = (ag1) obj;
                int iIntValue9 = ((Integer) obj2).intValue();
                if (!ag1Var9.N(iIntValue9 & 1, (iIntValue9 & 3) != 2)) {
                    ag1Var9.Q();
                } else {
                    qn1.b(kt4.W(R.drawable.anthropicon_arrow_left, ag1Var9), "Back", null, 0L, ag1Var9, 56, 12);
                }
                break;
            case 12:
                ag1 ag1Var10 = (ag1) obj;
                int iIntValue10 = ((Integer) obj2).intValue();
                if (!ag1Var10.N(iIntValue10 & 1, (iIntValue10 & 3) != 2)) {
                    ag1Var10.Q();
                } else {
                    qn1.a(ht4.u(), "Share Logs", null, 0L, ag1Var10, 48, 12);
                }
                break;
            case 13:
                ag1 ag1Var11 = (ag1) obj;
                int iIntValue11 = ((Integer) obj2).intValue();
                if (!ag1Var11.N(iIntValue11 & 1, (iIntValue11 & 3) != 2)) {
                    ag1Var11.Q();
                } else {
                    qn1.a(ix.t(), "Clear Logs", null, 0L, ag1Var11, 48, 12);
                }
                break;
            case 14:
                ag1 ag1Var12 = (ag1) obj;
                int iIntValue12 = ((Integer) obj2).intValue();
                if (!ag1Var12.N(iIntValue12 & 1, (iIntValue12 & 3) != 2)) {
                    ag1Var12.Q();
                }
                break;
            case 15:
                ag1 ag1Var13 = (ag1) obj;
                int iIntValue13 = ((Integer) obj2).intValue();
                if (!ag1Var13.N(iIntValue13 & 1, (iIntValue13 & 3) != 2)) {
                    ag1Var13.Q();
                }
                break;
            case 16:
                ag1 ag1Var14 = (ag1) obj;
                int iIntValue14 = ((Integer) obj2).intValue();
                if (!ag1Var14.N(iIntValue14 & 1, (iIntValue14 & 3) != 2)) {
                    ag1Var14.Q();
                }
                break;
            case 17:
                ag1 ag1Var15 = (ag1) obj;
                int iIntValue15 = ((Integer) obj2).intValue();
                if (!ag1Var15.N(iIntValue15 & 1, (iIntValue15 & 3) != 2)) {
                    ag1Var15.Q();
                }
                break;
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                ag1 ag1Var16 = (ag1) obj;
                int iIntValue16 = ((Integer) obj2).intValue();
                if (!ag1Var16.N(iIntValue16 & 1, (iIntValue16 & 3) != 2)) {
                    ag1Var16.Q();
                } else {
                    lx3.b(on4.O(R.string.settings, ag1Var16), null, 0L, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ag1Var16, 0, 0, 262142);
                }
                break;
            case 19:
                ag1 ag1Var17 = (ag1) obj;
                int iIntValue17 = ((Integer) obj2).intValue();
                if (!ag1Var17.N(iIntValue17 & 1, (iIntValue17 & 3) != 2)) {
                    ag1Var17.Q();
                } else {
                    qn1.b(kt4.W(R.drawable.anthropicon_arrow_left, ag1Var17), "Back", null, 0L, ag1Var17, 56, 12);
                }
                break;
            case 20:
                ag1 ag1Var18 = (ag1) obj;
                int iIntValue18 = ((Integer) obj2).intValue();
                if (!ag1Var18.N(iIntValue18 & 1, (iIntValue18 & 3) != 2)) {
                    ag1Var18.Q();
                } else {
                    qn1.b(kt4.W(R.drawable.anthropicon_info, ag1Var18), "Info", on3.c(kd2Var, 20.0f), ((ua2) ag1Var18.j(wa2.a)).a.s, ag1Var18, 440, 0);
                }
                break;
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                ag1 ag1Var19 = (ag1) obj;
                int iIntValue19 = ((Integer) obj2).intValue();
                if (!ag1Var19.N(iIntValue19 & 1, (iIntValue19 & 3) != 2)) {
                    ag1Var19.Q();
                } else {
                    qn1.b(kt4.W(R.drawable.anthropicon_clock, ag1Var19), null, null, ((ua2) ag1Var19.j(wa2.a)).a.a, ag1Var19, 56, 4);
                }
                break;
            case 22:
                ag1 ag1Var20 = (ag1) obj;
                int iIntValue20 = ((Integer) obj2).intValue();
                if (!ag1Var20.N(iIntValue20 & 1, (iIntValue20 & 3) != 2)) {
                    ag1Var20.Q();
                } else {
                    lx3.b(on4.O(R.string.settings_auto_wake_up, ag1Var20), null, 0L, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, ((ua2) ag1Var20.j(wa2.a)).b.f, ag1Var20, 0, 0, 131070);
                }
                break;
            case ConnectionResult.API_DISABLED /* 23 */:
                ag1 ag1Var21 = (ag1) obj;
                int iIntValue21 = ((Integer) obj2).intValue();
                if (!ag1Var21.N(iIntValue21 & 1, (iIntValue21 & 3) != 2)) {
                    ag1Var21.Q();
                } else {
                    k80 k80VarA = i80.a(new rh(12.0f, new k21(2)), mj1.z, ag1Var21, 6);
                    int iHashCode = Long.hashCode(ag1Var21.T);
                    hu2 hu2VarL = ag1Var21.l();
                    nd2 nd2VarH = is0.H(ag1Var21, kd2Var);
                    lb0.c.getClass();
                    ic0 ic0Var = kb0.b;
                    ag1Var21.Z();
                    if (ag1Var21.S) {
                        ag1Var21.k(ic0Var);
                    } else {
                        ag1Var21.j0();
                    }
                    ht4.D(kb0.f, ag1Var21, k80VarA);
                    ht4.D(kb0.e, ag1Var21, hu2VarL);
                    ht4.D(kb0.g, ag1Var21, Integer.valueOf(iHashCode));
                    ht4.y(ag1Var21, kb0.h);
                    ht4.D(kb0.d, ag1Var21, nd2VarH);
                    lx3.b(on4.O(R.string.settings_auto_wake_up_description, ag1Var21), null, is0.y(ag1Var21).s, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, is0.C(ag1Var21).k, ag1Var21, 0, 0, 131066);
                    lx3.b(on4.O(R.string.settings_auto_wake_up_applies_to, ag1Var21), null, is0.y(ag1Var21).q, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, is0.C(ag1Var21).i, ag1Var21, 0, 0, 131066);
                    lx3.b(on4.O(R.string.settings_auto_wake_up_applies_to_items, ag1Var21), null, is0.y(ag1Var21).s, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, is0.C(ag1Var21).k, ag1Var21, 0, 0, 131066);
                    ag1Var21.p(true);
                }
                break;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                ag1 ag1Var22 = (ag1) obj;
                int iIntValue22 = ((Integer) obj2).intValue();
                if (!ag1Var22.N(iIntValue22 & 1, (iIntValue22 & 3) != 2)) {
                    ag1Var22.Q();
                } else {
                    qn1.b(kt4.W(R.drawable.anthropicon_calendar, ag1Var22), null, null, ((ua2) ag1Var22.j(wa2.a)).a.a, ag1Var22, 56, 4);
                }
                break;
            case 25:
                ag1 ag1Var23 = (ag1) obj;
                int iIntValue23 = ((Integer) obj2).intValue();
                if (!ag1Var23.N(iIntValue23 & 1, (iIntValue23 & 3) != 2)) {
                    ag1Var23.Q();
                } else {
                    lx3.b(on4.O(R.string.settings_calendar_sync, ag1Var23), null, 0L, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, ((ua2) ag1Var23.j(wa2.a)).b.f, ag1Var23, 0, 0, 131070);
                }
                break;
            case 26:
                ag1 ag1Var24 = (ag1) obj;
                int iIntValue24 = ((Integer) obj2).intValue();
                if (!ag1Var24.N(iIntValue24 & 1, (iIntValue24 & 3) != 2)) {
                    ag1Var24.Q();
                } else {
                    qn1.b(kt4.W(R.drawable.anthropicon_settings, ag1Var24), "Settings", null, ((n50) ag1Var24.j(gy3.c)).P, ag1Var24, 56, 4);
                }
                break;
            case 27:
                ag1 ag1Var25 = (ag1) obj;
                int iIntValue25 = ((Integer) obj2).intValue();
                if (!ag1Var25.N(iIntValue25 & 1, (iIntValue25 & 3) != 2)) {
                    ag1Var25.Q();
                } else {
                    String strO = on4.O(R.string.preview, ag1Var25);
                    is3 is3Var = wa2.a;
                    lx3.b(strO, is0.L(kd2Var, 6.0f, 2.0f), ((ua2) ag1Var25.j(is3Var)).a.Q, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, ((ua2) ag1Var25.j(is3Var)).b.o, ag1Var25, 48, 0, 131064);
                }
                break;
            case 28:
                ag1 ag1Var26 = (ag1) obj;
                int iIntValue26 = ((Integer) obj2).intValue();
                if (!ag1Var26.N(iIntValue26 & 1, (iIntValue26 & 3) != 2)) {
                    ag1Var26.Q();
                }
                break;
            default:
                ag1 ag1Var27 = (ag1) obj;
                int iIntValue27 = ((Integer) obj2).intValue();
                if (!ag1Var27.N(iIntValue27 & 1, (iIntValue27 & 3) != 2)) {
                    ag1Var27.Q();
                } else {
                    so1 so1VarB2 = bi4.r;
                    if (so1VarB2 == null) {
                        ro1 ro1Var2 = new ro1("Filled.Close", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
                        int i3 = ea4.a;
                        sp3 sp3Var2 = new sp3(t70.b);
                        ct2 ct2Var2 = new ct2();
                        ct2Var2.h(19.0f, 6.41f);
                        ct2Var2.f(17.59f, 5.0f);
                        ct2Var2.f(12.0f, 10.59f);
                        ct2Var2.f(6.41f, 5.0f);
                        ct2Var2.f(5.0f, 6.41f);
                        ct2Var2.f(10.59f, 12.0f);
                        ct2Var2.f(5.0f, 17.59f);
                        ct2Var2.f(6.41f, 19.0f);
                        ct2Var2.f(12.0f, 13.41f);
                        ct2Var2.f(17.59f, 19.0f);
                        ct2Var2.f(19.0f, 17.59f);
                        ct2Var2.f(13.41f, 12.0f);
                        ct2Var2.a();
                        ro1.a(ro1Var2, ct2Var2.n, sp3Var2);
                        so1VarB2 = ro1Var2.b();
                        bi4.r = so1VarB2;
                    }
                    qn1.a(so1VarB2, "Cancel", null, 0L, ag1Var27, 48, 12);
                }
                break;
        }
        return t64Var;
    }

    public /* synthetic */ sq(int i, Object obj) {
        this.n = i;
    }
}
