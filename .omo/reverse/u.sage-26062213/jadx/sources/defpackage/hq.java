package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hq extends md2 implements jx0, co2, eh3 {
    public long B;
    public jl3 C;
    public long D;
    public hy1 E;
    public fl4 F;
    public jl3 G;
    public fl4 H;

    @Override // defpackage.co2
    public final void H() {
        this.D = 9205357640488583168L;
        this.E = null;
        this.F = null;
        this.G = null;
        kt4.Q(this);
    }

    @Override // defpackage.jx0
    public final void K(zy1 zy1Var) {
        fl4 fl4Var;
        zy1 zy1Var2;
        sb sbVar;
        zy1 zy1Var3 = zy1Var;
        x20 x20Var = zy1Var3.n;
        if (this.C != k75.d) {
            int i = 3;
            if (mn3.a(x20Var.d(), this.D) && zy1Var3.getLayoutDirection() == this.E && nt1.g(this.G, this.C)) {
                fl4Var = this.F;
                fl4Var.getClass();
            } else {
                ix.H(this, new h4(i, this, zy1Var3));
                fl4Var = this.H;
                this.H = null;
            }
            this.F = fl4Var;
            this.D = x20Var.d();
            this.E = zy1Var3.getLayoutDirection();
            this.G = this.C;
            fl4Var.getClass();
            if (!t70.c(this.B, t70.f)) {
                long j = this.B;
                boolean z = fl4Var instanceof lr2;
                t51 t51Var = t51.f;
                if (z) {
                    l33 l33Var = ((lr2) fl4Var).x;
                    long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(l33Var.a)) << 32) | (((long) Float.floatToRawIntBits(l33Var.b)) & 4294967295L);
                    long jL = on4.L(l33Var);
                    zy1Var2 = zy1Var;
                    zy1Var2.u(j, jFloatToRawIntBits, jL, t51Var, 3);
                } else {
                    zy1Var2 = zy1Var3;
                    if (fl4Var instanceof mr2) {
                        mr2 mr2Var = (mr2) fl4Var;
                        sbVar = mr2Var.y;
                        if (sbVar == null) {
                            ka3 ka3Var = mr2Var.x;
                            float fIntBitsToFloat = Float.intBitsToFloat((int) (ka3Var.h >> 32));
                            float f = ka3Var.a;
                            long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(ka3Var.b)) & 4294967295L) | (Float.floatToRawIntBits(f) << 32);
                            float fB = ka3Var.b();
                            long jFloatToRawIntBits3 = (((long) Float.floatToRawIntBits(ka3Var.a())) & 4294967295L) | (Float.floatToRawIntBits(fB) << 32);
                            long jFloatToRawIntBits4 = (((long) Float.floatToRawIntBits(fIntBitsToFloat)) & 4294967295L) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32);
                            int i2 = (int) (jFloatToRawIntBits2 >> 32);
                            int i3 = (int) (jFloatToRawIntBits2 & 4294967295L);
                            x20Var.n.c.i(Float.intBitsToFloat(i2), Float.intBitsToFloat(i3), Float.intBitsToFloat((int) (jFloatToRawIntBits3 >> 32)) + Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (jFloatToRawIntBits3 & 4294967295L)) + Float.intBitsToFloat(i3), Float.intBitsToFloat((int) (jFloatToRawIntBits4 >> 32)), Float.intBitsToFloat((int) (jFloatToRawIntBits4 & 4294967295L)), x20.a(x20Var, j, t51Var, 3));
                        }
                    } else {
                        if (!(fl4Var instanceof kr2)) {
                            p61.x();
                            return;
                        }
                        sbVar = ((kr2) fl4Var).x;
                    }
                    zy1Var2.f(sbVar, j, t51Var);
                }
            }
            zy1Var2.a();
        }
        if (!t70.c(this.B, t70.f)) {
            kx0.C(zy1Var, this.B, 0L, 126);
            zy1Var3 = zy1Var;
        }
        zy1Var2 = zy1Var3;
        zy1Var2.a();
    }

    @Override // defpackage.eh3
    public final void a0(ph3 ph3Var) {
        nh3.d(ph3Var, this.C);
    }

    @Override // defpackage.eh3
    public final boolean g() {
        return false;
    }
}
