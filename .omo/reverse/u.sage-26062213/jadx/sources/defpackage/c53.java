package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class c53 extends np1 {
    public final transient e53 q;
    public final transient d53 r;

    public c53(e53 e53Var, d53 d53Var) {
        this.q = e53Var;
        this.r = d53Var;
    }

    @Override // defpackage.np1, defpackage.dp1
    public final lp1 a() {
        return this.r;
    }

    @Override // defpackage.dp1
    public final int c(Object[] objArr) {
        return this.r.c(objArr);
    }

    @Override // defpackage.dp1, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.q.get(obj) != null;
    }

    @Override // defpackage.dp1
    public final boolean g() {
        return true;
    }

    @Override // defpackage.dp1
    /* JADX INFO: renamed from: h */
    public final y64 iterator() {
        return this.r.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.q.s;
    }
}
