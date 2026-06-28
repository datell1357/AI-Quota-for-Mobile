package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m24 extends k24 {
    public final pu2 q;

    public m24(pu2 pu2Var) {
        this.q = pu2Var;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.p;
        this.p = i + 2;
        Object[] objArr = this.n;
        return new ag2(this.q, objArr[i], objArr[i + 1]);
    }
}
