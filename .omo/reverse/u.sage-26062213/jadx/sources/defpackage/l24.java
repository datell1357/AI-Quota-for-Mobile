package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class l24 extends k24 {
    public final /* synthetic */ int q;

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.q) {
            case 0:
                int i = this.p;
                this.p = i + 2;
                Object[] objArr = this.n;
                return new fa2(0, objArr[i], objArr[i + 1]);
            case 1:
                int i2 = this.p;
                this.p = i2 + 2;
                return this.n[i2];
            default:
                int i3 = this.p;
                this.p = i3 + 2;
                return this.n[i3 + 1];
        }
    }
}
