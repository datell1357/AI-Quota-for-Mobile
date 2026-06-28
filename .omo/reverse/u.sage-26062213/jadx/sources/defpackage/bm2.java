package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class bm2 {
    public static final am2 a;
    public static final am2 b;

    static {
        zz2 zz2Var = zz2.c;
        am2 am2Var = null;
        try {
            am2Var = (am2) Class.forName("androidx.datastore.preferences.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        a = am2Var;
        b = new am2();
    }
}
