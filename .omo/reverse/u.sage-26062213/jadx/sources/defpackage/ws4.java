package defpackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ws4 {
    public final ArrayList a = new ArrayList();
    public final /* synthetic */ int b;

    public ws4(int i) {
        this.b = i;
    }

    public static is4 c(qd1 qd1Var, List list) {
        fu4 fu4Var = fu4.o;
        ai4.h("FN", 2, list);
        ls4 ls4VarH = ((pc4) qd1Var.r).h(qd1Var, (ls4) list.get(0));
        ls4 ls4VarH2 = ((pc4) qd1Var.r).h(qd1Var, (ls4) list.get(1));
        if (!(ls4VarH2 instanceof vn4)) {
            k21.f(di0.u("FN requires an ArrayValue of parameter names found ", ls4VarH2.getClass().getCanonicalName()));
            return null;
        }
        List listI = ((vn4) ls4VarH2).i();
        List arrayList = new ArrayList();
        if (list.size() > 2) {
            arrayList = list.subList(2, list.size());
        }
        return new is4(ls4VarH.zzc(), (ArrayList) listI, arrayList, qd1Var);
    }

    public static boolean d(ls4 ls4Var, ls4 ls4Var2) {
        if (ls4Var instanceof as4) {
            ls4Var = new ss4(ls4Var.zzc());
        }
        if (ls4Var2 instanceof as4) {
            ls4Var2 = new ss4(ls4Var2.zzc());
        }
        if ((ls4Var instanceof ss4) && (ls4Var2 instanceof ss4)) {
            return ((ss4) ls4Var).n.compareTo(((ss4) ls4Var2).n) < 0;
        }
        double dDoubleValue = ls4Var.zzd().doubleValue();
        double dDoubleValue2 = ls4Var2.zzd().doubleValue();
        return (Double.isNaN(dDoubleValue) || Double.isNaN(dDoubleValue2) || (dDoubleValue == 0.0d && dDoubleValue2 == 0.0d) || ((dDoubleValue == 0.0d && dDoubleValue2 == 0.0d) || Double.compare(dDoubleValue, dDoubleValue2) >= 0)) ? false : true;
    }

    public static ls4 e(ut4 ut4Var, ls4 ls4Var, ls4 ls4Var2) {
        if (ls4Var instanceof Iterable) {
            return g(ut4Var, ((Iterable) ls4Var).iterator(), ls4Var2);
        }
        k21.f("Non-iterable type in for...of loop.");
        return null;
    }

    public static boolean f(ls4 ls4Var, ls4 ls4Var2) {
        if (ls4Var.getClass().equals(ls4Var2.getClass())) {
            if ((ls4Var instanceof vs4) || (ls4Var instanceof fs4)) {
                return true;
            }
            return ls4Var instanceof eq4 ? (Double.isNaN(ls4Var.zzd().doubleValue()) || Double.isNaN(ls4Var2.zzd().doubleValue()) || ls4Var.zzd().doubleValue() != ls4Var2.zzd().doubleValue()) ? false : true : ls4Var instanceof ss4 ? ls4Var.zzc().equals(ls4Var2.zzc()) : ls4Var instanceof oo4 ? ls4Var.zze().equals(ls4Var2.zze()) : ls4Var == ls4Var2;
        }
        if (((ls4Var instanceof vs4) || (ls4Var instanceof fs4)) && ((ls4Var2 instanceof vs4) || (ls4Var2 instanceof fs4))) {
            return true;
        }
        boolean z = ls4Var instanceof eq4;
        if (z && (ls4Var2 instanceof ss4)) {
            return f(ls4Var, new eq4(ls4Var2.zzd()));
        }
        boolean z2 = ls4Var instanceof ss4;
        if (z2 && (ls4Var2 instanceof eq4)) {
            return f(new eq4(ls4Var.zzd()), ls4Var2);
        }
        if (ls4Var instanceof oo4) {
            return f(new eq4(ls4Var.zzd()), ls4Var2);
        }
        if (ls4Var2 instanceof oo4) {
            return f(ls4Var, new eq4(ls4Var2.zzd()));
        }
        if ((z2 || z) && (ls4Var2 instanceof as4)) {
            return f(ls4Var, new ss4(ls4Var2.zzc()));
        }
        if ((ls4Var instanceof as4) && ((ls4Var2 instanceof ss4) || (ls4Var2 instanceof eq4))) {
            return f(new ss4(ls4Var.zzc()), ls4Var2);
        }
        return false;
    }

    public static ls4 g(ut4 ut4Var, Iterator it, ls4 ls4Var) {
        qd1 qd1VarO;
        if (it != null) {
            while (it.hasNext()) {
                ls4 ls4Var2 = (ls4) it.next();
                switch (ut4Var.a) {
                    case 0:
                        qd1VarO = ut4Var.b.O();
                        String str = ut4Var.c;
                        qd1VarO.R(str, ls4Var2);
                        ((HashMap) qd1VarO.q).put(str, Boolean.TRUE);
                        break;
                    case 1:
                        qd1VarO = ut4Var.b.O();
                        qd1VarO.R(ut4Var.c, ls4Var2);
                        break;
                    default:
                        qd1VarO = ut4Var.b;
                        qd1VarO.R(ut4Var.c, ls4Var2);
                        break;
                }
                ls4 ls4VarM = qd1VarO.M((vn4) ls4Var);
                if (ls4VarM instanceof jp4) {
                    jp4 jp4Var = (jp4) ls4VarM;
                    String str2 = jp4Var.o;
                    if ("break".equals(str2)) {
                        return ls4.f;
                    }
                    if ("return".equals(str2)) {
                        return jp4Var;
                    }
                }
            }
        }
        return ls4.f;
    }

    public static boolean h(ls4 ls4Var, ls4 ls4Var2) {
        if (ls4Var instanceof as4) {
            ls4Var = new ss4(ls4Var.zzc());
        }
        if (ls4Var2 instanceof as4) {
            ls4Var2 = new ss4(ls4Var2.zzc());
        }
        return (((ls4Var instanceof ss4) && (ls4Var2 instanceof ss4)) || !(Double.isNaN(ls4Var.zzd().doubleValue()) || Double.isNaN(ls4Var2.zzd().doubleValue()))) && !d(ls4Var2, ls4Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:399:0x0bb4  */
    /* JADX WARN: Removed duplicated region for block: B:562:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r10v315 */
    /* JADX WARN: Type inference failed for: r10v320 */
    /* JADX WARN: Type inference failed for: r10v339, types: [vn4] */
    /* JADX WARN: Type inference failed for: r10v346, types: [cs4] */
    /* JADX WARN: Type inference failed for: r10v382 */
    /* JADX WARN: Type inference failed for: r10v383 */
    /* JADX WARN: Type inference failed for: r12v0, types: [qd1] */
    /* JADX WARN: Type inference failed for: r7v54, types: [ls4] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.ls4 a(java.lang.String r11, defpackage.qd1 r12, java.util.ArrayList r13) {
        /*
            Method dump skipped, instruction units count: 3814
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ws4.a(java.lang.String, qd1, java.util.ArrayList):ls4");
    }

    public final void b(String str) {
        if (!this.a.contains(ai4.k(str))) {
            throw new IllegalArgumentException("Command not supported");
        }
        throw new UnsupportedOperationException("Command not implemented: ".concat(String.valueOf(str)));
    }
}
