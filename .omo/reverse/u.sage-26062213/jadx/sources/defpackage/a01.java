package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class a01 implements rp1 {
    public final boolean n;

    public a01(boolean z) {
        this.n = z;
    }

    @Override // defpackage.rp1
    public final boolean b() {
        return this.n;
    }

    @Override // defpackage.rp1
    public final om2 d() {
        return null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Empty{");
        sb.append(this.n ? "Active" : "New");
        sb.append('}');
        return sb.toString();
    }
}
