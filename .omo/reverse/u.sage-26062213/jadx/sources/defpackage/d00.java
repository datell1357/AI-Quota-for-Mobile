package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class d00 implements Iterator {
    public final /* synthetic */ int n = 3;
    public int o = 0;
    public final int p;
    public final /* synthetic */ Object q;

    public d00(zm4 zm4Var) {
        this.q = zm4Var;
        this.p = zm4Var.c();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.n) {
            case 0:
                if (this.o < this.p) {
                }
                break;
            case 1:
                if (this.o < this.p) {
                }
                break;
            case 2:
                if (this.o < this.p) {
                }
                break;
            default:
                if (this.o < this.p) {
                }
                break;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.n;
        Object obj = this.q;
        int i2 = this.p;
        switch (i) {
            case 0:
                int i3 = this.o;
                if (i3 >= i2) {
                    p61.v();
                } else {
                    this.o = i3 + 1;
                }
                break;
            case 1:
                int i4 = this.o;
                if (i4 >= i2) {
                    p61.v();
                } else {
                    this.o = i4 + 1;
                }
                break;
            case 2:
                int i5 = this.o;
                if (i5 >= i2) {
                    p61.v();
                } else {
                    this.o = i5 + 1;
                }
                break;
            default:
                int i6 = this.o;
                if (i6 >= i2) {
                    p61.v();
                } else {
                    this.o = i6 + 1;
                }
                break;
        }
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.n) {
            case 0:
                throw new UnsupportedOperationException();
            case 1:
                throw new UnsupportedOperationException();
            case 2:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    public d00(iy4 iy4Var) {
        this.q = iy4Var;
        this.p = iy4Var.d();
    }

    public d00(b25 b25Var) {
        this.q = b25Var;
        this.p = b25Var.e();
    }

    public d00(f00 f00Var) {
        this.q = f00Var;
        this.p = f00Var.size();
    }
}
