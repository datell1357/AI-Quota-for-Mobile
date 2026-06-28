package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pd {
    public final e34 a;
    public final Object b;
    public final we c;
    public final ws2 d;
    public final ws2 e;
    public final eh2 f;
    public final bf g;
    public final bf h;
    public final bf i;
    public final bf j;

    public pd(Object obj, e34 e34Var, Object obj2) {
        this.a = e34Var;
        this.b = obj2;
        we weVar = new we(e34Var, obj, null, 60);
        this.c = weVar;
        this.d = ca.A(Boolean.FALSE);
        this.e = ca.A(obj);
        this.f = new eh2();
        new yq3(3, obj2);
        bf bfVar = weVar.p;
        boolean z = bfVar instanceof xe;
        bf bfVar2 = z ? dm0.f : bfVar instanceof ye ? dm0.g : bfVar instanceof ze ? dm0.h : dm0.i;
        this.g = bfVar2;
        bf bfVar3 = z ? dm0.b : bfVar instanceof ye ? dm0.c : bfVar instanceof ze ? dm0.d : dm0.e;
        this.h = bfVar3;
        this.i = bfVar2;
        this.j = bfVar3;
    }

    public static final Object a(pd pdVar, Object obj) {
        e34 e34Var = pdVar.a;
        bf bfVar = pdVar.j;
        bf bfVar2 = pdVar.i;
        if (!nt1.g(bfVar2, pdVar.g) || !nt1.g(bfVar, pdVar.h)) {
            bf bfVar3 = (bf) e34Var.a.k(obj);
            int iB = bfVar3.b();
            boolean z = false;
            for (int i = 0; i < iB; i++) {
                if (bfVar3.a(i) < bfVar2.a(i) || bfVar3.a(i) > bfVar.a(i)) {
                    bfVar3.e(i, ix.j(bfVar3.a(i), bfVar2.a(i), bfVar.a(i)));
                    z = true;
                }
            }
            if (z) {
                return e34Var.b.k(bfVar3);
            }
        }
        return obj;
    }

    public static final void b(pd pdVar) {
        we weVar = pdVar.c;
        weVar.p.d();
        weVar.q = Long.MIN_VALUE;
        pdVar.d.setValue(Boolean.FALSE);
    }

    public static Object c(pd pdVar, Object obj, ve veVar, bv3 bv3Var) {
        Object objK = pdVar.a.b.k(pdVar.c.p);
        Object objD = pdVar.d();
        e34 e34Var = pdVar.a;
        return eh2.a(pdVar.f, new nd(pdVar, objK, new lw3(veVar, e34Var, objD, obj, (bf) e34Var.a.k(objK)), pdVar.c.q, null), bv3Var);
    }

    public final Object d() {
        return this.c.o.getValue();
    }

    public final Object e(Object obj, bv3 bv3Var) {
        Object objA = eh2.a(this.f, new od(this, obj, null), bv3Var);
        return objA == ri0.n ? objA : t64.a;
    }

    public /* synthetic */ pd(Object obj, e34 e34Var, Float f, int i) {
        this(obj, e34Var, (i & 4) != 0 ? null : f);
    }
}
