package defpackage;

import android.content.Context;
import android.content.ContextWrapper;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.api.client.http.HttpStatusCodes;
import java.util.List;
import java.util.Map;
import u.sage.MainActivity;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class z82 implements pe1 {
    public final /* synthetic */ int n;

    public /* synthetic */ z82(ga3 ga3Var) {
        this.n = 25;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        String strValueOf;
        int i = this.n;
        t64 t64Var = t64.a;
        iq3 iq3Var = null;
        iq3Var = null;
        switch (i) {
            case 0:
                xh2 xh2Var = (xh2) obj;
                int i2 = MainActivity.C;
                xh2Var.getClass();
                ft1 ft1Var = xh2Var.a;
                ft1Var.p = qj2.i;
                ft1Var.q = "CLAUDE";
                ft1Var.o = true;
                return t64Var;
            case 1:
                ms2 ms2Var = (ms2) obj;
                return "[" + ms2Var.b + ", " + ms2Var.c + ")";
            case 2:
                Map.Entry entry = (Map.Entry) obj;
                entry.getClass();
                Object value = entry.getValue();
                if (value instanceof byte[]) {
                    StringBuilder sb = new StringBuilder();
                    sb.append((CharSequence) "[");
                    int i3 = 0;
                    for (byte b : (byte[]) value) {
                        i3++;
                        if (i3 > 1) {
                            sb.append((CharSequence) ", ");
                        }
                        sb.append((CharSequence) String.valueOf((int) b));
                    }
                    sb.append((CharSequence) "]");
                    strValueOf = sb.toString();
                } else {
                    strValueOf = String.valueOf(entry.getValue());
                }
                return di0.y(new StringBuilder("  "), ((rx2) entry.getKey()).a, " = ", strValueOf);
            case 3:
                vk0 vk0Var = (vk0) obj;
                vk0Var.getClass();
                return new zh2(pc3.a(vk0Var));
            case 4:
                return new bq(pc3.a((vk0) obj));
            case 5:
                Context context = (Context) obj;
                context.getClass();
                if (context instanceof ContextWrapper) {
                    return ((ContextWrapper) context).getBaseContext();
                }
                return null;
            case 6:
                qi2 qi2Var = (qi2) obj;
                qi2Var.getClass();
                si2 si2Var = qi2Var.p;
                if (si2Var == null || si2Var.s.b != qi2Var.o.a) {
                    return null;
                }
                return si2Var;
            case 7:
                qi2 qi2Var2 = (qi2) obj;
                qi2Var2.getClass();
                si2 si2Var2 = qi2Var2.p;
                if (si2Var2 == null || si2Var2.s.b != qi2Var2.o.a) {
                    return null;
                }
                return si2Var2;
            case 8:
                qi2 qi2Var3 = (qi2) obj;
                qi2Var3.getClass();
                return Integer.valueOf(qi2Var3.o.a);
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                ((vk0) obj).getClass();
                return new ji2();
            case 10:
                qi2 qi2Var4 = (qi2) obj;
                qi2Var4.getClass();
                return qi2Var4.p;
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                qi2 qi2Var5 = (qi2) obj;
                qi2Var5.getClass();
                if (!(qi2Var5 instanceof si2)) {
                    return null;
                }
                vi2 vi2Var = ((si2) qi2Var5).s;
                return vi2Var.n(vi2Var.b);
            case 12:
                return j11.c(tv4.V(700, 6, null), 2);
            case 13:
                qi2 qi2Var6 = ((yh2) ((be) obj).c()).o;
                qi2Var6.getClass();
                int i4 = qi2.r;
                for (qi2 qi2Var7 : mt1.z((va0) qi2Var6)) {
                }
                return null;
            case 14:
                return j11.d(tv4.V(700, 6, null), 2);
            case 15:
                return ((yh2) obj).s;
            case 16:
                float f = zj2.a;
                return t64Var;
            case 17:
                je jeVar = ((cm2) obj).a;
                if (jeVar != null) {
                    jeVar.a();
                }
                return t64Var;
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                ((Long) obj).getClass();
                return t64Var;
            case 19:
                hu2 hu2Var = (hu2) obj;
                int i5 = kb.a;
                is3 is3Var = ea.b;
                hu2Var.getClass();
                Context context2 = (Context) bi4.F(hu2Var, is3Var);
                as0 as0Var = (as0) bi4.F(hu2Var, kc0.h);
                or2 or2Var = (or2) bi4.F(hu2Var, pr2.a);
                if (or2Var == null) {
                    return null;
                }
                return new xa(context2, as0Var, or2Var.a, or2Var.b);
            case 20:
                ((Context) obj).getClass();
                return g01.n;
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                rx1 rx1Var = (rx1) obj;
                rx1Var.a = 6000;
                Float fValueOf = Float.valueOf(90.0f);
                rx1Var.a(fValueOf, HttpStatusCodes.STATUS_CODE_MULTIPLE_CHOICES).b = ge2.a;
                rx1Var.a(fValueOf, ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
                Float fValueOf2 = Float.valueOf(180.0f);
                rx1Var.a(fValueOf2, 1800);
                rx1Var.a(fValueOf2, AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS);
                Float fValueOf3 = Float.valueOf(270.0f);
                rx1Var.a(fValueOf3, 3300);
                rx1Var.a(fValueOf3, 4500);
                Float fValueOf4 = Float.valueOf(360.0f);
                rx1Var.a(fValueOf4, 4800);
                rx1Var.a(fValueOf4, 6000);
                return t64Var;
            case 22:
                oz2 oz2Var = oz2.b;
                kx1[] kx1VarArr = nh3.a;
                oh3 oh3Var = lh3.c;
                kx1 kx1Var = nh3.a[1];
                ((ph3) obj).a(oh3Var, oz2Var);
                return t64Var;
            case ConnectionResult.API_DISABLED /* 23 */:
                wh4 wh4Var = (wh4) obj;
                wh4Var.getClass();
                bt2 bt2Var = l73.s;
                return Boolean.valueOf(qz0.a(wh4Var.a));
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                return new x83();
            case 25:
                ((in0) obj).getClass();
                throw new an2(0);
            case 26:
                return new gc3((Map) obj);
            case 27:
                return obj;
            case 28:
                obj.getClass();
                List list = (List) obj;
                Object obj2 = list.get(0);
                pe1 pe1Var = (pe1) id3.h.o;
                Boolean bool = Boolean.FALSE;
                iq3 iq3Var2 = (nt1.g(obj2, bool) || obj2 == null) ? null : (iq3) pe1Var.k(obj2);
                Object obj3 = list.get(1);
                iq3 iq3Var3 = (nt1.g(obj3, bool) || obj3 == null) ? null : (iq3) pe1Var.k(obj3);
                Object obj4 = list.get(2);
                iq3 iq3Var4 = (nt1.g(obj4, bool) || obj4 == null) ? null : (iq3) pe1Var.k(obj4);
                Object obj5 = list.get(3);
                if (!nt1.g(obj5, bool) && obj5 != null) {
                    iq3Var = (iq3) pe1Var.k(obj5);
                }
                return new qx3(iq3Var2, iq3Var3, iq3Var4, iq3Var);
            default:
                obj.getClass();
                List list2 = (List) obj;
                Object obj6 = list2.get(1);
                List list3 = (nt1.g(obj6, Boolean.FALSE) || obj6 == null) ? null : (List) ((pe1) id3.a.o).k(obj6);
                Object obj7 = list2.get(0);
                String str = obj7 != null ? (String) obj7 : null;
                str.getClass();
                return new ff(list3, str);
        }
    }

    public /* synthetic */ z82(int i) {
        this.n = i;
    }
}
