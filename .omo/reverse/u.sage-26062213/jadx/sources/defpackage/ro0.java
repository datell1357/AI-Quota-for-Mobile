package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class ro0 {
    public static final hr0 a;

    static {
        String property;
        hr0 hr0Var;
        int i = bw3.a;
        try {
            property = System.getProperty("kotlinx.coroutines.main.delay");
        } catch (SecurityException unused) {
            property = null;
        }
        if (property != null ? Boolean.parseBoolean(property) : false) {
            zp0 zp0Var = zu0.a;
            xi1 xi1Var = n92.a;
            xi1 xi1Var2 = xi1Var.s;
            hr0Var = xi1Var;
            if (xi1Var == null) {
                hr0Var = qo0.y;
            }
        } else {
            hr0Var = qo0.y;
        }
        a = hr0Var;
    }
}
