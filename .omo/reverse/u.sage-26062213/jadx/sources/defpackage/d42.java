package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class d42 {
    public static final c42 a;
    public static final c42 b;

    static {
        zz2 zz2Var = zz2.c;
        c42 c42Var = null;
        try {
            c42Var = (c42) Class.forName("androidx.datastore.preferences.protobuf.ListFieldSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        a = c42Var;
        b = new c42();
    }
}
