package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class qt4 {
    public static void a(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static ls4 b(vn4 vn4Var, qd1 qd1Var, ArrayList arrayList, boolean z) {
        ls4 ls4VarB;
        ai4.h("reduce", 1, arrayList);
        ai4.i(2, "reduce", arrayList);
        ls4 ls4VarH = ((pc4) qd1Var.r).h(qd1Var, (ls4) arrayList.get(0));
        if (!(ls4VarH instanceof zq4)) {
            k21.f("Callback should be a method");
            return null;
        }
        if (arrayList.size() == 2) {
            ls4VarB = ((pc4) qd1Var.r).h(qd1Var, (ls4) arrayList.get(1));
            if (ls4VarB instanceof jp4) {
                k21.f("Failed to parse initial value");
                return null;
            }
        } else {
            if (vn4Var.l() == 0) {
                k21.n("Empty array with no initial value error");
                return null;
            }
            ls4VarB = null;
        }
        zq4 zq4Var = (zq4) ls4VarH;
        int iL = vn4Var.l();
        int i = z ? 0 : iL - 1;
        int i2 = z ? iL - 1 : 0;
        int i3 = true == z ? 1 : -1;
        if (ls4VarB == null) {
            ls4VarB = vn4Var.m(i);
            i += i3;
        }
        while ((i2 - i) * i3 >= 0) {
            if (vn4Var.o(i)) {
                ls4VarB = zq4Var.b(qd1Var, Arrays.asList(ls4VarB, vn4Var.m(i), new eq4(Double.valueOf(i)), vn4Var));
                if (ls4VarB instanceof jp4) {
                    k21.n("Reduce operation failed");
                    return null;
                }
                i += i3;
            } else {
                i += i3;
            }
        }
        return ls4VarB;
    }

    public static vn4 c(vn4 vn4Var, qd1 qd1Var, is4 is4Var, Boolean bool, Boolean bool2) {
        vn4 vn4Var2 = new vn4();
        Iterator itK = vn4Var.k();
        while (itK.hasNext()) {
            int iIntValue = ((Integer) itK.next()).intValue();
            if (vn4Var.o(iIntValue)) {
                ls4 ls4VarB = is4Var.b(qd1Var, Arrays.asList(vn4Var.m(iIntValue), new eq4(Double.valueOf(iIntValue)), vn4Var));
                if (ls4VarB.zze().equals(bool)) {
                    break;
                }
                if (bool2 == null || ls4VarB.zze().equals(bool2)) {
                    vn4Var2.n(iIntValue, ls4VarB);
                }
            }
        }
        return vn4Var2;
    }
}
