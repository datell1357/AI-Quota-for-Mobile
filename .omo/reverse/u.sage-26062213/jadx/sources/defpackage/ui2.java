package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ui2 implements Iterator, fx1 {
    public int n = -1;
    public boolean o;
    public final /* synthetic */ vi2 p;

    public ui2(vi2 vi2Var) {
        this.p = vi2Var;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.n + 1 < ((mq3) this.p.f).f();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            p61.v();
            return null;
        }
        this.o = true;
        mq3 mq3Var = (mq3) this.p.f;
        int i = this.n + 1;
        this.n = i;
        return (qi2) mq3Var.g(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.o) {
            k21.n("You must call next() before you can remove an element");
            return;
        }
        mq3 mq3Var = (mq3) this.p.f;
        ((qi2) mq3Var.g(this.n)).p = null;
        int i = this.n;
        Object[] objArr = mq3Var.p;
        Object obj = objArr[i];
        Object obj2 = n44.d;
        if (obj != obj2) {
            objArr[i] = obj2;
            mq3Var.n = true;
        }
        this.n = i - 1;
        this.o = false;
    }
}
