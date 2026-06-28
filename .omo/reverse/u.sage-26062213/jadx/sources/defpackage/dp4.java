package defpackage;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class dp4 {
    public static final bx3 a;

    static {
        int i = um4.a;
        a = new bx3(4);
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void b(Object obj, Object obj2) {
        rn4 rn4Var = (rn4) obj;
        lp4 lp4Var = rn4Var.zzc;
        lp4 lp4Var2 = ((rn4) obj2).zzc;
        lp4 lp4Var3 = lp4.f;
        if (!lp4Var3.equals(lp4Var2)) {
            if (lp4Var3.equals(lp4Var)) {
                int i = lp4Var.a + lp4Var2.a;
                int[] iArrCopyOf = Arrays.copyOf(lp4Var.b, i);
                System.arraycopy(lp4Var2.b, 0, iArrCopyOf, lp4Var.a, lp4Var2.a);
                Object[] objArrCopyOf = Arrays.copyOf(lp4Var.c, i);
                System.arraycopy(lp4Var2.c, 0, objArrCopyOf, lp4Var.a, lp4Var2.a);
                lp4Var = new lp4(i, iArrCopyOf, objArrCopyOf, true);
            } else {
                lp4Var.getClass();
                if (!lp4Var2.equals(lp4Var3)) {
                    if (!lp4Var.e) {
                        p61.b();
                        return;
                    }
                    int i2 = lp4Var.a + lp4Var2.a;
                    lp4Var.e(i2);
                    System.arraycopy(lp4Var2.b, 0, lp4Var.b, lp4Var.a, lp4Var2.a);
                    System.arraycopy(lp4Var2.c, 0, lp4Var.c, lp4Var.a, lp4Var2.a);
                    lp4Var.a = i2;
                }
            }
        }
        rn4Var.zzc = lp4Var;
    }

    public static Object c(Object obj, int i, do4 do4Var, mm4 mm4Var, Object obj2, bx3 bx3Var) {
        if (mm4Var == null) {
            return obj2;
        }
        if (do4Var == null) {
            Iterator it = do4Var.iterator();
            while (it.hasNext()) {
                int iIntValue = ((Integer) it.next()).intValue();
                if (!mm4Var.a(iIntValue)) {
                    if (obj2 == null) {
                        bx3Var.getClass();
                        obj2 = bx3.s(obj);
                    }
                    bx3Var.getClass();
                    ((lp4) obj2).d(i << 3, Long.valueOf(iIntValue));
                    it.remove();
                }
            }
            return obj2;
        }
        int size = do4Var.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            Integer num = (Integer) do4Var.get(i3);
            int iIntValue2 = num.intValue();
            if (mm4Var.a(iIntValue2)) {
                if (i3 != i2) {
                    do4Var.set(i2, num);
                }
                i2++;
            } else {
                if (obj2 == null) {
                    bx3Var.getClass();
                    obj2 = bx3.s(obj);
                }
                bx3Var.getClass();
                ((lp4) obj2).d(i << 3, Long.valueOf(iIntValue2));
            }
        }
        if (i2 != size) {
            do4Var.subList(i2, size).clear();
        }
        return obj2;
    }

    public static void d(int i, List list, dd1 dd1Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        jn4 jn4Var = (jn4) dd1Var.o;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                jn4Var.i(i, Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                i2++;
            }
            return;
        }
        jn4Var.d(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Double) list.get(i4)).getClass();
            i3 += 8;
        }
        jn4Var.r(i3);
        while (i2 < list.size()) {
            jn4Var.u(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
            i2++;
        }
    }

    public static void e(int i, List list, dd1 dd1Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        jn4 jn4Var = (jn4) dd1Var.o;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                jn4Var.g(i, Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                i2++;
            }
            return;
        }
        jn4Var.d(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Float) list.get(i4)).getClass();
            i3 += 4;
        }
        jn4Var.r(i3);
        while (i2 < list.size()) {
            jn4Var.s(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
            i2++;
        }
    }

    public static void f(int i, List list, dd1 dd1Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        jn4 jn4Var = (jn4) dd1Var.o;
        int i2 = 0;
        if (!(list instanceof jo4)) {
            if (!z) {
                while (i2 < list.size()) {
                    jn4Var.h(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            jn4Var.d(i, 2);
            int iB = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iB += jn4.b(((Long) list.get(i3)).longValue());
            }
            jn4Var.r(iB);
            while (i2 < list.size()) {
                jn4Var.t(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        jo4 jo4Var = (jo4) list;
        if (!z) {
            while (i2 < jo4Var.p) {
                jn4Var.h(i, jo4Var.c(i2));
                i2++;
            }
            return;
        }
        jn4Var.d(i, 2);
        int iB2 = 0;
        for (int i4 = 0; i4 < jo4Var.p; i4++) {
            iB2 += jn4.b(jo4Var.c(i4));
        }
        jn4Var.r(iB2);
        while (i2 < jo4Var.p) {
            jn4Var.t(jo4Var.c(i2));
            i2++;
        }
    }

    public static void g(int i, List list, dd1 dd1Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        jn4 jn4Var = (jn4) dd1Var.o;
        int i2 = 0;
        if (!(list instanceof jo4)) {
            if (!z) {
                while (i2 < list.size()) {
                    jn4Var.h(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            jn4Var.d(i, 2);
            int iB = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iB += jn4.b(((Long) list.get(i3)).longValue());
            }
            jn4Var.r(iB);
            while (i2 < list.size()) {
                jn4Var.t(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        jo4 jo4Var = (jo4) list;
        if (!z) {
            while (i2 < jo4Var.p) {
                jn4Var.h(i, jo4Var.c(i2));
                i2++;
            }
            return;
        }
        jn4Var.d(i, 2);
        int iB2 = 0;
        for (int i4 = 0; i4 < jo4Var.p; i4++) {
            iB2 += jn4.b(jo4Var.c(i4));
        }
        jn4Var.r(iB2);
        while (i2 < jo4Var.p) {
            jn4Var.t(jo4Var.c(i2));
            i2++;
        }
    }

    public static void h(int i, List list, dd1 dd1Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        jn4 jn4Var = (jn4) dd1Var.o;
        int i2 = 0;
        if (!(list instanceof jo4)) {
            if (!z) {
                while (i2 < list.size()) {
                    long jLongValue = ((Long) list.get(i2)).longValue();
                    jn4Var.h(i, (jLongValue >> 63) ^ (jLongValue + jLongValue));
                    i2++;
                }
                return;
            }
            jn4Var.d(i, 2);
            int iB = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                long jLongValue2 = ((Long) list.get(i3)).longValue();
                iB += jn4.b((jLongValue2 >> 63) ^ (jLongValue2 + jLongValue2));
            }
            jn4Var.r(iB);
            while (i2 < list.size()) {
                long jLongValue3 = ((Long) list.get(i2)).longValue();
                jn4Var.t((jLongValue3 >> 63) ^ (jLongValue3 + jLongValue3));
                i2++;
            }
            return;
        }
        jo4 jo4Var = (jo4) list;
        if (!z) {
            while (i2 < jo4Var.p) {
                long jC = jo4Var.c(i2);
                jn4Var.h(i, (jC >> 63) ^ (jC + jC));
                i2++;
            }
            return;
        }
        jn4Var.d(i, 2);
        int iB2 = 0;
        for (int i4 = 0; i4 < jo4Var.p; i4++) {
            long jC2 = jo4Var.c(i4);
            iB2 += jn4.b((jC2 >> 63) ^ (jC2 + jC2));
        }
        jn4Var.r(iB2);
        while (i2 < jo4Var.p) {
            long jC3 = jo4Var.c(i2);
            jn4Var.t((jC3 >> 63) ^ (jC3 + jC3));
            i2++;
        }
    }

    public static void i(int i, List list, dd1 dd1Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        jn4 jn4Var = (jn4) dd1Var.o;
        int i2 = 0;
        if (!(list instanceof jo4)) {
            if (!z) {
                while (i2 < list.size()) {
                    jn4Var.i(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            jn4Var.d(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).getClass();
                i3 += 8;
            }
            jn4Var.r(i3);
            while (i2 < list.size()) {
                jn4Var.u(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        jo4 jo4Var = (jo4) list;
        if (!z) {
            while (i2 < jo4Var.p) {
                jn4Var.i(i, jo4Var.c(i2));
                i2++;
            }
            return;
        }
        jn4Var.d(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < jo4Var.p; i6++) {
            jo4Var.c(i6);
            i5 += 8;
        }
        jn4Var.r(i5);
        while (i2 < jo4Var.p) {
            jn4Var.u(jo4Var.c(i2));
            i2++;
        }
    }

    public static void j(int i, List list, dd1 dd1Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        jn4 jn4Var = (jn4) dd1Var.o;
        int i2 = 0;
        if (!(list instanceof jo4)) {
            if (!z) {
                while (i2 < list.size()) {
                    jn4Var.i(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            jn4Var.d(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).getClass();
                i3 += 8;
            }
            jn4Var.r(i3);
            while (i2 < list.size()) {
                jn4Var.u(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        jo4 jo4Var = (jo4) list;
        if (!z) {
            while (i2 < jo4Var.p) {
                jn4Var.i(i, jo4Var.c(i2));
                i2++;
            }
            return;
        }
        jn4Var.d(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < jo4Var.p; i6++) {
            jo4Var.c(i6);
            i5 += 8;
        }
        jn4Var.r(i5);
        while (i2 < jo4Var.p) {
            jn4Var.u(jo4Var.c(i2));
            i2++;
        }
    }

    public static void k(int i, List list, dd1 dd1Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        jn4 jn4Var = (jn4) dd1Var.o;
        int i2 = 0;
        if (!(list instanceof sn4)) {
            if (!z) {
                while (i2 < list.size()) {
                    jn4Var.e(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            jn4Var.d(i, 2);
            int iB = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iB += jn4.b(((Integer) list.get(i3)).intValue());
            }
            jn4Var.r(iB);
            while (i2 < list.size()) {
                jn4Var.q(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        sn4 sn4Var = (sn4) list;
        if (!z) {
            while (i2 < sn4Var.p) {
                jn4Var.e(i, sn4Var.d(i2));
                i2++;
            }
            return;
        }
        jn4Var.d(i, 2);
        int iB2 = 0;
        for (int i4 = 0; i4 < sn4Var.p; i4++) {
            iB2 += jn4.b(sn4Var.d(i4));
        }
        jn4Var.r(iB2);
        while (i2 < sn4Var.p) {
            jn4Var.q(sn4Var.d(i2));
            i2++;
        }
    }

    public static void l(int i, List list, dd1 dd1Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        jn4 jn4Var = (jn4) dd1Var.o;
        int i2 = 0;
        if (!(list instanceof sn4)) {
            if (!z) {
                while (i2 < list.size()) {
                    jn4Var.f(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            jn4Var.d(i, 2);
            int iA = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iA += jn4.a(((Integer) list.get(i3)).intValue());
            }
            jn4Var.r(iA);
            while (i2 < list.size()) {
                jn4Var.r(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        sn4 sn4Var = (sn4) list;
        if (!z) {
            while (i2 < sn4Var.p) {
                jn4Var.f(i, sn4Var.d(i2));
                i2++;
            }
            return;
        }
        jn4Var.d(i, 2);
        int iA2 = 0;
        for (int i4 = 0; i4 < sn4Var.p; i4++) {
            iA2 += jn4.a(sn4Var.d(i4));
        }
        jn4Var.r(iA2);
        while (i2 < sn4Var.p) {
            jn4Var.r(sn4Var.d(i2));
            i2++;
        }
    }

    public static void m(int i, List list, dd1 dd1Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        jn4 jn4Var = (jn4) dd1Var.o;
        int i2 = 0;
        if (!(list instanceof sn4)) {
            if (!z) {
                while (i2 < list.size()) {
                    int iIntValue = ((Integer) list.get(i2)).intValue();
                    jn4Var.f(i, (iIntValue >> 31) ^ (iIntValue + iIntValue));
                    i2++;
                }
                return;
            }
            jn4Var.d(i, 2);
            int iA = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                int iIntValue2 = ((Integer) list.get(i3)).intValue();
                iA += jn4.a((iIntValue2 >> 31) ^ (iIntValue2 + iIntValue2));
            }
            jn4Var.r(iA);
            while (i2 < list.size()) {
                int iIntValue3 = ((Integer) list.get(i2)).intValue();
                jn4Var.r((iIntValue3 >> 31) ^ (iIntValue3 + iIntValue3));
                i2++;
            }
            return;
        }
        sn4 sn4Var = (sn4) list;
        if (!z) {
            while (i2 < sn4Var.p) {
                int iD = sn4Var.d(i2);
                jn4Var.f(i, (iD >> 31) ^ (iD + iD));
                i2++;
            }
            return;
        }
        jn4Var.d(i, 2);
        int iA2 = 0;
        for (int i4 = 0; i4 < sn4Var.p; i4++) {
            int iD2 = sn4Var.d(i4);
            iA2 += jn4.a((iD2 >> 31) ^ (iD2 + iD2));
        }
        jn4Var.r(iA2);
        while (i2 < sn4Var.p) {
            int iD3 = sn4Var.d(i2);
            jn4Var.r((iD3 >> 31) ^ (iD3 + iD3));
            i2++;
        }
    }

    public static void n(int i, List list, dd1 dd1Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        jn4 jn4Var = (jn4) dd1Var.o;
        int i2 = 0;
        if (!(list instanceof sn4)) {
            if (!z) {
                while (i2 < list.size()) {
                    jn4Var.g(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            jn4Var.d(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                i3 += 4;
            }
            jn4Var.r(i3);
            while (i2 < list.size()) {
                jn4Var.s(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        sn4 sn4Var = (sn4) list;
        if (!z) {
            while (i2 < sn4Var.p) {
                jn4Var.g(i, sn4Var.d(i2));
                i2++;
            }
            return;
        }
        jn4Var.d(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < sn4Var.p; i6++) {
            sn4Var.d(i6);
            i5 += 4;
        }
        jn4Var.r(i5);
        while (i2 < sn4Var.p) {
            jn4Var.s(sn4Var.d(i2));
            i2++;
        }
    }

    public static void o(int i, List list, dd1 dd1Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        jn4 jn4Var = (jn4) dd1Var.o;
        int i2 = 0;
        if (!(list instanceof sn4)) {
            if (!z) {
                while (i2 < list.size()) {
                    jn4Var.g(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            jn4Var.d(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                i3 += 4;
            }
            jn4Var.r(i3);
            while (i2 < list.size()) {
                jn4Var.s(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        sn4 sn4Var = (sn4) list;
        if (!z) {
            while (i2 < sn4Var.p) {
                jn4Var.g(i, sn4Var.d(i2));
                i2++;
            }
            return;
        }
        jn4Var.d(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < sn4Var.p; i6++) {
            sn4Var.d(i6);
            i5 += 4;
        }
        jn4Var.r(i5);
        while (i2 < sn4Var.p) {
            jn4Var.s(sn4Var.d(i2));
            i2++;
        }
    }

    public static void p(int i, List list, dd1 dd1Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        jn4 jn4Var = (jn4) dd1Var.o;
        int i2 = 0;
        if (!(list instanceof sn4)) {
            if (!z) {
                while (i2 < list.size()) {
                    jn4Var.e(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            jn4Var.d(i, 2);
            int iB = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iB += jn4.b(((Integer) list.get(i3)).intValue());
            }
            jn4Var.r(iB);
            while (i2 < list.size()) {
                jn4Var.q(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        sn4 sn4Var = (sn4) list;
        if (!z) {
            while (i2 < sn4Var.p) {
                jn4Var.e(i, sn4Var.d(i2));
                i2++;
            }
            return;
        }
        jn4Var.d(i, 2);
        int iB2 = 0;
        for (int i4 = 0; i4 < sn4Var.p; i4++) {
            iB2 += jn4.b(sn4Var.d(i4));
        }
        jn4Var.r(iB2);
        while (i2 < sn4Var.p) {
            jn4Var.q(sn4Var.d(i2));
            i2++;
        }
    }

    public static void q(int i, List list, dd1 dd1Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        jn4 jn4Var = (jn4) dd1Var.o;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                jn4Var.j(i, ((Boolean) list.get(i2)).booleanValue());
                i2++;
            }
            return;
        }
        jn4Var.d(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Boolean) list.get(i4)).getClass();
            i3++;
        }
        jn4Var.r(i3);
        while (i2 < list.size()) {
            jn4Var.p(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    public static int r(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof jo4)) {
            int iB = 0;
            while (i < size) {
                iB += jn4.b(((Long) list.get(i)).longValue());
                i++;
            }
            return iB;
        }
        jo4 jo4Var = (jo4) list;
        int iB2 = 0;
        while (i < size) {
            iB2 += jn4.b(jo4Var.c(i));
            i++;
        }
        return iB2;
    }

    public static int s(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof jo4)) {
            int iB = 0;
            while (i < size) {
                iB += jn4.b(((Long) list.get(i)).longValue());
                i++;
            }
            return iB;
        }
        jo4 jo4Var = (jo4) list;
        int iB2 = 0;
        while (i < size) {
            iB2 += jn4.b(jo4Var.c(i));
            i++;
        }
        return iB2;
    }

    public static int t(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof jo4)) {
            int iB = 0;
            while (i < size) {
                long jLongValue = ((Long) list.get(i)).longValue();
                iB += jn4.b((jLongValue >> 63) ^ (jLongValue + jLongValue));
                i++;
            }
            return iB;
        }
        jo4 jo4Var = (jo4) list;
        int iB2 = 0;
        while (i < size) {
            long jC = jo4Var.c(i);
            iB2 += jn4.b((jC >> 63) ^ (jC + jC));
            i++;
        }
        return iB2;
    }

    public static int u(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof sn4)) {
            int iB = 0;
            while (i < size) {
                iB += jn4.b(((Integer) list.get(i)).intValue());
                i++;
            }
            return iB;
        }
        sn4 sn4Var = (sn4) list;
        int iB2 = 0;
        while (i < size) {
            iB2 += jn4.b(sn4Var.d(i));
            i++;
        }
        return iB2;
    }

    public static int v(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof sn4)) {
            int iB = 0;
            while (i < size) {
                iB += jn4.b(((Integer) list.get(i)).intValue());
                i++;
            }
            return iB;
        }
        sn4 sn4Var = (sn4) list;
        int iB2 = 0;
        while (i < size) {
            iB2 += jn4.b(sn4Var.d(i));
            i++;
        }
        return iB2;
    }

    public static int w(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof sn4)) {
            int iA = 0;
            while (i < size) {
                iA += jn4.a(((Integer) list.get(i)).intValue());
                i++;
            }
            return iA;
        }
        sn4 sn4Var = (sn4) list;
        int iA2 = 0;
        while (i < size) {
            iA2 += jn4.a(sn4Var.d(i));
            i++;
        }
        return iA2;
    }

    public static int x(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof sn4)) {
            int iA = 0;
            while (i < size) {
                int iIntValue = ((Integer) list.get(i)).intValue();
                iA += jn4.a((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i++;
            }
            return iA;
        }
        sn4 sn4Var = (sn4) list;
        int iA2 = 0;
        while (i < size) {
            int iD = sn4Var.d(i);
            iA2 += jn4.a((iD >> 31) ^ (iD + iD));
            i++;
        }
        return iA2;
    }

    public static int y(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (jn4.a(i << 3) + 4) * size;
    }

    public static int z(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (jn4.a(i << 3) + 8) * size;
    }
}
