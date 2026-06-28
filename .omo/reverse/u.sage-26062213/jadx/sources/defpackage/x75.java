package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class x75 implements Runnable {
    public final /* synthetic */ w75 n;
    public final /* synthetic */ w75 o;
    public final /* synthetic */ long p;
    public final /* synthetic */ boolean q;
    public final /* synthetic */ f85 r;

    public x75(f85 f85Var, w75 w75Var, w75 w75Var2, long j, boolean z) {
        this.n = w75Var;
        this.o = w75Var2;
        this.p = j;
        this.q = z;
        this.r = f85Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.r.B(this.n, this.o, this.p, this.q, null);
    }
}
