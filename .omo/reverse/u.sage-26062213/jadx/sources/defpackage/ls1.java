package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ls1 extends es1 {
    public final int n;
    public final int o;
    public boolean p;
    public int q;

    public ls1(int i, int i2, int i3) {
        this.n = i3;
        this.o = i2;
        boolean z = false;
        if (i3 <= 0 ? i >= i2 : i <= i2) {
            z = true;
        }
        this.p = z;
        this.q = z ? i : i2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.p;
    }

    @Override // defpackage.es1
    public final int nextInt() {
        int i = this.q;
        if (i != this.o) {
            this.q = this.n + i;
            return i;
        }
        if (this.p) {
            this.p = false;
            return i;
        }
        p61.v();
        return 0;
    }
}
