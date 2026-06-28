package defpackage;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m50 {
    public static final m50 c = new m50();
    public final HashMap a = new HashMap();
    public final HashMap b = new HashMap();

    public static void b(HashMap map, l50 l50Var, f22 f22Var, Class cls) {
        f22 f22Var2 = (f22) map.get(l50Var);
        if (f22Var2 == null || f22Var == f22Var2) {
            if (f22Var2 == null) {
                map.put(l50Var, f22Var);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Method " + l50Var.b.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + f22Var2 + ", new value " + f22Var);
    }

    public final k50 a(Class cls, Method[] methodArr) {
        int i;
        Class superclass = cls.getSuperclass();
        HashMap map = new HashMap();
        HashMap map2 = this.a;
        if (superclass != null) {
            k50 k50VarA = (k50) map2.get(superclass);
            if (k50VarA == null) {
                k50VarA = a(superclass, null);
            }
            map.putAll(k50VarA.b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            k50 k50VarA2 = (k50) map2.get(cls2);
            if (k50VarA2 == null) {
                k50VarA2 = a(cls2, null);
            }
            for (Map.Entry entry : k50VarA2.b.entrySet()) {
                b(map, (l50) entry.getKey(), (f22) entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            try {
                methodArr = cls.getDeclaredMethods();
            } catch (NoClassDefFoundError e) {
                throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
            }
        }
        boolean z = false;
        for (Method method : methodArr) {
            ep2 ep2Var = (ep2) method.getAnnotation(ep2.class);
            if (ep2Var != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else {
                    if (!p22.class.isAssignableFrom(parameterTypes[0])) {
                        k21.f("invalid parameter type. Must be one and instanceof LifecycleOwner");
                        return null;
                    }
                    i = 1;
                }
                f22 f22VarValue = ep2Var.value();
                if (parameterTypes.length > 1) {
                    if (!f22.class.isAssignableFrom(parameterTypes[1])) {
                        k21.f("invalid parameter type. second arg must be an event");
                        return null;
                    }
                    if (f22VarValue != f22.ON_ANY) {
                        k21.f("Second arg is supported only for ON_ANY value");
                        return null;
                    }
                    i = 2;
                }
                if (parameterTypes.length > 2) {
                    k21.f("cannot have more than 2 params");
                    return null;
                }
                b(map, new l50(i, method), f22VarValue, cls);
                z = true;
            }
        }
        k50 k50Var = new k50(map);
        map2.put(cls, k50Var);
        this.b.put(cls, Boolean.valueOf(z));
        return k50Var;
    }
}
