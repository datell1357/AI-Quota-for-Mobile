package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class cs3 implements bs3 {
    public final lj n = new lj(0);

    public final boolean c(int i) {
        return (this.n.get() & i) != 0;
    }

    public final void f(int i) {
        lj ljVar;
        int i2;
        do {
            ljVar = this.n;
            i2 = ljVar.get();
            if ((i2 & i) != 0) {
                return;
            }
        } while (!ljVar.compareAndSet(i2, i2 | i));
    }
}
