package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class y33 {
    public static final z33 a;

    static {
        z33 z33Var = null;
        try {
            z33Var = (z33) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (z33Var == null) {
            z33Var = new z33();
        }
        a = z33Var;
    }

    public static i50 a(Class cls) {
        a.getClass();
        return new i50(cls);
    }
}
