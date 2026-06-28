package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bh0 implements qi0 {
    public final hi0 n;

    public bh0(hi0 hi0Var) {
        this.n = hi0Var;
    }

    @Override // defpackage.qi0
    public final hi0 d() {
        return this.n;
    }

    public final String toString() {
        return "CoroutineScope(coroutineContext=" + this.n + ')';
    }
}
