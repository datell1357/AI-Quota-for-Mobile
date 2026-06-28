package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o1 extends ik3 {
    public final /* synthetic */ int n;
    public final /* synthetic */ up3 o;

    public /* synthetic */ o1(up3 up3Var, int i) {
        this.n = i;
        this.o = up3Var;
    }

    public final hf2 a() {
        int i = this.n;
        up3 up3Var = this.o;
        switch (i) {
            case 0:
                return (g2) up3Var;
            default:
                return (f2) up3Var;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        a().clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (!(obj instanceof jf2)) {
            return false;
        }
        jf2 jf2Var = (jf2) obj;
        return jf2Var.a() > 0 && a().N(jf2Var.b()) == jf2Var.a();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        int i = this.n;
        up3 up3Var = this.o;
        switch (i) {
            case 0:
                return new f24((h24) ((g2) up3Var), 0);
            default:
                return new f24((h24) ((f2) up3Var).C, 1);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        if (!(obj instanceof jf2)) {
            return false;
        }
        jf2 jf2Var = (jf2) obj;
        Object objB = jf2Var.b();
        int iA = jf2Var.a();
        if (iA != 0) {
            return a().A(iA, objB);
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        int i = this.n;
        up3 up3Var = this.o;
        switch (i) {
            case 0:
                return qn0.G(((h24) ((g2) up3Var)).e(2));
            default:
                return ((o1) ((f2) up3Var).C.entrySet()).size();
        }
    }
}
