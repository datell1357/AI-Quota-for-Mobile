package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class oy4 {
    public static final ly4 a = new ly4();
    public static final ly4 b;

    static {
        ly4 ly4Var = null;
        try {
            ly4Var = (ly4) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        b = ly4Var;
    }
}
