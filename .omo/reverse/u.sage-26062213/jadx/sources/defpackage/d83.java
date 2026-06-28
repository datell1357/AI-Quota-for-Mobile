package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class d83 extends dr {
    public d83(dh0 dh0Var) {
        super(dh0Var);
        if (dh0Var == null || dh0Var.e() == d01.n) {
            return;
        }
        k21.f("Coroutines with restricted suspension must have EmptyCoroutineContext");
        throw null;
    }

    @Override // defpackage.dh0
    public final hi0 e() {
        return d01.n;
    }
}
