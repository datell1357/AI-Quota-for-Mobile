package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ip2 extends md2 implements jb2 {
    public pe1 B;
    public long C;

    @Override // defpackage.jb2
    public final void c(long j) {
        if (rs1.a(this.C, j)) {
            return;
        }
        this.B.k(new rs1(j));
        this.C = j;
    }

    @Override // defpackage.md2
    public final boolean v0() {
        return true;
    }
}
