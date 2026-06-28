package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class no4 extends dq4 {
    public final transient dq4 p;

    public no4(dq4 dq4Var) {
        this.p = dq4Var;
    }

    @Override // defpackage.dq4, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return this.p.contains(obj);
    }

    @Override // defpackage.pm4
    public final boolean e() {
        return this.p.e();
    }

    @Override // defpackage.dq4
    public final dq4 g() {
        return this.p;
    }

    @Override // java.util.List
    public final Object get(int i) {
        dq4 dq4Var = this.p;
        rp4.a(i, dq4Var.size());
        return dq4Var.get((dq4Var.size() - 1) - i);
    }

    @Override // defpackage.dq4, java.util.List
    /* JADX INFO: renamed from: h */
    public final dq4 subList(int i, int i2) {
        dq4 dq4Var = this.p;
        rp4.c(i, i2, dq4Var.size());
        return dq4Var.subList(dq4Var.size() - i2, dq4Var.size() - i).g();
    }

    @Override // defpackage.dq4, java.util.List
    public final int indexOf(Object obj) {
        int iLastIndexOf = this.p.lastIndexOf(obj);
        if (iLastIndexOf >= 0) {
            return (r1.size() - 1) - iLastIndexOf;
        }
        return -1;
    }

    @Override // defpackage.dq4, java.util.List
    public final int lastIndexOf(Object obj) {
        int iIndexOf = this.p.indexOf(obj);
        if (iIndexOf >= 0) {
            return (r1.size() - 1) - iIndexOf;
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.p.size();
    }
}
