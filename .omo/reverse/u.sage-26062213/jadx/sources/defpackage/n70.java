package defpackage;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Map;
import java.util.Properties;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class n70 implements h34 {
    public final /* synthetic */ int n;
    public final gw4 o;

    public /* synthetic */ n70(gw4 gw4Var, int i) {
        this.n = i;
        this.o = gw4Var;
    }

    @Override // defpackage.h34
    public final g34 a(pi1 pi1Var, q44 q44Var) {
        Class cls;
        Type[] actualTypeArguments;
        int i = this.n;
        gw4 gw4Var = this.o;
        cls = Object.class;
        switch (i) {
            case 0:
                Type type = q44Var.b;
                Class cls2 = q44Var.a;
                if (!Collection.class.isAssignableFrom(cls2)) {
                    return null;
                }
                Type typeH = gg4.H(type, cls2, Collection.class);
                cls = typeH instanceof ParameterizedType ? ((ParameterizedType) typeH).getActualTypeArguments()[0] : Object.class;
                return new m70(new ou1(pi1Var, pi1Var.b(new q44(cls)), cls, 2), gw4Var.y(q44Var, false), 0);
            default:
                Type type2 = q44Var.b;
                Class cls3 = q44Var.a;
                if (!Map.class.isAssignableFrom(cls3)) {
                    return null;
                }
                if (Properties.class.isAssignableFrom(cls3)) {
                    actualTypeArguments = new Type[]{String.class, String.class};
                } else {
                    Type typeH2 = gg4.H(type2, cls3, Map.class);
                    actualTypeArguments = typeH2 instanceof ParameterizedType ? ((ParameterizedType) typeH2).getActualTypeArguments() : new Type[]{cls, cls};
                }
                Type type3 = actualTypeArguments[0];
                Type type4 = actualTypeArguments[1];
                return new ou1(this, new ou1(pi1Var, (type3 == Boolean.TYPE || type3 == Boolean.class) ? m44.c : pi1Var.b(new q44(type3)), type3, 2), new ou1(pi1Var, pi1Var.b(new q44(type4)), type4, 2), gw4Var.y(q44Var, false));
        }
    }
}
