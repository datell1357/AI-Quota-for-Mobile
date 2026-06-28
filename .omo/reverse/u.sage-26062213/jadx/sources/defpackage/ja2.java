package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class ja2 {
    public static final ia2 a;
    public static final ia2 b;

    static {
        zz2 zz2Var = zz2.c;
        ia2 ia2Var = null;
        try {
            ia2Var = (ia2) Class.forName("androidx.datastore.preferences.protobuf.MapFieldSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        a = ia2Var;
        b = new ia2();
    }
}
