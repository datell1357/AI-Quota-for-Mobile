package defpackage;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class u60 implements InvocationHandler {
    public static final Constructor b;
    public final vm1 a;

    static {
        try {
            b = Proxy.getProxyClass(u60.class.getClassLoader(), t60.class).getConstructor(InvocationHandler.class);
        } catch (NoSuchMethodException e) {
            throw new IllegalStateException(e);
        }
    }

    public u60(vm1 vm1Var) {
        this.a = vm1Var;
    }

    public static t60 a(vm1 vm1Var) {
        try {
            return (t60) b.newInstance(new u60(vm1Var));
        } catch (IllegalAccessException e) {
            throw new IllegalStateException(e);
        } catch (InstantiationException e2) {
            throw new IllegalStateException(e2);
        } catch (InvocationTargetException e3) {
            throw new IllegalStateException(e3);
        }
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        boolean zEquals = method.getName().equals("close");
        vm1 vm1Var = this.a;
        if (zEquals) {
            n44.f0(vm1Var.getEntity());
            return null;
        }
        try {
            return method.invoke(vm1Var, objArr);
        } catch (InvocationTargetException e) {
            Throwable cause = e.getCause();
            if (cause != null) {
                throw cause;
            }
            throw e;
        }
    }
}
