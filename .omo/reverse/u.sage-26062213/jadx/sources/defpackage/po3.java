package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class po3 {
    public uo3 a;
    public long b;
    public boolean c;
    public int d;

    public po3(long j, uo3 uo3Var) {
        int iA;
        int iNumberOfTrailingZeros;
        this.a = uo3Var;
        this.b = j;
        jd3 jd3Var = wo3.a;
        if (j != 0) {
            uo3 uo3VarD = d();
            long j2 = uo3VarD.p;
            long[] jArr = uo3VarD.q;
            if (jArr != null) {
                j = jArr[0];
            } else {
                long j3 = uo3VarD.o;
                if (j3 != 0) {
                    iNumberOfTrailingZeros = Long.numberOfTrailingZeros(j3);
                } else {
                    long j4 = uo3VarD.n;
                    if (j4 != 0) {
                        j2 += 64;
                        iNumberOfTrailingZeros = Long.numberOfTrailingZeros(j4);
                    }
                }
                j = ((long) iNumberOfTrailingZeros) + j2;
            }
            synchronized (wo3.c) {
                iA = wo3.f.a(j);
            }
        } else {
            iA = -1;
        }
        this.d = iA;
    }

    public static void q(po3 po3Var) {
        wo3.b.k(po3Var);
    }

    public final void a() {
        synchronized (wo3.c) {
            b();
            p();
        }
    }

    public void b() {
        wo3.d = wo3.d.d(g());
    }

    public abstract void c();

    public uo3 d() {
        return this.a;
    }

    public abstract pe1 e();

    public abstract boolean f();

    public long g() {
        return this.b;
    }

    public int h() {
        return 0;
    }

    public abstract pe1 i();

    public final po3 j() {
        ui3 ui3Var = wo3.b;
        po3 po3Var = (po3) ui3Var.c();
        ui3Var.k(this);
        return po3Var;
    }

    public abstract void k();

    public abstract void l();

    public abstract void m();

    public abstract void n(bs3 bs3Var);

    public final void o() {
        int i = this.d;
        if (i >= 0) {
            wo3.u(i);
            this.d = -1;
        }
    }

    public void p() {
        o();
    }

    public void r(uo3 uo3Var) {
        this.a = uo3Var;
    }

    public void s(long j) {
        this.b = j;
    }

    public void t(int i) {
        throw new IllegalStateException("Updating write count is not supported for this snapshot");
    }

    public abstract po3 u(pe1 pe1Var);
}
