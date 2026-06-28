package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zo3 extends ds3 {
    public long c;

    public zo3(long j, long j2) {
        super(j);
        this.c = j2;
    }

    @Override // defpackage.ds3
    public final void a(ds3 ds3Var) {
        ds3Var.getClass();
        this.c = ((zo3) ds3Var).c;
    }

    @Override // defpackage.ds3
    public final ds3 b(long j) {
        return new zo3(j, this.c);
    }
}
