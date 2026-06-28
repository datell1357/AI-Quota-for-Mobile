package defpackage;

import java.util.ConcurrentModificationException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class nu2 extends mu2 {
    public final gu2 q;
    public Object r;
    public boolean s;
    public int t;

    public nu2(gu2 gu2Var, k24[] k24VarArr) {
        super(gu2Var.o, k24VarArr);
        this.q = gu2Var;
        this.t = gu2Var.q;
    }

    public final void e(int i, j24 j24Var, Object obj, int i2) {
        int i3 = i2 * 5;
        k24[] k24VarArr = this.n;
        if (i3 <= 30) {
            int iY = 1 << dm0.y(i, i3);
            if (j24Var.h(iY)) {
                k24VarArr[i2].b(j24Var.d, Integer.bitCount(j24Var.a) * 2, j24Var.f(iY));
                this.o = i2;
                return;
            } else {
                int iT = j24Var.t(iY);
                j24 j24VarS = j24Var.s(iT);
                k24VarArr[i2].b(j24Var.d, Integer.bitCount(j24Var.a) * 2, iT);
                e(i, j24VarS, obj, i2 + 1);
                return;
            }
        }
        k24 k24Var = k24VarArr[i2];
        Object[] objArr = j24Var.d;
        k24Var.b(objArr, objArr.length, 0);
        while (true) {
            k24 k24Var2 = k24VarArr[i2];
            if (nt1.g(k24Var2.n[k24Var2.p], obj)) {
                this.o = i2;
                return;
            } else {
                k24VarArr[i2].p += 2;
            }
        }
    }

    @Override // defpackage.mu2, java.util.Iterator
    public final Object next() {
        if (this.q.q != this.t) {
            throw new ConcurrentModificationException();
        }
        if (!this.p) {
            p61.v();
            return null;
        }
        k24 k24Var = this.n[this.o];
        this.r = k24Var.n[k24Var.p];
        this.s = true;
        return super.next();
    }

    @Override // defpackage.mu2, java.util.Iterator
    public final void remove() {
        if (!this.s) {
            throw new IllegalStateException();
        }
        boolean z = this.p;
        gu2 gu2Var = this.q;
        if (!z) {
            n44.P(gu2Var).remove(this.r);
        } else {
            if (!z) {
                p61.v();
                return;
            }
            k24 k24Var = this.n[this.o];
            Object obj = k24Var.n[k24Var.p];
            n44.P(gu2Var).remove(this.r);
            e(obj != null ? obj.hashCode() : 0, gu2Var.o, obj, 0);
        }
        this.r = null;
        this.s = false;
        this.t = gu2Var.q;
    }
}
