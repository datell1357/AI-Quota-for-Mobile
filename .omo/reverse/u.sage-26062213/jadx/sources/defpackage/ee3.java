package defpackage;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class ee3 {
    public static final Class a;
    public static final w64 b;
    public static final w64 c;

    static {
        Class<?> cls;
        Class<?> cls2;
        zz2 zz2Var = zz2.c;
        w64 w64Var = null;
        try {
            cls = Class.forName("androidx.datastore.preferences.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        a = cls;
        try {
            zz2 zz2Var2 = zz2.c;
            try {
                cls2 = Class.forName("androidx.datastore.preferences.protobuf.UnknownFieldSetSchema");
            } catch (Throwable unused2) {
                cls2 = null;
            }
            if (cls2 != null) {
                w64Var = (w64) cls2.getConstructor(null).newInstance(null);
            }
        } catch (Throwable unused3) {
        }
        b = w64Var;
        c = new w64();
    }

    public static int a(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iJ = 0;
        for (int i = 0; i < size; i++) {
            iJ += d70.j(((Integer) list.get(i)).intValue());
        }
        return iJ;
    }

    public static int b(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (d70.h(i) + 4) * size;
    }

    public static int c(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (d70.h(i) + 8) * size;
    }

    public static int d(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iJ = 0;
        for (int i = 0; i < size; i++) {
            iJ += d70.j(((Integer) list.get(i)).intValue());
        }
        return iJ;
    }

    public static int e(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iJ = 0;
        for (int i = 0; i < size; i++) {
            iJ += d70.j(((Long) list.get(i)).longValue());
        }
        return iJ;
    }

    public static int f(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            int iIntValue = ((Integer) list.get(i2)).intValue();
            i += d70.i((iIntValue >> 31) ^ (iIntValue << 1));
        }
        return i;
    }

    public static int g(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iJ = 0;
        for (int i = 0; i < size; i++) {
            long jLongValue = ((Long) list.get(i)).longValue();
            iJ += d70.j((jLongValue >> 63) ^ (jLongValue << 1));
        }
        return iJ;
    }

    public static int h(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += d70.i(((Integer) list.get(i2)).intValue());
        }
        return i;
    }

    public static int i(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iJ = 0;
        for (int i = 0; i < size; i++) {
            iJ += d70.j(((Long) list.get(i)).longValue());
        }
        return iJ;
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
    public static void k(w64 w64Var, Object obj, Object obj2) {
        w64Var.getClass();
        sg1 sg1Var = (sg1) obj;
        v64 v64Var = sg1Var.unknownFields;
        v64 v64Var2 = ((sg1) obj2).unknownFields;
        v64 v64Var3 = v64.f;
        if (!v64Var3.equals(v64Var2)) {
            if (v64Var3.equals(v64Var)) {
                int i = v64Var.a + v64Var2.a;
                int[] iArrCopyOf = Arrays.copyOf(v64Var.b, i);
                System.arraycopy(v64Var2.b, 0, iArrCopyOf, v64Var.a, v64Var2.a);
                Object[] objArrCopyOf = Arrays.copyOf(v64Var.c, i);
                System.arraycopy(v64Var2.c, 0, objArrCopyOf, v64Var.a, v64Var2.a);
                v64Var = new v64(i, iArrCopyOf, objArrCopyOf, true);
            } else {
                v64Var.getClass();
                if (!v64Var2.equals(v64Var3)) {
                    if (!v64Var.e) {
                        p61.b();
                        return;
                    }
                    int i2 = v64Var.a + v64Var2.a;
                    v64Var.a(i2);
                    System.arraycopy(v64Var2.b, 0, v64Var.b, v64Var.a, v64Var2.a);
                    System.arraycopy(v64Var2.c, 0, v64Var.c, v64Var.a, v64Var2.a);
                    v64Var.a = i2;
                }
            }
        }
        sg1Var.unknownFields = v64Var;
    }

    public static boolean l(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static void m(int i, List list, dh1 dh1Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d70 d70Var = (d70) dh1Var.n;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                d70Var.o(i, ((Boolean) list.get(i2)).booleanValue());
                i2++;
            }
            return;
        }
        d70Var.B(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Boolean) list.get(i4)).getClass();
            Logger logger = d70.f;
            i3++;
        }
        d70Var.D(i3);
        while (i2 < list.size()) {
            d70Var.m(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    public static void n(int i, List list, dh1 dh1Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d70 d70Var = (d70) dh1Var.n;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                double dDoubleValue = ((Double) list.get(i2)).doubleValue();
                d70Var.getClass();
                d70Var.t(i, Double.doubleToRawLongBits(dDoubleValue));
                i2++;
            }
            return;
        }
        d70Var.B(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Double) list.get(i4)).getClass();
            Logger logger = d70.f;
            i3 += 8;
        }
        d70Var.D(i3);
        while (i2 < list.size()) {
            d70Var.u(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
            i2++;
        }
    }

    public static void o(int i, List list, dh1 dh1Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d70 d70Var = (d70) dh1Var.n;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                d70Var.v(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        d70Var.B(i, 2);
        int iJ = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iJ += d70.j(((Integer) list.get(i3)).intValue());
        }
        d70Var.D(iJ);
        while (i2 < list.size()) {
            d70Var.w(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static void p(int i, List list, dh1 dh1Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d70 d70Var = (d70) dh1Var.n;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                d70Var.r(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        d70Var.B(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Integer) list.get(i4)).getClass();
            Logger logger = d70.f;
            i3 += 4;
        }
        d70Var.D(i3);
        while (i2 < list.size()) {
            d70Var.s(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static void q(int i, List list, dh1 dh1Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d70 d70Var = (d70) dh1Var.n;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                d70Var.t(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        d70Var.B(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).getClass();
            Logger logger = d70.f;
            i3 += 8;
        }
        d70Var.D(i3);
        while (i2 < list.size()) {
            d70Var.u(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static void r(int i, List list, dh1 dh1Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d70 d70Var = (d70) dh1Var.n;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                float fFloatValue = ((Float) list.get(i2)).floatValue();
                d70Var.getClass();
                d70Var.r(i, Float.floatToRawIntBits(fFloatValue));
                i2++;
            }
            return;
        }
        d70Var.B(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Float) list.get(i4)).getClass();
            Logger logger = d70.f;
            i3 += 4;
        }
        d70Var.D(i3);
        while (i2 < list.size()) {
            d70Var.s(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
            i2++;
        }
    }

    public static void s(int i, List list, dh1 dh1Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d70 d70Var = (d70) dh1Var.n;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                d70Var.v(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        d70Var.B(i, 2);
        int iJ = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iJ += d70.j(((Integer) list.get(i3)).intValue());
        }
        d70Var.D(iJ);
        while (i2 < list.size()) {
            d70Var.w(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static void t(int i, List list, dh1 dh1Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d70 d70Var = (d70) dh1Var.n;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                d70Var.E(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        d70Var.B(i, 2);
        int iJ = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iJ += d70.j(((Long) list.get(i3)).longValue());
        }
        d70Var.D(iJ);
        while (i2 < list.size()) {
            d70Var.F(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static void u(int i, List list, dh1 dh1Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d70 d70Var = (d70) dh1Var.n;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                d70Var.r(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        d70Var.B(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Integer) list.get(i4)).getClass();
            Logger logger = d70.f;
            i3 += 4;
        }
        d70Var.D(i3);
        while (i2 < list.size()) {
            d70Var.s(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static void v(int i, List list, dh1 dh1Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d70 d70Var = (d70) dh1Var.n;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                d70Var.t(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        d70Var.B(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).getClass();
            Logger logger = d70.f;
            i3 += 8;
        }
        d70Var.D(i3);
        while (i2 < list.size()) {
            d70Var.u(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static void w(int i, List list, dh1 dh1Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d70 d70Var = (d70) dh1Var.n;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                int iIntValue = ((Integer) list.get(i2)).intValue();
                d70Var.C(i, (iIntValue >> 31) ^ (iIntValue << 1));
                i2++;
            }
            return;
        }
        d70Var.B(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            int iIntValue2 = ((Integer) list.get(i4)).intValue();
            i3 += d70.i((iIntValue2 >> 31) ^ (iIntValue2 << 1));
        }
        d70Var.D(i3);
        while (i2 < list.size()) {
            int iIntValue3 = ((Integer) list.get(i2)).intValue();
            d70Var.D((iIntValue3 >> 31) ^ (iIntValue3 << 1));
            i2++;
        }
    }

    public static void x(int i, List list, dh1 dh1Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d70 d70Var = (d70) dh1Var.n;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                long jLongValue = ((Long) list.get(i2)).longValue();
                d70Var.E(i, (jLongValue >> 63) ^ (jLongValue << 1));
                i2++;
            }
            return;
        }
        d70Var.B(i, 2);
        int iJ = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            long jLongValue2 = ((Long) list.get(i3)).longValue();
            iJ += d70.j((jLongValue2 >> 63) ^ (jLongValue2 << 1));
        }
        d70Var.D(iJ);
        while (i2 < list.size()) {
            long jLongValue3 = ((Long) list.get(i2)).longValue();
            d70Var.F((jLongValue3 >> 63) ^ (jLongValue3 << 1));
            i2++;
        }
    }

    public static void y(int i, List list, dh1 dh1Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d70 d70Var = (d70) dh1Var.n;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                d70Var.C(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        d70Var.B(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += d70.i(((Integer) list.get(i4)).intValue());
        }
        d70Var.D(i3);
        while (i2 < list.size()) {
            d70Var.D(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static void z(int i, List list, dh1 dh1Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d70 d70Var = (d70) dh1Var.n;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                d70Var.E(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        d70Var.B(i, 2);
        int iJ = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iJ += d70.j(((Long) list.get(i3)).longValue());
        }
        d70Var.D(iJ);
        while (i2 < list.size()) {
            d70Var.F(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static Object j(Object obj, int i, ct1 ct1Var, Object obj2, w64 w64Var) {
        return obj2;
    }
}
