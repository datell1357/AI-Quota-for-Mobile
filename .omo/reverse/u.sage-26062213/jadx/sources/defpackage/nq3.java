package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nq3 extends es1 {
    public int n;
    public final /* synthetic */ mq3 o;

    public nq3(mq3 mq3Var) {
        this.o = mq3Var;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.n < this.o.f();
    }

    @Override // defpackage.es1
    public final int nextInt() {
        int i = this.n;
        this.n = i + 1;
        return this.o.d(i);
    }
}
