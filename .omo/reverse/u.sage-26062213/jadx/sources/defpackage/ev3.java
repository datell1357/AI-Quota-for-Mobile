package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ev3 implements as0, dh0 {
    public final /* synthetic */ fv3 n;
    public final o20 o;
    public o20 p;
    public wv2 q = wv2.o;
    public final d01 r = d01.n;
    public final /* synthetic */ fv3 s;

    public ev3(fv3 fv3Var, o20 o20Var) {
        this.s = fv3Var;
        this.n = fv3Var;
        this.o = o20Var;
    }

    @Override // defpackage.as0
    public final float G(long j) {
        return this.n.G(j);
    }

    @Override // defpackage.as0
    public final int N(float f) {
        return this.n.N(f);
    }

    @Override // defpackage.as0
    public final long X(long j) {
        return this.n.X(j);
    }

    @Override // defpackage.as0
    public final float Z(long j) {
        return this.n.Z(j);
    }

    public final Object a(wv2 wv2Var, dr drVar) {
        o20 o20Var = new o20(1, dm0.A(drVar));
        o20Var.x();
        this.q = wv2Var;
        this.p = o20Var;
        return o20Var.v();
    }

    @Override // defpackage.as0
    public final float b() {
        return this.n.b();
    }

    @Override // defpackage.dh0
    public final hi0 e() {
        return this.r;
    }

    @Override // defpackage.dh0
    public final void g(Object obj) {
        fv3 fv3Var = this.s;
        synchronized (fv3Var.H) {
            fv3Var.G.k(this);
        }
        this.o.g(obj);
    }

    @Override // defpackage.as0
    public final long i0(float f) {
        return this.n.i0(f);
    }

    @Override // defpackage.as0
    public final float k() {
        return this.n.k();
    }

    @Override // defpackage.as0
    public final float p0(int i) {
        return this.n.p0(i);
    }

    @Override // defpackage.as0
    public final float r0(float f) {
        return f / this.n.b();
    }

    @Override // defpackage.as0
    public final long s(float f) {
        return this.n.s(f);
    }

    @Override // defpackage.as0
    public final long t(long j) {
        return this.n.t(j);
    }

    @Override // defpackage.as0
    public final float v(float f) {
        return this.n.b() * f;
    }
}
