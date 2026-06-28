package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class uy extends k1 {
    public final /* synthetic */ int p = 1;
    public final Object q;

    public uy(Object[] objArr, int i, int i2) {
        super(i, i2);
        this.q = objArr;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        int i = this.p;
        Object obj = this.q;
        switch (i) {
            case 0:
                if (!hasNext()) {
                    p61.v();
                } else {
                    int i2 = this.n;
                    this.n = i2 + 1;
                }
                break;
            default:
                if (!hasNext()) {
                    p61.v();
                } else {
                    this.n++;
                }
                break;
        }
        return null;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        int i = this.p;
        Object obj = this.q;
        switch (i) {
            case 0:
                if (!hasPrevious()) {
                    p61.v();
                } else {
                    int i2 = this.n - 1;
                    this.n = i2;
                }
                break;
            default:
                if (!hasPrevious()) {
                    p61.v();
                } else {
                    this.n--;
                }
                break;
        }
        return null;
    }

    public uy(int i, Object obj) {
        super(i, 1);
        this.q = obj;
    }
}
