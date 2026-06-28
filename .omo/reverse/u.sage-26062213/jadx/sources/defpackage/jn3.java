package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jn3 extends np1 {
    public final transient Object q;

    public jn3(Object obj) {
        obj.getClass();
        this.q = obj;
    }

    @Override // defpackage.np1, defpackage.dp1
    public final lp1 a() {
        hp1 hp1Var = lp1.o;
        Object[] objArr = {this.q};
        w80.m(1, objArr);
        return lp1.i(1, objArr);
    }

    @Override // defpackage.dp1
    public final int c(Object[] objArr) {
        objArr[0] = this.q;
        return 1;
    }

    @Override // defpackage.dp1, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.q.equals(obj);
    }

    @Override // defpackage.dp1
    public final boolean g() {
        return false;
    }

    @Override // defpackage.dp1
    /* JADX INFO: renamed from: h */
    public final y64 iterator() {
        return new fu1(this.q);
    }

    @Override // defpackage.np1, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.q.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return "[" + this.q.toString() + ']';
    }
}
