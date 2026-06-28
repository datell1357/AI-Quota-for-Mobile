package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class dv2 {
    public int n;
    public int o;
    public long p = 0;
    public long q = ev2.a;
    public long r = 0;

    public abstract int V(y7 y7Var);

    public int Y() {
        return (int) (this.p & 4294967295L);
    }

    public int a0() {
        return (int) (this.p >> 32);
    }

    public final void c0() {
        this.n = ix.k((int) (this.p >> 32), mf0.j(this.q), mf0.h(this.q));
        int iK = ix.k((int) (this.p & 4294967295L), mf0.i(this.q), mf0.g(this.q));
        this.o = iK;
        int i = this.n;
        long j = this.p;
        this.r = (((long) ((i - ((int) (j >> 32))) / 2)) << 32) | (4294967295L & ((long) ((iK - ((int) (j & 4294967295L))) / 2)));
    }

    public abstract void d0(long j, float f, pe1 pe1Var);

    public final void g0(long j) {
        if (rs1.a(this.p, j)) {
            return;
        }
        this.p = j;
        c0();
    }

    public final void h0(long j) {
        if (mf0.b(this.q, j)) {
            return;
        }
        this.q = j;
        c0();
    }

    public Object i() {
        return null;
    }
}
