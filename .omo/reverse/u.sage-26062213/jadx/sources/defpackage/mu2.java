package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class mu2 implements Iterator, fx1 {
    public final k24[] n;
    public int o;
    public boolean p = true;

    public mu2(j24 j24Var, k24[] k24VarArr) {
        this.n = k24VarArr;
        k24VarArr[0].b(j24Var.d, Integer.bitCount(j24Var.a) * 2, 0);
        this.o = 0;
        b();
    }

    public final void b() {
        int i = this.o;
        k24[] k24VarArr = this.n;
        k24 k24Var = k24VarArr[i];
        if (k24Var.p < k24Var.o) {
            return;
        }
        while (-1 < i) {
            int iD = d(i);
            if (iD == -1) {
                k24 k24Var2 = k24VarArr[i];
                int i2 = k24Var2.p;
                Object[] objArr = k24Var2.n;
                if (i2 < objArr.length) {
                    int length = objArr.length;
                    k24Var2.p = i2 + 1;
                    iD = d(i);
                }
            }
            if (iD != -1) {
                this.o = iD;
                return;
            }
            if (i > 0) {
                k24 k24Var3 = k24VarArr[i - 1];
                int i3 = k24Var3.p;
                int length2 = k24Var3.n.length;
                k24Var3.p = i3 + 1;
            }
            k24VarArr[i].b(j24.e.d, 0, 0);
            i--;
        }
        this.p = false;
    }

    public final int d(int i) {
        k24[] k24VarArr = this.n;
        k24 k24Var = k24VarArr[i];
        int i2 = k24Var.p;
        if (i2 < k24Var.o) {
            return i;
        }
        Object[] objArr = k24Var.n;
        if (i2 >= objArr.length) {
            return -1;
        }
        int length = objArr.length;
        Object obj = objArr[i2];
        obj.getClass();
        j24 j24Var = (j24) obj;
        if (i == 6) {
            k24 k24Var2 = k24VarArr[i + 1];
            Object[] objArr2 = j24Var.d;
            k24Var2.b(objArr2, objArr2.length, 0);
        } else {
            k24VarArr[i + 1].b(j24Var.d, Integer.bitCount(j24Var.a) * 2, 0);
        }
        return d(i + 1);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.p;
    }

    @Override // java.util.Iterator
    public Object next() {
        if (!this.p) {
            p61.v();
            return null;
        }
        Object next = this.n[this.o].next();
        b();
        return next;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
