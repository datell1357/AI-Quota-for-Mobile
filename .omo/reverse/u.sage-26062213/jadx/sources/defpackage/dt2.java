package defpackage;

import android.graphics.Path;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dt2 extends u94 {
    public zf5 b;
    public float c = 1.0f;
    public List d;
    public float e;
    public float f;
    public zf5 g;
    public int h;
    public int i;
    public float j;
    public float k;
    public float l;
    public float m;
    public boolean n;
    public boolean o;
    public boolean p;
    public ht3 q;
    public final sb r;
    public sb s;
    public sb t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final qz1 f75u;

    public dt2() {
        int i = ea4.a;
        this.d = g01.n;
        this.e = 1.0f;
        this.h = 0;
        this.i = 0;
        this.j = 4.0f;
        this.l = 1.0f;
        this.n = true;
        this.o = true;
        sb sbVarA = ub.a();
        this.r = sbVarA;
        this.s = sbVarA;
        this.f75u = dm0.C(v12.o, ic0.B);
    }

    @Override // defpackage.u94
    public final void a(kx0 kx0Var) {
        kx0 kx0Var2;
        ht3 ht3Var;
        if (this.n) {
            k30.H(this.d, this.r);
            e();
        } else if (this.p) {
            e();
        }
        this.n = false;
        this.p = false;
        zf5 zf5Var = this.b;
        if (zf5Var != null) {
            kx0Var2 = kx0Var;
            kx0.S(kx0Var2, this.s, zf5Var, this.c, null, 56);
        } else {
            kx0Var2 = kx0Var;
        }
        zf5 zf5Var2 = this.g;
        if (zf5Var2 != null) {
            ht3 ht3Var2 = this.q;
            if (this.o || ht3Var2 == null) {
                ht3 ht3Var3 = new ht3(this.f, this.j, this.h, this.i, 16);
                this.q = ht3Var3;
                this.o = false;
                ht3Var = ht3Var3;
            } else {
                ht3Var = ht3Var2;
            }
            kx0.S(kx0Var2, this.s, zf5Var2, this.e, ht3Var, 48);
        }
    }

    public final void e() {
        float f = this.k;
        sb sbVar = this.r;
        if (f == 0.0f && this.l == 1.0f) {
            this.s = sbVar;
            return;
        }
        if (nt1.g(this.s, sbVar)) {
            this.s = ub.a();
        } else {
            Path.FillType fillType = this.s.a.getFillType();
            Path.FillType fillType2 = Path.FillType.EVEN_ODD;
            boolean z = fillType == fillType2;
            this.s.a.rewind();
            Path path = this.s.a;
            if (!z) {
                fillType2 = Path.FillType.WINDING;
            }
            path.setFillType(fillType2);
        }
        qz1 qz1Var = this.f75u;
        ((tb) qz1Var.getValue()).a.setPath(sbVar != null ? sbVar.a : null, false);
        float length = ((tb) qz1Var.getValue()).a.getLength();
        float f2 = this.k;
        float f3 = this.m;
        float f4 = ((f2 + f3) % 1.0f) * length;
        float f5 = ((this.l + f3) % 1.0f) * length;
        if (f4 <= f5) {
            ((tb) qz1Var.getValue()).a(f4, f5, this.s);
            return;
        }
        sb sbVarA = this.t;
        if (sbVarA == null) {
            sbVarA = ub.a();
            this.t = sbVarA;
        }
        sbVarA.e();
        ((tb) qz1Var.getValue()).a(f4, length, sbVarA);
        sb.a(this.s, sbVarA);
        sbVarA.e();
        ((tb) qz1Var.getValue()).a(0.0f, f5, sbVarA);
        sb.a(this.s, sbVarA);
    }

    public final String toString() {
        return this.r.toString();
    }
}
