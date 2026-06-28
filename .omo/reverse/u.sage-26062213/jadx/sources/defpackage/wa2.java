package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class wa2 {
    public static final is3 a;

    static {
        dm0.D(new t52(7));
        a = new is3(new t52(8));
    }

    public static final void a(y70 y70Var, ee2 ee2Var, nl3 nl3Var, e54 e54Var, ka0 ka0Var, ag1 ag1Var, int i) {
        int i2;
        ag1Var.X(904511636);
        if ((i & 6) == 0) {
            i2 = (ag1Var.f(y70Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= ag1Var.f(ee2Var) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= ag1Var.f(nl3Var) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= ag1Var.f(e54Var) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= ag1Var.h(ka0Var) ? 16384 : 8192;
        }
        int i3 = 0;
        if (ag1Var.N(i2 & 1, (i2 & 9363) != 9362)) {
            ag1Var.S();
            if ((i & 1) != 0 && !ag1Var.x()) {
                ag1Var.Q();
            }
            ag1Var.q();
            ua2 ua2Var = new ua2(y70Var, e54Var, nl3Var, ee2Var);
            n93 n93VarA = b93.a(0.0f, null, 255);
            long j = y70Var.a;
            boolean zE = ag1Var.e(j);
            Object objK = ag1Var.K();
            if (zE || objK == rb0.a) {
                objK = new ux3(j, t70.b(0.4f, j));
                ag1Var.g0(objK);
            }
            gg4.b(new j03[]{a.a(ua2Var), wp1.a.a(n93VarA), vx3.a.a((ux3) objK)}, qj0.U(-1750539308, new va2(e54Var, ka0Var, i3), ag1Var), ag1Var, 56);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new ri(y70Var, ee2Var, nl3Var, e54Var, ka0Var, i);
        }
    }

    public static final void b(y70 y70Var, nl3 nl3Var, e54 e54Var, ka0 ka0Var, ag1 ag1Var, int i) {
        nl3 nl3Var2;
        nl3 nl3Var3;
        int i2;
        ag1Var.X(-449719819);
        int i3 = (ag1Var.f(y70Var) ? 4 : 2) | i | 16 | (ag1Var.f(e54Var) ? 256 : 128) | (ag1Var.h(ka0Var) ? 2048 : 1024);
        if (ag1Var.N(i3 & 1, (i3 & 1171) != 1170)) {
            ag1Var.S();
            int i4 = i & 1;
            is3 is3Var = a;
            if (i4 == 0 || ag1Var.x()) {
                nl3Var3 = ((ua2) ag1Var.j(is3Var)).c;
                i2 = i3 & (-113);
            } else {
                ag1Var.Q();
                i2 = i3 & (-113);
                nl3Var3 = nl3Var;
            }
            ag1Var.q();
            int i5 = i2 & 14;
            int i6 = i2 << 3;
            a(y70Var, ((ua2) ag1Var.j(is3Var)).d, nl3Var3, e54Var, ka0Var, ag1Var, (i6 & 57344) | i5 | (i6 & 7168));
            nl3Var2 = nl3Var3;
        } else {
            ag1Var.Q();
            nl3Var2 = nl3Var;
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new g4(y70Var, nl3Var2, e54Var, ka0Var, i, 6);
        }
    }
}
