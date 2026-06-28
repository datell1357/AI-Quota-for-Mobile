package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class wb0 {
    public static final pp2 a = new pp2("provider");
    public static final pp2 b = new pp2("provider");
    public static final pp2 c = new pp2("compositionLocalMap");
    public static final pp2 d = new pp2("providers");
    public static final pp2 e = new pp2("reference");

    public static final void a(String str) {
        throw new db0(di0.v("Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API (", str, "). Please report to Google or use https://goo.gle/compose-feedback"));
    }

    public static final Void b(String str) {
        throw new db0(di0.v("Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API (", str, "). Please report to Google or use https://goo.gle/compose-feedback"));
    }
}
