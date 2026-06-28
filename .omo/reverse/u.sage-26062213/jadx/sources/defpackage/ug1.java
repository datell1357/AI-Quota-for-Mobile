package defpackage;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ug1 implements Iterator, fx1 {
    public final /* synthetic */ int n;
    public int o;
    public Object p;
    public final Object q;

    public ug1(ng2 ng2Var) {
        this.n = 2;
        this.q = ng2Var;
        this.o = -1;
        this.p = se0.y(new mg2(ng2Var, this, null));
    }

    public void b() {
        Object objK;
        int i = this.o;
        yr0 yr0Var = (yr0) this.q;
        if (i == -2) {
            objK = ((ne1) yr0Var.b).a();
        } else {
            pe1 pe1Var = (pe1) yr0Var.c;
            Object obj = this.p;
            obj.getClass();
            objK = pe1Var.k(obj);
        }
        this.p = objK;
        this.o = objK == null ? 0 : 1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.n) {
            case 0:
                if (this.o < 0) {
                    b();
                }
                return this.o == 1;
            case 1:
                return ((bi3) this.p).hasNext();
            case 2:
                return ((bi3) this.p).hasNext();
            default:
                return this.o < ((Map) this.q).size();
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        Object obj = null;
        switch (this.n) {
            case 0:
                if (this.o < 0) {
                    b();
                }
                if (this.o == 0) {
                    p61.v();
                    return null;
                }
                Object obj2 = this.p;
                obj2.getClass();
                this.o = -1;
                return obj2;
            case 1:
                return ((bi3) this.p).next();
            case 2:
                return ((bi3) this.p).next();
            default:
                if (hasNext()) {
                    obj = this.p;
                    this.o++;
                    Object obj3 = ((Map) this.q).get(obj);
                    if (obj3 == null) {
                        throw new ConcurrentModificationException("Hash code of an element (" + obj + ") has changed after it was added to the persistent set.");
                    }
                    this.p = ((y32) obj3).b;
                } else {
                    p61.v();
                }
                return obj;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i = this.n;
        Object obj = this.q;
        switch (i) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 1:
                int i2 = this.o;
                if (i2 != -1) {
                    ((gg2) obj).o.i(i2);
                    this.o = -1;
                    return;
                }
                return;
            case 2:
                int i3 = this.o;
                if (i3 != -1) {
                    ((ng2) obj).o.m(i3);
                    this.o = -1;
                    return;
                }
                return;
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public ug1(yr0 yr0Var) {
        this.n = 0;
        this.q = yr0Var;
        this.o = -2;
    }

    public ug1(Object obj, Map map) {
        this.n = 3;
        this.p = obj;
        this.q = map;
    }

    public ug1(gg2 gg2Var) {
        this.n = 1;
        this.q = gg2Var;
        this.o = -1;
        this.p = se0.y(new fg2(gg2Var, this, null));
    }
}
