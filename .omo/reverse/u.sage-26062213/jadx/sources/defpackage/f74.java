package defpackage;

import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f74 extends h74 {
    public final /* synthetic */ Method b;

    public f74(Method method) {
        this.b = method;
    }

    @Override // defpackage.h74
    public final Object a(Class cls) {
        String strI = gw4.i(cls);
        if (strI == null) {
            return this.b.invoke(null, cls, Object.class);
        }
        k21.c("UnsafeAllocator is used for non-instantiable type: ".concat(strI));
        return null;
    }
}
