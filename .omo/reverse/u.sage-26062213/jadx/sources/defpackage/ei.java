package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class ei {
    public static final int a;

    static {
        Object f83Var;
        try {
            String property = System.getProperty("kotlinx.serialization.json.pool.size");
            property.getClass();
            f83Var = gt3.z0(property);
        } catch (Throwable th) {
            f83Var = new f83(th);
        }
        if (f83Var instanceof f83) {
            f83Var = null;
        }
        Integer num = (Integer) f83Var;
        a = num != null ? num.intValue() : 2097152;
    }
}
