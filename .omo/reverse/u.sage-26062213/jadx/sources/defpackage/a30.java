package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class a30 {
    public final float a;
    public final float b;

    public a30(float f, float f2) {
        this.a = f;
        this.b = f2;
    }

    public final tr3 a(boolean z, vf2 vf2Var, ag1 ag1Var, int i) {
        pd pdVar;
        tr3 tr3Var;
        ag1Var.W(-1763481333);
        float f = 0.0f;
        Object obj = rb0.a;
        if (vf2Var == null) {
            ag1Var.W(167726411);
            Object objK = ag1Var.K();
            Object obj2 = objK;
            if (objK == obj) {
                Object objA = ca.A(new cw0(0.0f));
                ag1Var.g0(objA);
                obj2 = objA;
            }
            tr3Var = (pg2) obj2;
            ag1Var.p(false);
        } else {
            ag1Var.W(167799447);
            ag1Var.p(false);
            Object objK2 = ag1Var.K();
            Object obj3 = objK2;
            if (objK2 == obj) {
                Object gp3Var = new gp3();
                ag1Var.g0(gp3Var);
                obj3 = gp3Var;
            }
            gp3 gp3Var2 = (gp3) obj3;
            int i2 = 1;
            boolean z2 = (((i & 112) ^ 48) > 32 && ag1Var.f(vf2Var)) || (i & 48) == 32;
            Object objK3 = ag1Var.K();
            dh0 dh0Var = null;
            Object obj4 = objK3;
            if (z2 || objK3 == obj) {
                Object nzVar = new nz(vf2Var, gp3Var2, dh0Var, i2);
                ag1Var.g0(nzVar);
                obj4 = nzVar;
            }
            zf5.c((df1) obj4, ag1Var, vf2Var);
            ws1 ws1Var = (ws1) o70.p0(gp3Var2);
            if (z && !(ws1Var instanceof hy2)) {
                if (ws1Var instanceof ik1) {
                    f = this.a;
                } else if (!(ws1Var instanceof t91) && (ws1Var instanceof zw0)) {
                    f = this.b;
                }
            }
            Object objK4 = ag1Var.K();
            Object obj5 = objK4;
            if (objK4 == obj) {
                Object pdVar2 = new pd(new cw0(f), k30.o, null, 12);
                ag1Var.g0(pdVar2);
                obj5 = pdVar2;
            }
            pd pdVar3 = (pd) obj5;
            cw0 cw0Var = new cw0(f);
            int i3 = (ag1Var.h(pdVar3) ? 1 : 0) | (ag1Var.c(f) ? 1 : 0) | (((((i & 14) ^ 6) <= 4 || !ag1Var.g(z)) && (i & 6) != 4) ? 0 : 1);
            if ((((i & 896) ^ 384) <= 256 || !ag1Var.f(this)) && (i & 384) != 256) {
                i2 = 0;
            }
            int i4 = i3 | i2 | (ag1Var.h(ws1Var) ? 1 : 0);
            Object objK5 = ag1Var.K();
            if (i4 != 0 || objK5 == obj) {
                pdVar = pdVar3;
                Object ozVar = new oz(pdVar, f, z, this, ws1Var, null, 1);
                ag1Var.g0(ozVar);
                objK5 = ozVar;
            } else {
                pdVar = pdVar3;
            }
            zf5.c((df1) objK5, ag1Var, cw0Var);
            tr3Var = pdVar.c;
        }
        ag1Var.p(false);
        return tr3Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof a30)) {
            return false;
        }
        return cw0.b(0.0f, 0.0f) && cw0.b(0.0f, 0.0f) && cw0.b(0.0f, 0.0f) && cw0.b(this.a, ((a30) obj).a) && cw0.b(0.0f, 0.0f);
    }

    public final int hashCode() {
        return Float.hashCode(0.0f) + di0.l(this.a, di0.l(0.0f, di0.l(0.0f, Float.hashCode(0.0f) * 31, 31), 31), 31);
    }
}
