package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tt1 implements gb2, jt1 {
    public final /* synthetic */ jt1 n;
    public final hy1 o;

    public tt1(jt1 jt1Var, hy1 hy1Var) {
        this.n = jt1Var;
        this.o = hy1Var;
    }

    @Override // defpackage.as0
    public final float G(long j) {
        return this.n.G(j);
    }

    @Override // defpackage.gb2
    public final eb2 L(int i, int i2, Map map, pe1 pe1Var, pe1 pe1Var2) {
        if (i < 0) {
            i = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        if ((i & (-16777216)) != 0 || ((-16777216) & i2) != 0) {
            ar1.b("Size(" + i + " x " + i2 + ") is out of range. Each dimension must be between 0 and 16777215.");
        }
        return new st1(i, i2, map, pe1Var);
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

    @Override // defpackage.as0
    public final float b() {
        return this.n.b();
    }

    @Override // defpackage.jt1
    public final hy1 getLayoutDirection() {
        return this.o;
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

    @Override // defpackage.jt1
    public final boolean q() {
        return this.n.q();
    }

    @Override // defpackage.as0
    public final float r0(float f) {
        return this.n.r0(f);
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
        return this.n.v(f);
    }
}
