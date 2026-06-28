package defpackage;

import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fz1 implements qt3 {
    public hy1 n = hy1.o;
    public float o;
    public float p;
    public final /* synthetic */ lz1 q;

    public fz1(lz1 lz1Var) {
        this.q = lz1Var;
    }

    @Override // defpackage.gb2
    public final eb2 L(int i, int i2, Map map, pe1 pe1Var, pe1 pe1Var2) {
        if ((i & (-16777216)) != 0 || ((-16777216) & i2) != 0) {
            ar1.b("Size(" + i + " x " + i2 + ") is out of range. Each dimension must be between 0 and 16777215.");
        }
        return new ez1(i, i2, map, pe1Var, this, this.q, pe1Var2);
    }

    @Override // defpackage.as0
    public final float b() {
        return this.o;
    }

    @Override // defpackage.jt1
    public final hy1 getLayoutDirection() {
        return this.n;
    }

    @Override // defpackage.as0
    public final float k() {
        return this.p;
    }

    @Override // defpackage.qt3
    public final List o(df1 df1Var, Object obj) {
        lz1 lz1Var = this.q;
        lz1Var.g();
        xy1 xy1Var = lz1Var.n;
        ty1 ty1Var = xy1Var.T.d;
        ty1 ty1Var2 = ty1.p;
        ty1 ty1Var3 = ty1.n;
        if (ty1Var != ty1Var3 && ty1Var != ty1Var2 && ty1Var != ty1.o && ty1Var != ty1.q) {
            ar1.b("subcompose can only be used inside the measure or layout blocks");
        }
        kg2 kg2Var = lz1Var.t;
        Object objG = kg2Var.g(obj);
        if (objG == null) {
            objG = (xy1) lz1Var.w.k(obj);
            if (objG != null) {
                if (lz1Var.B <= 0) {
                    ar1.b("Check failed.");
                }
                lz1Var.B--;
            } else {
                objG = lz1Var.n(obj);
                if (objG == null) {
                    int i = lz1Var.q;
                    xy1 xy1Var2 = new xy1(2);
                    xy1Var.D = true;
                    xy1Var.B(i, xy1Var2);
                    xy1Var.D = false;
                    objG = xy1Var2;
                }
            }
            kg2Var.m(obj, objG);
        }
        xy1 xy1Var3 = (xy1) objG;
        if (o70.j0(lz1Var.q, xy1Var.o()) != xy1Var3) {
            int iJ = ((rg2) xy1Var.o()).n.j(xy1Var3);
            if (iJ < lz1Var.q) {
                ar1.a("Key \"" + obj + "\" was already used. If you are using LazyColumn/Row please make sure you provide a unique key for each item.");
            }
            int i2 = lz1Var.q;
            if (i2 != iJ) {
                lz1Var.j(iJ, i2);
            }
        }
        lz1Var.q++;
        lz1Var.m(xy1Var3, obj, false, df1Var);
        return (ty1Var == ty1Var3 || ty1Var == ty1Var2) ? xy1Var3.m() : xy1Var3.l();
    }

    @Override // defpackage.jt1
    public final boolean q() {
        ty1 ty1Var = this.q.n.T.d;
        return ty1Var == ty1.q || ty1Var == ty1.o;
    }
}
