package defpackage;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import java.util.Comparator;
import java.util.Date;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lh0 implements Comparator {
    public static final lh0 o = new lh0(0);
    public static final lh0 p = new lh0(1);
    public static final lh0 q = new lh0(2);
    public static final lh0 r = new lh0(3);
    public static final lh0 s = new lh0(4);
    public static final lh0 t = new lh0(5);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ lh0 f184u = new lh0(22);
    public final /* synthetic */ int n;

    public /* synthetic */ lh0(int i) {
        this.n = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.n) {
            case 0:
                ku kuVar = (ku) obj;
                ku kuVar2 = (ku) obj2;
                String str = kuVar.s;
                int length = str != null ? str.length() : 1;
                String str2 = kuVar2.s;
                int length2 = (str2 != null ? str2.length() : 1) - length;
                if (length2 != 0 || !(kuVar instanceof ku) || !(kuVar2 instanceof ku)) {
                    return length2;
                }
                Date date = kuVar.v;
                Date date2 = kuVar2.v;
                return (date == null || date2 == null) ? length2 : (int) (date.getTime() - date2.getTime());
            case 1:
                ka1 ka1Var = (ka1) obj;
                ka1 ka1Var2 = (ka1) obj2;
                if (gg4.I(ka1Var) && gg4.I(ka1Var2)) {
                    xy1 xy1VarR = w80.R(ka1Var);
                    xy1 xy1VarR2 = w80.R(ka1Var2);
                    if (!nt1.g(xy1VarR, xy1VarR2)) {
                        Object[] objArr = new xy1[16];
                        int i = 0;
                        while (xy1VarR != null) {
                            int i2 = i + 1;
                            if (objArr.length < i2) {
                                int length3 = objArr.length;
                                Object[] objArr2 = new Object[Math.max(i2, length3 * 2)];
                                System.arraycopy(objArr, 0, objArr2, 0, length3);
                                objArr = objArr2;
                            }
                            if (i != 0) {
                                System.arraycopy(objArr, 0, objArr, 0 + 1, i + 0);
                            }
                            objArr[0] = xy1VarR;
                            i++;
                            xy1VarR = xy1VarR.u();
                        }
                        Object[] objArr3 = new xy1[16];
                        int i3 = 0;
                        while (xy1VarR2 != null) {
                            int i4 = i3 + 1;
                            if (objArr3.length < i4) {
                                int length4 = objArr3.length;
                                Object[] objArr4 = new Object[Math.max(i4, length4 * 2)];
                                System.arraycopy(objArr3, 0, objArr4, 0, length4);
                                objArr3 = objArr4;
                            }
                            if (i3 != 0) {
                                System.arraycopy(objArr3, 0, objArr3, 0 + 1, i3 + 0);
                            }
                            objArr3[0] = xy1VarR2;
                            i3++;
                            xy1VarR2 = xy1VarR2.u();
                        }
                        int iMin = Math.min(i - 1, i3 - 1);
                        if (iMin >= 0) {
                            int i5 = 0;
                            while (nt1.g(objArr[i5], objArr3[i5])) {
                                if (i5 != iMin) {
                                    i5++;
                                }
                            }
                            return nt1.l(((xy1) objArr[i5]).v(), ((xy1) objArr3[i5]).v());
                        }
                        k21.n("Could not find a common ancestor between the two FocusModifiers.");
                    }
                } else {
                    if (gg4.I(ka1Var)) {
                        return -1;
                    }
                    if (gg4.I(ka1Var2)) {
                        return 1;
                    }
                }
                return 0;
            case 2:
                l33 l33VarH = ((gh3) obj).h();
                l33 l33VarH2 = ((gh3) obj2).h();
                int iCompare = Float.compare(l33VarH.a, l33VarH2.a);
                if (iCompare != 0) {
                    return iCompare;
                }
                int iCompare2 = Float.compare(l33VarH.b, l33VarH2.b);
                if (iCompare2 != 0) {
                    return iCompare2;
                }
                int iCompare3 = Float.compare(l33VarH.d, l33VarH2.d);
                return iCompare3 != 0 ? iCompare3 : Float.compare(l33VarH.c, l33VarH2.c);
            case 3:
                xy1 xy1Var = (xy1) obj;
                xy1 xy1Var2 = (xy1) obj2;
                int iL = nt1.l(xy1Var2.C, xy1Var.C);
                return iL != 0 ? iL : nt1.l(xy1Var.hashCode(), xy1Var2.hashCode());
            case 4:
                l33 l33VarH3 = ((gh3) obj).h();
                l33 l33VarH4 = ((gh3) obj2).h();
                int iCompare4 = Float.compare(l33VarH4.c, l33VarH3.c);
                if (iCompare4 != 0) {
                    return iCompare4;
                }
                int iCompare5 = Float.compare(l33VarH3.b, l33VarH4.b);
                if (iCompare5 != 0) {
                    return iCompare5;
                }
                int iCompare6 = Float.compare(l33VarH3.d, l33VarH4.d);
                return iCompare6 != 0 ? iCompare6 : Float.compare(l33VarH4.a, l33VarH3.a);
            case 5:
                js2 js2Var = (js2) obj;
                js2 js2Var2 = (js2) obj2;
                int iCompare7 = Float.compare(((l33) js2Var.n).b, ((l33) js2Var2.n).b);
                return iCompare7 != 0 ? iCompare7 : Float.compare(((l33) js2Var.n).d, ((l33) js2Var2.n).d);
            case 6:
                return ca.i(Integer.valueOf(((ef) obj).b), Integer.valueOf(((ef) obj2).b));
            case 7:
                return ca.i(Integer.valueOf(((ef) obj).b), Integer.valueOf(((ef) obj2).b));
            case 8:
                String str3 = (String) obj;
                String str4 = (String) obj2;
                str3.getClass();
                str4.getClass();
                int iMin2 = Math.min(str3.length(), str4.length());
                int i6 = 4;
                while (true) {
                    if (i6 >= iMin2) {
                        int length5 = str3.length();
                        int length6 = str4.length();
                        if (length5 == length6) {
                            return 0;
                        }
                        if (length5 < length6) {
                            return -1;
                        }
                    } else {
                        char cCharAt = str3.charAt(i6);
                        char cCharAt2 = str4.charAt(i6);
                        if (cCharAt == cCharAt2) {
                            i6++;
                        } else if (nt1.l(cCharAt, cCharAt2) < 0) {
                            return -1;
                        }
                    }
                }
                return 1;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                xy1 xy1Var3 = (xy1) obj;
                xy1 xy1Var4 = (xy1) obj2;
                int iL2 = nt1.l(xy1Var3.C, xy1Var4.C);
                return iL2 != 0 ? iL2 : nt1.l(xy1Var3.hashCode(), xy1Var4.hashCode());
            case 10:
                return ca.i(((p84) obj).b(), ((p84) obj2).b());
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                return ((Comparable) obj).compareTo((Comparable) obj2);
            case 12:
                ((jo2) obj2).getClass();
                ((jo2) obj).getClass();
                return ca.i(2, 2);
            case 13:
                throw di0.o(obj2);
            case 14:
                return ca.i((Integer) ((Map.Entry) obj).getKey(), (Integer) ((Map.Entry) obj2).getKey());
            case 15:
                return ca.i((Integer) ((Map.Entry) obj).getKey(), (Integer) ((Map.Entry) obj2).getKey());
            case 16:
                return ca.i(Boolean.valueOf(((yi3) obj2).b), Boolean.valueOf(((yi3) obj).b));
            case 17:
                return ca.i(((cw3) obj).a, ((cw3) obj2).a);
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                return ca.i(((ew3) obj).a, ((ew3) obj2).a);
            case 19:
                return ca.i(((wh4) obj).a, ((wh4) obj2).a);
            case 20:
                int i7 = xw1.i(obj);
                int i8 = xw1.i(obj2);
                if (i7 != i8) {
                    return di0.h(i7, i8);
                }
                int iF = di0.F(i7);
                if (iF == 0) {
                    return ((Boolean) obj).compareTo((Boolean) obj2);
                }
                if (iF == 1) {
                    return ((String) obj).compareTo((String) obj2);
                }
                if (iF == 2) {
                    return ((Long) obj).compareTo((Long) obj2);
                }
                if (iF == 3) {
                    return ((Double) obj).compareTo((Double) obj2);
                }
                throw null;
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                return ((String) ((Map.Entry) obj).getKey()).compareTo((String) ((Map.Entry) obj2).getKey());
            default:
                return Long.compare(((Long) obj).longValue(), ((Long) obj2).longValue());
        }
    }
}
