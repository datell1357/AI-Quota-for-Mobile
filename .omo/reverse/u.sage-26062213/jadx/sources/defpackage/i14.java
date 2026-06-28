package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i14 implements tr3 {
    public final m14 n;
    public pe1 o;
    public pe1 p;
    public final /* synthetic */ j14 q;

    public i14(j14 j14Var, m14 m14Var, pe1 pe1Var, pe1 pe1Var2) {
        this.q = j14Var;
        this.n = m14Var;
        this.o = pe1Var;
        this.p = pe1Var2;
    }

    public final void a(k14 k14Var, Object obj, bf bfVar) {
        Object objK = this.p.k(k14Var.c());
        boolean zG = this.q.c.g();
        m14 m14Var = this.n;
        if (zG) {
            m14Var.f(this.p.k(k14Var.b()), objK, (z51) this.o.k(k14Var));
            return;
        }
        z51 z51Var = (z51) this.o.k(k14Var);
        ws2 ws2Var = m14Var.t;
        ws2 ws2Var2 = m14Var.o;
        ss2 ss2Var = m14Var.f196u;
        if (m14Var.v) {
            lw3 lw3Var = m14Var.s;
            if (nt1.g(objK, lw3Var != null ? lw3Var.c : null)) {
                return;
            }
        }
        if (nt1.g(ws2Var2.getValue(), objK) && ss2Var.g() == -1.0f && (obj == null || obj.equals(m14Var.a().d))) {
            return;
        }
        ws2Var2.setValue(objK);
        m14Var.p.setValue(z51Var);
        Object value = obj == null ? ss2Var.g() == -3.0f ? objK : m14Var.w.getValue() : obj;
        if (obj != null) {
            m14Var.d(value);
            if (bfVar != null) {
                m14Var.x = bfVar;
            }
        }
        m14Var.e(value, !((Boolean) ws2Var.getValue()).booleanValue());
        ws2Var.setValue(Boolean.valueOf(ss2Var.g() == -3.0f));
        if (ss2Var.g() >= 0.0f) {
            m14Var.d(m14Var.a().b((long) (ss2Var.g() * m14Var.a().c())));
        } else if (ss2Var.g() == -3.0f) {
            m14Var.d(objK);
        }
        m14Var.v = false;
        ss2Var.h(-1.0f);
    }

    @Override // defpackage.tr3
    public final Object getValue() {
        a(this.q.c.f(), null, null);
        return this.n.w.getValue();
    }
}
