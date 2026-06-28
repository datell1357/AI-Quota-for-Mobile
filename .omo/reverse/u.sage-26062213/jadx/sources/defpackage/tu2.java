package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tu2 extends c2 implements Set, Collection, fx1 {
    public static final tu2 q;
    public final Object n;
    public final Object o;
    public final lu2 p;

    static {
        w13 w13Var = w13.A;
        q = new tu2(w13Var, w13Var, lu2.p);
    }

    public tu2(Object obj, Object obj2, lu2 lu2Var) {
        this.n = obj;
        this.o = obj2;
        this.p = lu2Var;
    }

    @Override // defpackage.w
    public final int a() {
        return this.p.o;
    }

    @Override // defpackage.w, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return this.p.containsKey(obj);
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new ug1(this.n, this.p);
    }
}
