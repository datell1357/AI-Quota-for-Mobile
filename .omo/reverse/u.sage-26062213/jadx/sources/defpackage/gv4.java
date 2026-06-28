package defpackage;

import android.os.Bundle;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class gv4 {
    public static final np1 a = np1.m("_in", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "campaign_details", "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire");
    public static final z43 b;
    public static final z43 c;
    public static final z43 d;
    public static final z43 e;
    public static final z43 f;

    static {
        hp1 hp1Var = lp1.o;
        Object[] objArr = {"_e", "_f", "_iap", "_s", "_au", "_ui", "_cd"};
        w80.m(7, objArr);
        b = lp1.i(7, objArr);
        Object[] objArr2 = {"auto", "app", "am"};
        w80.m(3, objArr2);
        c = lp1.i(3, objArr2);
        Object[] objArr3 = {"_r", "_dbg"};
        w80.m(2, objArr3);
        d = lp1.i(2, objArr3);
        ht4.i(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        String[] strArr = se0.E;
        w80.m(15, strArr);
        int iB = cp1.b(objArrCopyOf.length, 0 + 15);
        if (iB > objArrCopyOf.length) {
            objArrCopyOf = Arrays.copyOf(objArrCopyOf, iB);
        }
        System.arraycopy(strArr, 0, objArrCopyOf, 0, 15);
        int i = 0 + 15;
        String[] strArr2 = se0.F;
        w80.m(15, strArr2);
        int iB2 = cp1.b(objArrCopyOf.length, i + 15);
        if (iB2 > objArrCopyOf.length) {
            objArrCopyOf = Arrays.copyOf(objArrCopyOf, iB2);
        }
        System.arraycopy(strArr2, 0, objArrCopyOf, i, 15);
        e = lp1.i(i + 15, objArrCopyOf);
        Object[] objArr4 = {"^_ltv_[A-Z]{3}$", "^_cc[1-5]{1}$"};
        w80.m(2, objArr4);
        f = lp1.i(2, objArr4);
    }

    public static boolean a(String str, Bundle bundle) {
        if (!b.contains(str)) {
            if (bundle == null) {
                return true;
            }
            z43 z43Var = d;
            int i = z43Var.q;
            int i2 = 0;
            while (i2 < i) {
                boolean zContainsKey = bundle.containsKey((String) z43Var.get(i2));
                i2++;
                if (zContainsKey) {
                }
            }
            return true;
        }
        return false;
    }

    public static boolean b(String str, String str2, Bundle bundle) {
        if (!"_cmp".equals(str2)) {
            return true;
        }
        if (!c.contains(str) && bundle != null) {
            z43 z43Var = d;
            int i = z43Var.q;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    int iHashCode = str.hashCode();
                    if (iHashCode != 101200) {
                        if (iHashCode != 101230) {
                            if (iHashCode == 3142703 && str.equals("fiam")) {
                                bundle.putString("_cis", "fiam_integration");
                                return true;
                            }
                        } else if (str.equals("fdl")) {
                            bundle.putString("_cis", "fdl_integration");
                            return true;
                        }
                    } else if (str.equals("fcm")) {
                        bundle.putString("_cis", "fcm_integration");
                        return true;
                    }
                } else {
                    boolean zContainsKey = bundle.containsKey((String) z43Var.get(i2));
                    i2++;
                    if (zContainsKey) {
                        break;
                    }
                }
            }
        }
        return false;
    }
}
