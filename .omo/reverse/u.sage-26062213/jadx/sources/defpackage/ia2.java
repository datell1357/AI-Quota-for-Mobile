package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ia2 {
    public static ha2 a(Object obj, Object obj2) {
        ha2 ha2VarB = (ha2) obj;
        ha2 ha2Var = (ha2) obj2;
        if (!ha2Var.isEmpty()) {
            if (!ha2VarB.n) {
                ha2VarB = ha2VarB.b();
            }
            ha2VarB.a();
            if (!ha2Var.isEmpty()) {
                ha2VarB.putAll(ha2Var);
            }
        }
        return ha2VarB;
    }
}
