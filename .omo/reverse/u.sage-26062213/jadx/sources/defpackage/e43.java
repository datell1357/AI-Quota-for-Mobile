package defpackage;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class e43 {
    public final String a;
    public final Field b;
    public final String c;
    public final /* synthetic */ Method d;
    public final /* synthetic */ g34 e;
    public final /* synthetic */ g34 f;
    public final /* synthetic */ boolean g;
    public final /* synthetic */ boolean h;

    public e43(String str, Field field, Method method, g34 g34Var, g34 g34Var2, boolean z, boolean z2) {
        this.d = method;
        this.e = g34Var;
        this.f = g34Var2;
        this.g = z;
        this.h = z2;
        this.a = str;
        this.b = field;
        this.c = field.getName();
    }

    public final void a(bx1 bx1Var, Object obj) throws IllegalAccessException {
        Object objInvoke;
        Method method = this.d;
        if (method != null) {
            try {
                objInvoke = method.invoke(obj, null);
            } catch (InvocationTargetException e) {
                throw new fw1(5, di0.v("Accessor ", c43.d(method, false), " threw exception"), e.getCause());
            }
        } else {
            objInvoke = this.b.get(obj);
        }
        if (objInvoke == obj) {
            return;
        }
        bx1Var.F(this.a);
        this.e.c(bx1Var, objInvoke);
    }
}
