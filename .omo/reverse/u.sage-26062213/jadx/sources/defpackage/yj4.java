package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yj4 extends zj4 {
    public final transient int p;
    public final transient int q;
    public final /* synthetic */ zj4 r;

    public yj4(zj4 zj4Var, int i, int i2) {
        this.r = zj4Var;
        this.p = i;
        this.q = i2;
    }

    @Override // defpackage.wj4
    public final Object[] a() {
        return this.r.a();
    }

    @Override // defpackage.wj4
    public final int c() {
        return this.r.c() + this.p;
    }

    @Override // defpackage.wj4
    public final int d() {
        return this.r.c() + this.p + this.q;
    }

    @Override // defpackage.wj4
    public final boolean e() {
        return true;
    }

    @Override // defpackage.zj4, java.util.List
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final zj4 subList(int i, int i2) {
        uj4.b(i, i2, this.q);
        int i3 = this.p;
        return this.r.subList(i + i3, i2 + i3);
    }

    @Override // java.util.List
    public final Object get(int i) {
        uj4.a(i, this.q);
        return this.r.get(i + this.p);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.q;
    }
}
