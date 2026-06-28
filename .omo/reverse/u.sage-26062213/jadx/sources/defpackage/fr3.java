package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fr3 implements dh0, si0 {
    public final dh0 n;
    public final hi0 o;

    public fr3(dh0 dh0Var, hi0 hi0Var) {
        this.n = dh0Var;
        this.o = hi0Var;
    }

    @Override // defpackage.si0
    public final si0 c() {
        dh0 dh0Var = this.n;
        if (dh0Var instanceof si0) {
            return (si0) dh0Var;
        }
        return null;
    }

    @Override // defpackage.dh0
    public final hi0 e() {
        return this.o;
    }

    @Override // defpackage.dh0
    public final void g(Object obj) {
        this.n.g(obj);
    }
}
