package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zr3 extends ds3 {
    public s1 c;
    public int d;
    public int e;

    public zr3(long j, s1 s1Var) {
        super(j);
        this.c = s1Var;
    }

    @Override // defpackage.ds3
    public final void a(ds3 ds3Var) {
        synchronized (nt1.h) {
            ds3Var.getClass();
            this.c = ((zr3) ds3Var).c;
            this.d = ((zr3) ds3Var).d;
            this.e = ((zr3) ds3Var).e;
        }
    }

    @Override // defpackage.ds3
    public final ds3 b(long j) {
        return new zr3(j, this.c);
    }
}
