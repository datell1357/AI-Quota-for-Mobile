package defpackage;

import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cz1 implements qt3, gb2 {
    public final /* synthetic */ fz1 n;
    public final /* synthetic */ lz1 o;

    public cz1(lz1 lz1Var) {
        this.o = lz1Var;
        this.n = lz1Var.f194u;
    }

    @Override // defpackage.as0
    public final float G(long j) {
        return this.n.G(j);
    }

    @Override // defpackage.gb2
    public final eb2 L(int i, int i2, Map map, pe1 pe1Var, pe1 pe1Var2) {
        return this.n.L(i, i2, map, pe1Var, pe1Var2);
    }

    @Override // defpackage.as0
    public final int N(float f) {
        return this.n.N(f);
    }

    @Override // defpackage.gb2
    public final eb2 W(int i, int i2, c8 c8Var, z zVar, Map map, e9 e9Var) {
        return this.n.W(i, i2, c8Var, zVar, map, e9Var);
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
        return this.n.o;
    }

    @Override // defpackage.gb2
    public final eb2 e0(int i, int i2, Map map, pe1 pe1Var) {
        return this.n.L(i, i2, map, null, pe1Var);
    }

    @Override // defpackage.jt1
    public final hy1 getLayoutDirection() {
        return this.n.n;
    }

    @Override // defpackage.as0
    public final long i0(float f) {
        return this.n.i0(f);
    }

    @Override // defpackage.as0
    public final float k() {
        return this.n.p;
    }

    @Override // defpackage.qt3
    public final List o(df1 df1Var, Object obj) {
        lz1 lz1Var = this.o;
        xy1 xy1Var = lz1Var.n;
        kg2 kg2Var = lz1Var.t;
        xy1 xy1Var2 = (xy1) kg2Var.g(obj);
        if (xy1Var2 != null && ((rg2) xy1Var.o()).n.j(xy1Var2) < lz1Var.q) {
            return xy1Var2.m();
        }
        kg2 kg2Var2 = lz1Var.y;
        kg2 kg2Var3 = lz1Var.w;
        ug2 ug2Var = lz1Var.z;
        if (ug2Var.p < lz1Var.r) {
            ar1.a("Error: currentApproachIndex cannot be greater than the size of theapproachComposedSlotIds list.");
        }
        xy1 xy1Var3 = (xy1) kg2Var.g(obj);
        int i = ug2Var.p;
        int i2 = lz1Var.r;
        if (i == i2) {
            ug2Var.c(obj);
        } else {
            Object[] objArr = ug2Var.n;
            Object obj2 = objArr[i2];
            objArr[i2] = obj;
        }
        lz1Var.r++;
        boolean zB = kg2Var3.b(obj);
        if (zB || xy1Var3 != null) {
            if (!zB && xy1Var3 != null) {
                lz1Var.j(((rg2) xy1Var.o()).n.j(xy1Var3), ((rg2) xy1Var.o()).n.p);
                lz1Var.B++;
                kg2Var.k(obj);
                kg2Var3.m(obj, xy1Var3);
                kg2Var2.m(obj, lz1Var.d(obj));
                if (xy1Var.H()) {
                    lz1Var.g();
                }
            }
            xy1 xy1Var4 = (xy1) kg2Var3.g(obj);
            dz1 dz1Var = xy1Var4 != null ? (dz1) lz1Var.s.g(xy1Var4) : null;
            if (dz1Var != null && dz1Var.d) {
                lz1Var.m(xy1Var4, obj, false, df1Var);
            }
            if ((dz1Var != null ? dz1Var.f : null) != null) {
                lz1Var.b(dz1Var, true);
            }
        } else {
            lz1Var.k(obj, df1Var, false);
            kg2Var2.m(obj, lz1Var.d(obj));
        }
        xy1 xy1Var5 = (xy1) kg2Var3.g(obj);
        if (xy1Var5 == null) {
            return g01.n;
        }
        List listJ0 = xy1Var5.T.p.j0();
        rg2 rg2Var = (rg2) listJ0;
        int i3 = rg2Var.n.p;
        for (int i4 = 0; i4 < i3; i4++) {
            ((cb2) rg2Var.get(i4)).s.b = true;
        }
        return listJ0;
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
