package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i24 extends k1 {
    public int p;
    public Object[] q;
    public boolean r;

    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v3 */
    public i24(Object[] objArr, int i, int i2, int i3) {
        super(i, i2);
        this.p = i3;
        Object[] objArr2 = new Object[i3];
        this.q = objArr2;
        ?? r5 = i == i2 ? 1 : 0;
        this.r = r5;
        objArr2[0] = objArr;
        d(i - r5, 1);
    }

    public final Object b() {
        int i = this.n & 31;
        Object obj = this.q[this.p - 1];
        obj.getClass();
        return ((Object[]) obj)[i];
    }

    public final void d(int i, int i2) {
        int i3 = (this.p - i2) * 5;
        while (i2 < this.p) {
            Object[] objArr = this.q;
            Object obj = objArr[i2 - 1];
            obj.getClass();
            objArr[i2] = ((Object[]) obj)[qn0.x(i, i3)];
            i3 -= 5;
            i2++;
        }
    }

    public final void e(int i) {
        int i2 = 0;
        while (qn0.x(this.n, i2) == i) {
            i2 += 5;
        }
        if (i2 > 0) {
            d(this.n, ((this.p - 1) - (i2 / 5)) + 1);
        }
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            p61.v();
            return null;
        }
        Object objB = b();
        int i = this.n + 1;
        this.n = i;
        if (i == this.o) {
            this.r = true;
            return objB;
        }
        e(0);
        return objB;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            p61.v();
            return null;
        }
        this.n--;
        if (this.r) {
            this.r = false;
            return b();
        }
        e(31);
        return b();
    }
}
