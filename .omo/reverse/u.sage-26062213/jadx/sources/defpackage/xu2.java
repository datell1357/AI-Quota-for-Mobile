package defpackage;

import java.util.ConcurrentModificationException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xu2 extends k1 {
    public final vu2 p;
    public int q;
    public i24 r;
    public int s;

    public xu2(vu2 vu2Var, int i) {
        super(i, vu2Var.f385u);
        this.p = vu2Var;
        this.q = vu2Var.g();
        this.s = -1;
        d();
    }

    @Override // defpackage.k1, java.util.ListIterator
    public final void add(Object obj) {
        b();
        int i = this.n;
        vu2 vu2Var = this.p;
        vu2Var.add(i, obj);
        this.n++;
        this.o = vu2Var.a();
        this.q = vu2Var.g();
        this.s = -1;
        d();
    }

    public final void b() {
        if (this.q != this.p.g()) {
            throw new ConcurrentModificationException();
        }
    }

    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    public final void d() {
        vu2 vu2Var = this.p;
        Object[] objArr = vu2Var.s;
        if (objArr == null) {
            this.r = null;
            return;
        }
        int i = (vu2Var.f385u - 1) & (-32);
        int i2 = this.n;
        if (i2 > i) {
            i2 = i;
        }
        int i3 = (vu2Var.q / 5) + 1;
        i24 i24Var = this.r;
        if (i24Var == null) {
            this.r = new i24(objArr, i2, i, i3);
            return;
        }
        i24Var.n = i2;
        i24Var.o = i;
        i24Var.p = i3;
        if (i24Var.q.length < i3) {
            i24Var.q = new Object[i3];
        }
        i24Var.q[0] = objArr;
        ?? r0 = i2 == i ? 1 : 0;
        i24Var.r = r0;
        i24Var.d(i2 - r0, 1);
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        b();
        if (!hasNext()) {
            p61.v();
            return null;
        }
        int i = this.n;
        this.s = i;
        i24 i24Var = this.r;
        vu2 vu2Var = this.p;
        if (i24Var == null) {
            Object[] objArr = vu2Var.t;
            this.n = i + 1;
            return objArr[i];
        }
        if (i24Var.hasNext()) {
            this.n++;
            return i24Var.next();
        }
        Object[] objArr2 = vu2Var.t;
        int i2 = this.n;
        this.n = i2 + 1;
        return objArr2[i2 - i24Var.o];
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        b();
        if (!hasPrevious()) {
            p61.v();
            return null;
        }
        int i = this.n;
        this.s = i - 1;
        i24 i24Var = this.r;
        vu2 vu2Var = this.p;
        if (i24Var == null) {
            Object[] objArr = vu2Var.t;
            int i2 = i - 1;
            this.n = i2;
            return objArr[i2];
        }
        int i3 = i24Var.o;
        if (i <= i3) {
            this.n = i - 1;
            return i24Var.previous();
        }
        Object[] objArr2 = vu2Var.t;
        int i4 = i - 1;
        this.n = i4;
        return objArr2[i4 - i3];
    }

    @Override // defpackage.k1, java.util.ListIterator, java.util.Iterator
    public final void remove() {
        b();
        int i = this.s;
        if (i == -1) {
            throw new IllegalStateException();
        }
        vu2 vu2Var = this.p;
        vu2Var.d(i);
        int i2 = this.s;
        if (i2 < this.n) {
            this.n = i2;
        }
        this.o = vu2Var.a();
        this.q = vu2Var.g();
        this.s = -1;
        d();
    }

    @Override // defpackage.k1, java.util.ListIterator
    public final void set(Object obj) {
        b();
        int i = this.s;
        if (i == -1) {
            throw new IllegalStateException();
        }
        vu2 vu2Var = this.p;
        vu2Var.set(i, obj);
        this.q = vu2Var.g();
        d();
    }
}
