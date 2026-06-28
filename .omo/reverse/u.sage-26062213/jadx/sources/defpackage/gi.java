package defpackage;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class gi implements h34 {
    @Override // defpackage.h34
    public final g34 a(pi1 pi1Var, q44 q44Var) {
        Type type = q44Var.b;
        boolean z = type instanceof GenericArrayType;
        if (!z && (!(type instanceof Class) || !((Class) type).isArray())) {
            return null;
        }
        Type genericComponentType = z ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
        return new hi(pi1Var, pi1Var.b(new q44(genericComponentType)), gg4.F(genericComponentType));
    }
}
