package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class d41 {
    public static final c41 a = new c41();
    public static final c41 b;

    static {
        zz2 zz2Var = zz2.c;
        c41 c41Var = null;
        try {
            c41Var = (c41) Class.forName("androidx.datastore.preferences.protobuf.ExtensionSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        b = c41Var;
    }
}
