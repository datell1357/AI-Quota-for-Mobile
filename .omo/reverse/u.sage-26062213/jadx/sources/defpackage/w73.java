package defpackage;

import java.io.Closeable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class w73 implements Closeable {
    public final mu0 A;
    public final a14 B;
    public final k63 n;
    public final d03 o;
    public final String p;
    public final int q;
    public final aj1 r;
    public final kj1 s;
    public final y73 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final jp3 f393u;
    public final w73 v;
    public final w73 w;
    public final w73 x;
    public final long y;
    public final long z;

    public w73(k63 k63Var, d03 d03Var, String str, int i, aj1 aj1Var, kj1 kj1Var, y73 y73Var, jp3 jp3Var, w73 w73Var, w73 w73Var2, w73 w73Var3, long j, long j2, mu0 mu0Var, a14 a14Var) {
        k63Var.getClass();
        d03Var.getClass();
        str.getClass();
        y73Var.getClass();
        a14Var.getClass();
        this.n = k63Var;
        this.o = d03Var;
        this.p = str;
        this.q = i;
        this.r = aj1Var;
        this.s = kj1Var;
        this.t = y73Var;
        this.f393u = jp3Var;
        this.v = w73Var;
        this.w = w73Var2;
        this.x = w73Var3;
        this.y = j;
        this.z = j2;
        this.A = mu0Var;
        this.B = a14Var;
    }

    public final v73 b() {
        v73 v73Var = new v73();
        v73Var.c = -1;
        v73Var.g = y73.n;
        v73Var.o = a14.e;
        v73Var.a = this.n;
        v73Var.b = this.o;
        v73Var.c = this.q;
        v73Var.d = this.p;
        v73Var.e = this.r;
        v73Var.f = this.s.e();
        v73Var.g = this.t;
        v73Var.h = this.f393u;
        v73Var.i = this.v;
        v73Var.j = this.w;
        v73Var.k = this.x;
        v73Var.l = this.y;
        v73Var.m = this.z;
        v73Var.n = this.A;
        v73Var.o = this.B;
        return v73Var;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.t.close();
    }

    public final String toString() {
        return "Response{protocol=" + this.o + ", code=" + this.q + ", message=" + this.p + ", url=" + this.n.a + '}';
    }
}
