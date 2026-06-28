package defpackage;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class dr implements dh0, si0, Serializable {
    public final dh0 n;

    public dr(dh0 dh0Var) {
        this.n = dh0Var;
    }

    @Override // defpackage.si0
    public si0 c() {
        dh0 dh0Var = this.n;
        if (dh0Var instanceof si0) {
            return (si0) dh0Var;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    @Override // defpackage.dh0
    public final void g(Object obj) {
        ?? r2 = this;
        while (true) {
            dr drVar = (dr) r2;
            dh0 dh0Var = drVar.n;
            dh0Var.getClass();
            try {
                obj = drVar.q(obj);
                if (obj == ri0.n) {
                    return;
                }
            } catch (Throwable th) {
                obj = new f83(th);
            }
            drVar.s();
            if (!(dh0Var instanceof dr)) {
                dh0Var.g(obj);
                return;
            }
            r2 = dh0Var;
        }
    }

    public dh0 o(dh0 dh0Var, Object obj) {
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }

    public StackTraceElement p() {
        int iIntValue;
        String strC;
        Method method;
        Object objInvoke;
        Method method2;
        Object objInvoke2;
        pn0 pn0Var = (pn0) getClass().getAnnotation(pn0.class);
        String str = null;
        if (pn0Var == null || pn0Var.v() < 1) {
            return null;
        }
        try {
            Field declaredField = getClass().getDeclaredField("label");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this);
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            iIntValue = (num != null ? num.intValue() : 0) - 1;
        } catch (Exception unused) {
            iIntValue = -1;
        }
        int i = iIntValue >= 0 ? pn0Var.l()[iIntValue] : -1;
        eh ehVar = ix.g;
        eh ehVar2 = ix.h;
        if (ehVar2 == null) {
            try {
                eh ehVar3 = new eh(Class.class.getDeclaredMethod("getModule", null), getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", null), getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", null), 21, false);
                ix.h = ehVar3;
                ehVar2 = ehVar3;
            } catch (Exception unused2) {
                ix.h = ehVar;
                ehVar2 = ehVar;
            }
        }
        if (ehVar2 != ehVar && (method = (Method) ehVar2.o) != null && (objInvoke = method.invoke(getClass(), null)) != null && (method2 = (Method) ehVar2.p) != null && (objInvoke2 = method2.invoke(objInvoke, null)) != null) {
            Method method3 = (Method) ehVar2.q;
            Object objInvoke3 = method3 != null ? method3.invoke(objInvoke2, null) : null;
            if (objInvoke3 instanceof String) {
                str = (String) objInvoke3;
            }
        }
        if (str == null) {
            strC = pn0Var.c();
        } else {
            strC = str + '/' + pn0Var.c();
        }
        return new StackTraceElement(strC, pn0Var.m(), pn0Var.f(), i);
    }

    public abstract Object q(Object obj);

    public String toString() {
        StringBuilder sb = new StringBuilder("Continuation at ");
        Object objP = p();
        if (objP == null) {
            objP = getClass().getName();
        }
        sb.append(objP);
        return sb.toString();
    }

    public void s() {
    }
}
