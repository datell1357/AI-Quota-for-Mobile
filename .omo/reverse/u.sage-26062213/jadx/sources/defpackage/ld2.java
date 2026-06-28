package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface ld2 extends nd2 {
    @Override // defpackage.nd2
    default Object a(df1 df1Var, Object obj) {
        return df1Var.f(obj, this);
    }

    @Override // defpackage.nd2
    default boolean b(pe1 pe1Var) {
        return ((Boolean) pe1Var.k(this)).booleanValue();
    }
}
