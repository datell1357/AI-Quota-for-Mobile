package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class x51 implements Iterator, fx1 {
    public final Iterator o;
    public Object q;
    public final /* synthetic */ ai3 r;
    public final /* synthetic */ int n = 1;
    public int p = -1;

    public x51(yr0 yr0Var) {
        this.r = yr0Var;
        this.o = new g14((hw3) yr0Var.b);
    }

    public void b() {
        Object next;
        yr0 yr0Var = (yr0) this.r;
        do {
            Iterator it = this.o;
            if (!it.hasNext()) {
                this.p = 0;
                return;
            }
            next = it.next();
        } while (((Boolean) ((jd3) yr0Var.c).k(next)).booleanValue());
        this.q = next;
        this.p = 1;
    }

    public void d() {
        Iterator it = this.o;
        if (it.hasNext()) {
            Object next = it.next();
            if (((Boolean) ((hw3) this.r).c.k(next)).booleanValue()) {
                this.p = 1;
                this.q = next;
                return;
            }
        }
        this.p = 0;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.n) {
            case 0:
                if (this.p == -1) {
                    b();
                }
                if (this.p == 1) {
                }
                break;
            default:
                if (this.p == -1) {
                    d();
                }
                if (this.p == 1) {
                }
                break;
        }
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.n) {
            case 0:
                if (this.p == -1) {
                    b();
                }
                if (this.p == 0) {
                    p61.v();
                } else {
                    Object obj = this.q;
                    this.q = null;
                    this.p = -1;
                }
                break;
            default:
                if (this.p == -1) {
                    d();
                }
                if (this.p == 0) {
                    p61.v();
                } else {
                    Object obj2 = this.q;
                    this.q = null;
                    this.p = -1;
                }
                break;
        }
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.n) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public x51(hw3 hw3Var) {
        this.r = hw3Var;
        this.o = hw3Var.b.iterator();
    }
}
