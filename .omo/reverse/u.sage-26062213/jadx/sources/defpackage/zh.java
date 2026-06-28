package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zh implements Iterator, fx1 {
    public int n;
    public int o;
    public boolean p;
    public final /* synthetic */ int q;
    public final /* synthetic */ Object r;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public zh(di diVar, int i) {
        this(diVar.p);
        this.q = i;
        switch (i) {
            case 1:
                this.r = diVar;
                this(diVar.p);
                break;
            default:
                this.r = diVar;
                break;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.o < this.n;
    }

    @Override // java.util.Iterator
    public final Object next() {
        Object objF;
        if (!hasNext()) {
            p61.v();
            return null;
        }
        int i = this.o;
        int i2 = this.q;
        Object obj = this.r;
        switch (i2) {
            case 0:
                objF = ((di) obj).f(i);
                break;
            case 1:
                objF = ((di) obj).i(i);
                break;
            default:
                objF = ((fi) obj).o[i];
                break;
        }
        this.o++;
        this.p = true;
        return objF;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.p) {
            k21.n("Call next() before removing an element.");
            return;
        }
        int i = this.o - 1;
        this.o = i;
        int i2 = this.q;
        Object obj = this.r;
        switch (i2) {
            case 0:
                ((di) obj).g(i);
                break;
            case 1:
                ((di) obj).g(i);
                break;
            default:
                ((fi) obj).a(i);
                break;
        }
        this.n--;
        this.p = false;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public zh(fi fiVar) {
        this(fiVar.p);
        this.q = 2;
        this.r = fiVar;
    }

    public zh(int i) {
        this.n = i;
    }
}
