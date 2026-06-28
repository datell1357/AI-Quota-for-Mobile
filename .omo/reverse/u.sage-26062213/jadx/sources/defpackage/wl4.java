package defpackage;

import java.util.AbstractSet;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wl4 implements Iterator {
    public final /* synthetic */ int n;
    public int o = 0;
    public final /* synthetic */ AbstractSet p;

    public /* synthetic */ wl4(AbstractSet abstractSet, int i) {
        this.n = i;
        this.p = abstractSet;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.n;
        AbstractSet abstractSet = this.p;
        switch (i) {
            case 0:
                xl4 xl4Var = (xl4) abstractSet;
                if (this.o < xl4Var.c() - xl4Var.a()) {
                }
                break;
            default:
                if (this.o < ((ih5) ((yh) abstractSet).o).e) {
                }
                break;
        }
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.n;
        AbstractSet abstractSet = this.p;
        switch (i) {
            case 0:
                int i2 = this.o;
                xl4 xl4Var = (xl4) abstractSet;
                if (i2 >= xl4Var.c() - xl4Var.a()) {
                    p61.v();
                    return null;
                }
                yl4 yl4Var = xl4Var.o;
                Object obj = yl4Var.n[xl4Var.a() + i2];
                this.o = i2 + 1;
                return obj;
            default:
                int i3 = this.o;
                this.o = i3 + 1;
                ih5 ih5Var = (ih5) ((yh) abstractSet).o;
                return ih5Var.d(ih5Var.d[i3] & 31);
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.n) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }
}
