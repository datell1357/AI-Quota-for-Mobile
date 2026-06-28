package defpackage;

import com.google.android.gms.auth.blockstore.BlockstoreClient;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o83 implements as0 {
    public as0 A;
    public hy1 B;
    public int C;
    public fl4 D;
    public int n;
    public float o = 1.0f;
    public float p = 1.0f;
    public float q = 1.0f;
    public float r;
    public long s;
    public long t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public float f239u;
    public long v;
    public jl3 w;
    public boolean x;
    public long y;
    public by1 z;

    public o83() {
        long j = di1.a;
        this.s = j;
        this.t = j;
        this.f239u = 8.0f;
        this.v = f14.b;
        this.w = k75.d;
        this.y = 9205357640488583168L;
        this.z = by1.a;
        this.A = se0.a();
        this.B = hy1.n;
        this.C = 3;
    }

    public final void a() {
        e(1.0f);
        g(1.0f);
        c(1.0f);
        if (this.r != 0.0f) {
            this.n |= 32;
            this.r = 0.0f;
        }
        long j = di1.a;
        if (!t70.c(this.s, j)) {
            this.n |= 64;
            this.s = j;
        }
        if (!t70.c(this.t, j)) {
            this.n |= 128;
            this.t = j;
        }
        if (this.f239u != 8.0f) {
            this.n |= 2048;
            this.f239u = 8.0f;
        }
        h(f14.b);
        fk1 fk1Var = k75.d;
        if (!nt1.g(this.w, fk1Var)) {
            this.n |= 8192;
            this.w = fk1Var;
        }
        if (this.x) {
            this.n |= 16384;
            this.x = false;
        }
        if (this.C != 3) {
            this.n |= 524288;
            this.C = 3;
        }
        by1 by1Var = by1.a;
        if (!nt1.g(this.z, by1Var)) {
            this.n |= 1048576;
            this.z = by1Var;
        }
        this.y = 9205357640488583168L;
        this.D = null;
        this.n = 0;
    }

    @Override // defpackage.as0
    public final float b() {
        return this.A.b();
    }

    public final void c(float f) {
        if (this.q == f) {
            return;
        }
        this.n |= 4;
        this.q = f;
    }

    public final void e(float f) {
        if (this.o == f) {
            return;
        }
        this.n |= 1;
        this.o = f;
    }

    public final void g(float f) {
        if (this.p == f) {
            return;
        }
        this.n |= 2;
        this.p = f;
    }

    public final void h(long j) {
        if (f14.a(this.v, j)) {
            return;
        }
        this.n |= BlockstoreClient.MAX_SIZE;
        this.v = j;
    }

    @Override // defpackage.as0
    public final float k() {
        return this.A.k();
    }
}
