package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class n14 {
    public final ib0 a;
    public final n14 b;
    public final String c;
    public final ws2 d;
    public final ws2 f;
    public final ws2 i;
    public final gp3 j;
    public final gp3 k;
    public final ws2 l;
    public final os0 m;
    public final ws2 e = ca.A(null);
    public final us2 g = new us2(0);
    public final us2 h = new us2(Long.MIN_VALUE);

    public n14(ib0 ib0Var, n14 n14Var, String str) {
        this.a = ib0Var;
        this.b = n14Var;
        this.c = str;
        this.d = ca.A(ib0Var.l());
        this.f = ca.A(new l14(ib0Var.l(), ib0Var.l()));
        Boolean bool = Boolean.FALSE;
        this.i = ca.A(bool);
        this.j = new gp3();
        this.k = new gp3();
        this.l = ca.A(bool);
        this.m = ca.m(new h14(this, 1));
        ib0Var.r(this);
    }

    public final void a(Object obj, ag1 ag1Var, int i) {
        int i2;
        ag1Var.X(-1493585151);
        int i3 = 4;
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? ag1Var.f(obj) : ag1Var.h(obj) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= ag1Var.f(this) ? 32 : 16;
        }
        int i4 = 0;
        if (!ag1Var.N(i2 & 1, (i2 & 19) != 18)) {
            ag1Var.Q();
        } else if (g()) {
            ag1Var.W(467722849);
            ag1Var.p(false);
        } else {
            ag1Var.W(466062241);
            p(obj);
            int i5 = i2 & 112;
            boolean z = i5 == 32;
            Object objK = ag1Var.K();
            bx3 bx3Var = rb0.a;
            if (z || objK == bx3Var) {
                objK = ca.m(new h14(this, i4));
                ag1Var.g0(objK);
            }
            if (((Boolean) ((tr3) objK).getValue()).booleanValue()) {
                ag1Var.W(466470356);
                Object objK2 = ag1Var.K();
                if (objK2 == bx3Var) {
                    objK2 = zf5.x(ag1Var);
                    ag1Var.g0(objK2);
                }
                qi0 qi0Var = (qi0) objK2;
                boolean zH = ag1Var.h(qi0Var) | (i5 == 32);
                Object objK3 = ag1Var.K();
                if (zH || objK3 == bx3Var) {
                    objK3 = new m(28, qi0Var, this);
                    ag1Var.g0(objK3);
                }
                zf5.b(qi0Var, this, (pe1) objK3, ag1Var);
                ag1Var.p(false);
            } else {
                ag1Var.W(467712929);
                ag1Var.p(false);
            }
            ag1Var.p(false);
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new ia0(i, i3, this, obj);
        }
    }

    public final long b() {
        gp3 gp3Var = this.j;
        int size = gp3Var.size();
        long jMax = 0;
        for (int i = 0; i < size; i++) {
            jMax = Math.max(jMax, ((m14) gp3Var.get(i)).y.g());
        }
        gp3 gp3Var2 = this.k;
        int size2 = gp3Var2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            jMax = Math.max(jMax, ((n14) gp3Var2.get(i2)).b());
        }
        return jMax;
    }

    public final void c() {
        gp3 gp3Var = this.j;
        int size = gp3Var.size();
        for (int i = 0; i < size; i++) {
            m14 m14Var = (m14) gp3Var.get(i);
            m14Var.s = null;
            m14Var.r = null;
            m14Var.v = false;
        }
        gp3 gp3Var2 = this.k;
        int size2 = gp3Var2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((n14) gp3Var2.get(i2)).c();
        }
    }

    public final boolean d() {
        gp3 gp3Var = this.j;
        int size = gp3Var.size();
        for (int i = 0; i < size; i++) {
            if (((m14) gp3Var.get(i)).r != null) {
                return true;
            }
        }
        gp3 gp3Var2 = this.k;
        int size2 = gp3Var2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            if (((n14) gp3Var2.get(i2)).d()) {
                return true;
            }
        }
        return false;
    }

    public final long e() {
        n14 n14Var = this.b;
        return n14Var != null ? n14Var.e() : this.g.g();
    }

    public final k14 f() {
        return (k14) this.f.getValue();
    }

    public final boolean g() {
        return ((Boolean) this.l.getValue()).booleanValue();
    }

    public final void h(boolean z, long j) {
        us2 us2Var = this.h;
        long jG = us2Var.g();
        ib0 ib0Var = this.a;
        if (jG == Long.MIN_VALUE) {
            us2Var.h(j);
            ((ws2) ib0Var.a).setValue(Boolean.TRUE);
        } else if (!((Boolean) ((ws2) ib0Var.a).getValue()).booleanValue()) {
            ((ws2) ib0Var.a).setValue(Boolean.TRUE);
        }
        this.i.setValue(Boolean.FALSE);
        gp3 gp3Var = this.j;
        int size = gp3Var.size();
        boolean z2 = true;
        for (int i = 0; i < size; i++) {
            m14 m14Var = (m14) gp3Var.get(i);
            ws2 ws2Var = m14Var.t;
            ws2 ws2Var2 = m14Var.t;
            if (!((Boolean) ws2Var.getValue()).booleanValue()) {
                long jC = z ? m14Var.a().c() : j;
                m14Var.d(m14Var.a().b(jC));
                m14Var.x = m14Var.a().f(jC);
                if (m14Var.a().g(jC)) {
                    ws2Var2.setValue(Boolean.TRUE);
                }
            }
            if (!((Boolean) ws2Var2.getValue()).booleanValue()) {
                z2 = false;
            }
        }
        gp3 gp3Var2 = this.k;
        int size2 = gp3Var2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            n14 n14Var = (n14) gp3Var2.get(i2);
            ws2 ws2Var3 = n14Var.d;
            ib0 ib0Var2 = n14Var.a;
            if (!nt1.g(ws2Var3.getValue(), ib0Var2.l())) {
                n14Var.h(z, j);
            }
            if (!nt1.g(n14Var.d.getValue(), ib0Var2.l())) {
                z2 = false;
            }
        }
        if (z2) {
            i();
        }
    }

    public final void i() {
        this.h.h(Long.MIN_VALUE);
        ib0 ib0Var = this.a;
        if (ib0Var instanceof qg2) {
            ib0Var.q(this.d.getValue());
        }
        n(0L);
        ((ws2) ib0Var.a).setValue(Boolean.FALSE);
        gp3 gp3Var = this.k;
        int size = gp3Var.size();
        for (int i = 0; i < size; i++) {
            ((n14) gp3Var.get(i)).i();
        }
    }

    public final void j(float f) {
        gp3 gp3Var = this.j;
        int size = gp3Var.size();
        for (int i = 0; i < size; i++) {
            m14 m14Var = (m14) gp3Var.get(i);
            m14Var.getClass();
            if (f == -4.0f || f == -5.0f) {
                lw3 lw3Var = m14Var.s;
                if (lw3Var != null) {
                    m14Var.a().h(lw3Var.c);
                    m14Var.r = null;
                    m14Var.s = null;
                }
                Object obj = f == -4.0f ? m14Var.a().d : m14Var.a().c;
                m14Var.a().h(obj);
                m14Var.a().i(obj);
                m14Var.d(obj);
                m14Var.y.h(m14Var.a().c());
            } else {
                m14Var.f196u.h(f);
            }
        }
        gp3 gp3Var2 = this.k;
        int size2 = gp3Var2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((n14) gp3Var2.get(i2)).j(f);
        }
    }

    public final void k(Object obj, Object obj2) {
        this.h.h(Long.MIN_VALUE);
        ib0 ib0Var = this.a;
        ((ws2) ib0Var.a).setValue(Boolean.FALSE);
        boolean zG = g();
        ws2 ws2Var = this.d;
        if (!zG || !nt1.g(ib0Var.l(), obj) || !nt1.g(ws2Var.getValue(), obj2)) {
            if (!nt1.g(ib0Var.l(), obj) && (ib0Var instanceof qg2)) {
                ib0Var.q(obj);
            }
            ws2Var.setValue(obj2);
            this.l.setValue(Boolean.TRUE);
            this.f.setValue(new l14(obj, obj2));
        }
        gp3 gp3Var = this.k;
        int size = gp3Var.size();
        for (int i = 0; i < size; i++) {
            n14 n14Var = (n14) gp3Var.get(i);
            n14Var.getClass();
            if (n14Var.g()) {
                n14Var.k(n14Var.a.l(), n14Var.d.getValue());
            }
        }
        gp3 gp3Var2 = this.j;
        int size2 = gp3Var2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((m14) gp3Var2.get(i2)).c(0L);
        }
    }

    public final void l(long j) {
        us2 us2Var = this.h;
        if (us2Var.g() == Long.MIN_VALUE) {
            us2Var.h(j);
        }
        n(j);
        this.i.setValue(Boolean.FALSE);
        gp3 gp3Var = this.j;
        int size = gp3Var.size();
        for (int i = 0; i < size; i++) {
            ((m14) gp3Var.get(i)).c(j);
        }
        gp3 gp3Var2 = this.k;
        int size2 = gp3Var2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            n14 n14Var = (n14) gp3Var2.get(i2);
            if (!nt1.g(n14Var.d.getValue(), n14Var.a.l())) {
                n14Var.l(j);
            }
        }
    }

    public final void m(ig3 ig3Var) {
        gp3 gp3Var = this.j;
        int size = gp3Var.size();
        for (int i = 0; i < size; i++) {
            m14 m14Var = (m14) gp3Var.get(i);
            ws2 ws2Var = m14Var.w;
            if (!nt1.g(m14Var.a().c, m14Var.a().d)) {
                m14Var.s = m14Var.a();
                m14Var.r = ig3Var;
            }
            m14Var.q.setValue(new lw3(m14Var.A, m14Var.n, ws2Var.getValue(), ws2Var.getValue(), m14Var.x.c()));
            m14Var.y.h(m14Var.a().c());
            m14Var.v = true;
        }
        gp3 gp3Var2 = this.k;
        int size2 = gp3Var2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((n14) gp3Var2.get(i2)).m(ig3Var);
        }
    }

    public final void n(long j) {
        if (this.b == null) {
            this.g.h(j);
        }
    }

    public final void o() {
        lw3 lw3Var;
        gp3 gp3Var = this.j;
        int size = gp3Var.size();
        for (int i = 0; i < size; i++) {
            m14 m14Var = (m14) gp3Var.get(i);
            ig3 ig3Var = m14Var.r;
            if (ig3Var != null && (lw3Var = m14Var.s) != null) {
                long jW = is0.W(ig3Var.g * ((double) ig3Var.d));
                Object objB = lw3Var.b(jW);
                if (m14Var.v) {
                    m14Var.a().i(objB);
                }
                m14Var.a().h(objB);
                m14Var.y.h(m14Var.a().c());
                if (m14Var.f196u.g() == -2.0f || m14Var.v) {
                    m14Var.d(objB);
                } else {
                    m14Var.c(m14Var.B.e());
                }
                if (jW >= ig3Var.g) {
                    m14Var.r = null;
                    m14Var.s = null;
                } else {
                    ig3Var.c = false;
                }
            }
        }
        gp3 gp3Var2 = this.k;
        int size2 = gp3Var2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((n14) gp3Var2.get(i2)).o();
        }
    }

    public final void p(Object obj) {
        ws2 ws2Var = this.d;
        if (nt1.g(ws2Var.getValue(), obj)) {
            return;
        }
        this.f.setValue(new l14(ws2Var.getValue(), obj));
        ib0 ib0Var = this.a;
        if (!nt1.g(ib0Var.l(), ws2Var.getValue())) {
            ib0Var.q(ws2Var.getValue());
        }
        ws2Var.setValue(obj);
        if (this.h.g() == Long.MIN_VALUE) {
            this.i.setValue(Boolean.TRUE);
        }
        gp3 gp3Var = this.j;
        int size = gp3Var.size();
        for (int i = 0; i < size; i++) {
            ((m14) gp3Var.get(i)).f196u.h(-2.0f);
        }
    }

    public final String toString() {
        gp3 gp3Var = this.j;
        int size = gp3Var.size();
        String str = "Transition animation values: ";
        for (int i = 0; i < size; i++) {
            str = str + ((m14) gp3Var.get(i)) + ", ";
        }
        return str;
    }
}
