package defpackage;

import java.util.AbstractMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bo3 implements Iterator {
    public final /* synthetic */ int n;
    public int o;
    public boolean p;
    public Iterator q;
    public final /* synthetic */ AbstractMap r;

    public /* synthetic */ bo3(ep4 ep4Var) {
        this.n = 1;
        Objects.requireNonNull(ep4Var);
        this.r = ep4Var;
        this.o = -1;
    }

    public Iterator b() {
        if (this.q == null) {
            this.q = ((zn3) this.r).o.entrySet().iterator();
        }
        return this.q;
    }

    public Iterator c() {
        if (this.q == null) {
            this.q = ((ep4) this.r).p.entrySet().iterator();
        }
        return this.q;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.n;
        AbstractMap abstractMap = this.r;
        switch (i) {
            case 0:
                zn3 zn3Var = (zn3) abstractMap;
                if (this.o + 1 >= zn3Var.n.size()) {
                    if (zn3Var.o.isEmpty() || !b().hasNext()) {
                    }
                }
                break;
            default:
                ep4 ep4Var = (ep4) abstractMap;
                if (this.o + 1 >= ep4Var.o) {
                    if (ep4Var.p.isEmpty() || !c().hasNext()) {
                    }
                }
                break;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.n;
        AbstractMap abstractMap = this.r;
        switch (i) {
            case 0:
                this.p = true;
                int i2 = this.o + 1;
                this.o = i2;
                zn3 zn3Var = (zn3) abstractMap;
                return i2 < zn3Var.n.size() ? (Map.Entry) zn3Var.n.get(this.o) : (Map.Entry) b().next();
            default:
                this.p = true;
                int i3 = this.o + 1;
                this.o = i3;
                ep4 ep4Var = (ep4) abstractMap;
                return i3 < ep4Var.o ? (fp4) ep4Var.n[i3] : (Map.Entry) c().next();
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i = this.n;
        AbstractMap abstractMap = this.r;
        switch (i) {
            case 0:
                zn3 zn3Var = (zn3) abstractMap;
                if (!this.p) {
                    k21.n("remove() was called before next()");
                } else {
                    this.p = false;
                    int i2 = zn3.s;
                    zn3Var.b();
                    if (this.o >= zn3Var.n.size()) {
                        b().remove();
                    } else {
                        int i3 = this.o;
                        this.o = i3 - 1;
                        zn3Var.i(i3);
                    }
                }
                break;
            default:
                if (!this.p) {
                    k21.n("remove() was called before next()");
                } else {
                    this.p = false;
                    ep4 ep4Var = (ep4) abstractMap;
                    ep4Var.g();
                    int i4 = this.o;
                    if (i4 >= ep4Var.o) {
                        c().remove();
                    } else {
                        this.o = i4 - 1;
                        ep4Var.e(i4);
                    }
                }
                break;
        }
    }

    public bo3(zn3 zn3Var) {
        this.n = 0;
        this.r = zn3Var;
        this.o = -1;
    }
}
