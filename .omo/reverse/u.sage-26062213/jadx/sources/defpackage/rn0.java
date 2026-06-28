package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rn0 implements re {
    public final qd1 a;
    public final e34 b;
    public final Object c;
    public final bf d;
    public final bf e;
    public final bf f;
    public final Object g;
    public final long h;

    public rn0(sn0 sn0Var, e34 e34Var, Object obj, bf bfVar) {
        qd1 qd1Var = new qd1(17, sn0Var.a);
        this.a = qd1Var;
        this.b = e34Var;
        this.c = obj;
        bf bfVar2 = (bf) e34Var.a.k(obj);
        this.d = bfVar2;
        this.e = c75.t(bfVar);
        pe1 pe1Var = e34Var.b;
        if (((bf) qd1Var.r) == null) {
            qd1Var.r = bfVar2.c();
        }
        bf bfVar3 = (bf) qd1Var.r;
        if (bfVar3 == null) {
            nt1.X("targetVector");
            throw null;
        }
        int iB = bfVar3.b();
        int i = 0;
        while (true) {
            bf bfVar4 = (bf) qd1Var.r;
            if (i >= iB) {
                if (bfVar4 == null) {
                    nt1.X("targetVector");
                    throw null;
                }
                this.g = pe1Var.k(bfVar4);
                qd1 qd1Var2 = this.a;
                bf bfVar5 = this.d;
                if (((bf) qd1Var2.q) == null) {
                    qd1Var2.q = bfVar5.c();
                }
                bf bfVar6 = (bf) qd1Var2.q;
                if (bfVar6 == null) {
                    nt1.X("velocityVector");
                    throw null;
                }
                int iB2 = bfVar6.b();
                long jMax = 0;
                for (int i2 = 0; i2 < iB2; i2++) {
                    dd1 dd1Var = (dd1) qd1Var2.o;
                    bfVar5.getClass();
                    jMax = Math.max(jMax, ((long) (Math.exp(((ld) dd1Var.o).b(bfVar.a(i2)) / (((double) p71.a) - 1.0d)) * 1000.0d)) * 1000000);
                }
                this.h = jMax;
                bf bfVarT = c75.t(this.a.A(jMax, this.d, bfVar));
                this.f = bfVarT;
                int iB3 = bfVarT.b();
                for (int i3 = 0; i3 < iB3; i3++) {
                    bf bfVar7 = this.f;
                    float fA = bfVar7.a(i3);
                    this.a.getClass();
                    this.a.getClass();
                    bfVar7.e(i3, ix.j(fA, -0.0f, 0.0f));
                }
                return;
            }
            if (bfVar4 == null) {
                nt1.X("targetVector");
                throw null;
            }
            dd1 dd1Var2 = (dd1) qd1Var.o;
            float fA2 = bfVar2.a(i);
            float fA3 = bfVar.a(i);
            ld ldVar = (ld) dd1Var2.o;
            double dB = ldVar.b(fA3);
            double d = p71.a;
            int i4 = i;
            bfVar4.e(i4, (Math.signum(fA3) * ((float) (Math.exp((d / (d - 1.0d)) * dB) * ((double) (ldVar.a * ldVar.b))))) + fA2);
            i = i4 + 1;
        }
    }

    @Override // defpackage.re
    public final boolean a() {
        return false;
    }

    @Override // defpackage.re
    public final Object b(long j) {
        if (g(j)) {
            return this.g;
        }
        pe1 pe1Var = this.b.b;
        qd1 qd1Var = this.a;
        bf bfVar = (bf) qd1Var.p;
        bf bfVar2 = this.d;
        if (bfVar == null) {
            qd1Var.p = bfVar2.c();
        }
        bf bfVar3 = (bf) qd1Var.p;
        if (bfVar3 == null) {
            nt1.X("valueVector");
            throw null;
        }
        int iB = bfVar3.b();
        int i = 0;
        while (true) {
            bf bfVar4 = (bf) qd1Var.p;
            if (i >= iB) {
                if (bfVar4 != null) {
                    return pe1Var.k(bfVar4);
                }
                nt1.X("valueVector");
                throw null;
            }
            if (bfVar4 == null) {
                nt1.X("valueVector");
                throw null;
            }
            dd1 dd1Var = (dd1) qd1Var.o;
            float fA = bfVar2.a(i);
            long j2 = j / 1000000;
            o71 o71VarA = ((ld) dd1Var.o).a(this.e.a(i));
            long j3 = o71VarA.c;
            bfVar4.e(i, (Math.signum(o71VarA.a) * o71VarA.b * bb.a(j3 > 0 ? j2 / j3 : 1.0f).a) + fA);
            i++;
        }
    }

    @Override // defpackage.re
    public final long c() {
        return this.h;
    }

    @Override // defpackage.re
    public final e34 d() {
        return this.b;
    }

    @Override // defpackage.re
    public final Object e() {
        return this.g;
    }

    @Override // defpackage.re
    public final bf f(long j) {
        if (g(j)) {
            return this.f;
        }
        return this.a.A(j, this.d, this.e);
    }
}
