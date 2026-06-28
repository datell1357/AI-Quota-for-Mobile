package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qv4 extends sv4 {
    public final transient int p;
    public final transient int q;
    public final /* synthetic */ sv4 r;

    public qv4(sv4 sv4Var, int i, int i2) {
        this.r = sv4Var;
        this.p = i;
        this.q = i2;
    }

    @Override // defpackage.bv4
    public final int c() {
        return this.r.d() + this.p + this.q;
    }

    @Override // defpackage.bv4
    public final int d() {
        return this.r.d() + this.p;
    }

    @Override // defpackage.bv4
    public final Object[] e() {
        return this.r.e();
    }

    @Override // defpackage.sv4, java.util.List
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final sv4 subList(int i, int i2) {
        hu4.d(i, i2, this.q);
        int i3 = this.p;
        return this.r.subList(i + i3, i2 + i3);
    }

    @Override // java.util.List
    public final Object get(int i) {
        hu4.b(i, this.q);
        return this.r.get(i + this.p);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.q;
    }
}
