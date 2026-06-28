package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface nd2 {
    Object a(df1 df1Var, Object obj);

    boolean b(pe1 pe1Var);

    default nd2 c(nd2 nd2Var) {
        return nd2Var == kd2.b ? this : new t80(this, nd2Var);
    }
}
