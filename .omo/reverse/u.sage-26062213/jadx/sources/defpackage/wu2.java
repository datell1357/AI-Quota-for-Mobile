package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wu2 extends k1 {
    public final Object[] p;
    public final i24 q;

    public wu2(int i, int i2, int i3, Object[] objArr, Object[] objArr2) {
        super(i, i2);
        this.p = objArr2;
        int i4 = (i2 - 1) & (-32);
        this.q = new i24(objArr, i > i4 ? i4 : i, i4, i3);
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            p61.v();
            return null;
        }
        i24 i24Var = this.q;
        if (i24Var.hasNext()) {
            this.n++;
            return i24Var.next();
        }
        int i = this.n;
        this.n = i + 1;
        return this.p[i - i24Var.o];
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            p61.v();
            return null;
        }
        int i = this.n;
        i24 i24Var = this.q;
        int i2 = i24Var.o;
        if (i <= i2) {
            this.n = i - 1;
            return i24Var.previous();
        }
        int i3 = i - 1;
        this.n = i3;
        return this.p[i3 - i2];
    }
}
