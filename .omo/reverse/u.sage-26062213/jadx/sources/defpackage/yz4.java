package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yz4 {
    public static final xz4 a(Object obj, Object obj2) {
        xz4 xz4Var = (xz4) obj;
        xz4 xz4Var2 = (xz4) obj2;
        if (!xz4Var2.isEmpty()) {
            if (!xz4Var.n) {
                if (xz4Var.isEmpty()) {
                    xz4Var = new xz4();
                } else {
                    xz4 xz4Var3 = new xz4(xz4Var);
                    xz4Var3.n = true;
                    xz4Var = xz4Var3;
                }
            }
            xz4Var.a();
            if (!xz4Var2.isEmpty()) {
                xz4Var.putAll(xz4Var2);
            }
        }
        return xz4Var;
    }
}
