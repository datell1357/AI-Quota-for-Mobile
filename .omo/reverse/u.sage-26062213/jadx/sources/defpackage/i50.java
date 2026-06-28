package defpackage;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i50 implements g50 {
    public static final Map b;
    public final Class a;

    static {
        List listF = tv4.F(ne1.class, pe1.class, df1.class, ff1.class, gf1.class, hf1.class, if1.class, jf1.class, kf1.class, lf1.class, oe1.class, qe1.class, re1.class, se1.class, te1.class, ue1.class, ve1.class, we1.class, xe1.class, ye1.class, af1.class, bf1.class, cf1.class);
        ArrayList arrayList = new ArrayList(p70.a0(listF, 10));
        int i = 0;
        for (Object obj : listF) {
            int i2 = i + 1;
            if (i < 0) {
                tv4.S();
                throw null;
            }
            arrayList.add(new js2((Class) obj, Integer.valueOf(i)));
            i = i2;
        }
        b = oa2.d0(arrayList);
    }

    public i50(Class cls) {
        cls.getClass();
        this.a = cls;
    }

    @Override // defpackage.g50
    public final Class a() {
        return this.a;
    }

    public final String b() {
        String strK;
        Class cls = this.a;
        cls.getClass();
        String strConcat = null;
        if (cls.isAnonymousClass() || cls.isLocalClass()) {
            return null;
        }
        if (!cls.isArray()) {
            String strK2 = nt1.k(cls.getName());
            return strK2 == null ? cls.getCanonicalName() : strK2;
        }
        Class<?> componentType = cls.getComponentType();
        if (componentType.isPrimitive() && (strK = nt1.k(componentType.getName())) != null) {
            strConcat = strK.concat("Array");
        }
        return strConcat == null ? "kotlin.Array" : strConcat;
    }

    public final String c() {
        String strW;
        Class cls = this.a;
        cls.getClass();
        String strConcat = null;
        if (cls.isAnonymousClass()) {
            return null;
        }
        if (!cls.isLocalClass()) {
            if (!cls.isArray()) {
                String strW2 = nt1.W(cls.getName());
                return strW2 == null ? cls.getSimpleName() : strW2;
            }
            Class<?> componentType = cls.getComponentType();
            if (componentType.isPrimitive() && (strW = nt1.W(componentType.getName())) != null) {
                strConcat = strW.concat("Array");
            }
            return strConcat == null ? "Array" : strConcat;
        }
        String simpleName = cls.getSimpleName();
        Method enclosingMethod = cls.getEnclosingMethod();
        if (enclosingMethod != null) {
            return zs3.S0(simpleName, enclosingMethod.getName() + '$');
        }
        Constructor<?> enclosingConstructor = cls.getEnclosingConstructor();
        if (enclosingConstructor == null) {
            int iF0 = zs3.F0(simpleName, '$', 0, 6);
            return iF0 == -1 ? simpleName : simpleName.substring(iF0 + 1, simpleName.length());
        }
        return zs3.S0(simpleName, enclosingConstructor.getName() + '$');
    }

    public final boolean d(Object obj) {
        Class clsY = this.a;
        clsY.getClass();
        Map map = b;
        map.getClass();
        Integer num = (Integer) map.get(clsY);
        if (num != null) {
            return n44.u0(num.intValue(), obj);
        }
        if (clsY.isPrimitive()) {
            clsY = on4.y(y33.a(clsY));
        }
        return clsY.isInstance(obj);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof i50) && on4.y(this).equals(on4.y((i50) obj));
    }

    public final int hashCode() {
        return on4.y(this).hashCode();
    }

    public final String toString() {
        return this.a.toString() + " (Kotlin reflection is not available)";
    }
}
