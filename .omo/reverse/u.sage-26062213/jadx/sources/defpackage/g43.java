package defpackage;

import java.lang.reflect.Field;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class g43 extends f43 {
    public final on2 b;

    public g43(on2 on2Var, h43 h43Var) {
        super(h43Var);
        this.b = on2Var;
    }

    @Override // defpackage.f43
    public final Object d() {
        return this.b.d();
    }

    @Override // defpackage.f43
    public final void f(Object obj, ww1 ww1Var, e43 e43Var) throws IllegalAccessException {
        Field field = e43Var.b;
        Object objB = e43Var.f.b(ww1Var);
        if (objB == null && e43Var.g) {
            return;
        }
        if (e43Var.h) {
            throw new fw1("Cannot set value of 'static final' ".concat(c43.d(field, false)), 5);
        }
        field.set(obj, objB);
    }

    @Override // defpackage.f43
    public final Object e(Object obj) {
        return obj;
    }
}
