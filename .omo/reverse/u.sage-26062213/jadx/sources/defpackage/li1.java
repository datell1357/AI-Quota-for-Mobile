package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class li1 extends u94 {
    public float[] b;
    public final ArrayList c = new ArrayList();
    public boolean d = true;
    public long e = t70.f;
    public List f;
    public boolean g;
    public sb h;
    public pe1 i;
    public final c8 j;
    public String k;
    public float l;
    public float m;
    public float n;
    public float o;
    public float p;
    public float q;
    public float r;
    public boolean s;

    public li1() {
        int i = ea4.a;
        this.f = g01.n;
        this.g = true;
        this.j = new c8(16, this);
        this.k = "";
        this.o = 1.0f;
        this.p = 1.0f;
        this.s = true;
    }

    @Override // defpackage.u94
    public final void a(kx0 kx0Var) {
        if (this.s) {
            float[] fArrA = this.b;
            if (fArrA == null) {
                fArrA = xa2.a();
                this.b = fArrA;
            } else {
                xa2.d(fArrA);
            }
            xa2.g(fArrA, this.q + this.m, this.r + this.n);
            xa2.e(fArrA, this.l);
            xa2.f(fArrA, this.o, this.p);
            xa2.g(fArrA, -this.m, -this.n);
            this.s = false;
        }
        if (this.g) {
            if (!this.f.isEmpty()) {
                sb sbVarA = this.h;
                if (sbVarA == null) {
                    sbVarA = ub.a();
                    this.h = sbVarA;
                }
                k30.H(this.f, sbVarA);
            }
            this.g = false;
        }
        eh ehVarZ = kx0Var.z();
        long jZ = ehVarZ.z();
        ehVarZ.u().j();
        try {
            eh ehVar = (eh) ((dh1) ehVarZ.o).n;
            float[] fArr = this.b;
            if (fArr != null) {
                ehVar.u().o(fArr);
            }
            sb sbVar = this.h;
            if (!this.f.isEmpty() && sbVar != null) {
                ehVar.u().q(sbVar);
            }
            ArrayList arrayList = this.c;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((u94) arrayList.get(i)).a(kx0Var);
            }
        } finally {
            ehVarZ.u().h();
            ehVarZ.K(jZ);
        }
    }

    @Override // defpackage.u94
    public final pe1 b() {
        return this.i;
    }

    @Override // defpackage.u94
    public final void d(c8 c8Var) {
        this.i = c8Var;
    }

    public final void e(int i, u94 u94Var) {
        ArrayList arrayList = this.c;
        if (i < arrayList.size()) {
            arrayList.set(i, u94Var);
        } else {
            arrayList.add(u94Var);
        }
        g(u94Var);
        u94Var.d(this.j);
        c();
    }

    public final void f(long j) {
        if (this.d && j != 16) {
            long j2 = this.e;
            if (j2 == 16) {
                this.e = j;
                return;
            }
            int i = ea4.a;
            if (t70.h(j2) == t70.h(j) && t70.g(j2) == t70.g(j) && t70.e(j2) == t70.e(j)) {
                return;
            }
            this.d = false;
            this.e = t70.f;
        }
    }

    public final void g(u94 u94Var) {
        if (!(u94Var instanceof dt2)) {
            if (u94Var instanceof li1) {
                li1 li1Var = (li1) u94Var;
                if (li1Var.d && this.d) {
                    f(li1Var.e);
                    return;
                } else {
                    this.d = false;
                    this.e = t70.f;
                    return;
                }
            }
            return;
        }
        dt2 dt2Var = (dt2) u94Var;
        zf5 zf5Var = dt2Var.b;
        if (this.d && zf5Var != null) {
            if (zf5Var instanceof sp3) {
                f(((sp3) zf5Var).h);
            } else {
                this.d = false;
                this.e = t70.f;
            }
        }
        zf5 zf5Var2 = dt2Var.g;
        if (this.d && zf5Var2 != null) {
            if (zf5Var2 instanceof sp3) {
                f(((sp3) zf5Var2).h);
            } else {
                this.d = false;
                this.e = t70.f;
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("VGroup: ");
        sb.append(this.k);
        ArrayList arrayList = this.c;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            u94 u94Var = (u94) arrayList.get(i);
            sb.append("\t");
            sb.append(u94Var.toString());
            sb.append("\n");
        }
        return sb.toString();
    }
}
