package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m14 implements tr3 {
    public final yq3 A;
    public final /* synthetic */ n14 B;
    public final e34 n;
    public final ws2 o;
    public final ws2 p;
    public final ws2 q;
    public ig3 r;
    public lw3 s;
    public final ws2 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final ss2 f196u;
    public boolean v;
    public final ws2 w;
    public bf x;
    public final us2 y;
    public boolean z;

    public m14(n14 n14Var, Object obj, bf bfVar, e34 e34Var) {
        this.B = n14Var;
        this.n = e34Var;
        ws2 ws2VarA = ca.A(obj);
        this.o = ws2VarA;
        Object objK = null;
        ws2 ws2VarA2 = ca.A(tv4.Q(0.0f, 0.0f, null, 7));
        this.p = ws2VarA2;
        this.q = ca.A(new lw3((z51) ws2VarA2.getValue(), e34Var, obj, ws2VarA.getValue(), bfVar));
        this.t = ca.A(Boolean.TRUE);
        this.f196u = new ss2(-1.0f);
        this.w = ca.A(obj);
        this.x = bfVar;
        this.y = new us2(a().c());
        Float f = (Float) ic4.a.get(e34Var);
        if (f != null) {
            float fFloatValue = f.floatValue();
            bf bfVar2 = (bf) e34Var.a.k(obj);
            int iB = bfVar2.b();
            for (int i = 0; i < iB; i++) {
                bfVar2.e(i, fFloatValue);
            }
            objK = this.n.b.k(bfVar2);
        }
        this.A = tv4.Q(0.0f, 0.0f, objK, 3);
    }

    public final lw3 a() {
        return (lw3) this.q.getValue();
    }

    public final void c(long j) {
        if (this.f196u.g() == -1.0f) {
            this.z = true;
            if (nt1.g(a().c, a().d)) {
                d(a().c);
            } else {
                d(a().b(j));
                this.x = a().f(j);
            }
        }
    }

    public final void d(Object obj) {
        this.w.setValue(obj);
    }

    public final void e(Object obj, boolean z) {
        z51 z51Var;
        lw3 lw3Var = this.s;
        Object obj2 = lw3Var != null ? lw3Var.c : null;
        ws2 ws2Var = this.o;
        boolean zG = nt1.g(obj2, ws2Var.getValue());
        us2 us2Var = this.y;
        ws2 ws2Var2 = this.q;
        e34 e34Var = this.n;
        yq3 yq3Var = this.A;
        if (zG) {
            ws2Var2.setValue(new lw3(yq3Var, e34Var, obj, obj, this.x.c()));
            this.v = true;
            us2Var.h(a().c());
            return;
        }
        ws2 ws2Var3 = this.p;
        if (!z || this.z) {
            z51Var = (z51) ws2Var3.getValue();
        } else {
            z51Var = yq3Var;
            if (((z51) ws2Var3.getValue()) instanceof yq3) {
                z51Var = (z51) ws2Var3.getValue();
            }
        }
        n14 n14Var = this.B;
        long jE = n14Var.e();
        ws2 ws2Var4 = n14Var.i;
        ve lr3Var = z51Var;
        if (jE > 0) {
            lr3Var = new lr3(z51Var, n14Var.e());
        }
        ws2Var2.setValue(new lw3(lr3Var, e34Var, obj, ws2Var.getValue(), this.x));
        us2Var.h(a().c());
        this.v = false;
        ws2Var4.setValue(Boolean.TRUE);
        if (n14Var.g()) {
            gp3 gp3Var = n14Var.j;
            int size = gp3Var.size();
            long jMax = 0;
            for (int i = 0; i < size; i++) {
                m14 m14Var = (m14) gp3Var.get(i);
                jMax = Math.max(jMax, m14Var.y.g());
                m14Var.c(0L);
            }
            ws2Var4.setValue(Boolean.FALSE);
        }
    }

    public final void f(Object obj, Object obj2, z51 z51Var) {
        this.o.setValue(obj2);
        this.p.setValue(z51Var);
        if (nt1.g(a().d, obj) && nt1.g(a().c, obj2)) {
            return;
        }
        e(obj, false);
    }

    @Override // defpackage.tr3
    public final Object getValue() {
        return this.w.getValue();
    }

    public final String toString() {
        return "current value: " + this.w.getValue() + ", target: " + this.o.getValue() + ", spec: " + ((z51) this.p.getValue());
    }
}
