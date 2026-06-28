package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ka0 implements df1, ff1, gf1, hf1, if1, jf1, kf1, lf1, oe1, qe1, se1, te1, ue1, ve1, we1, xe1, ye1, af1, bf1 {
    public final int n;
    public final boolean o;
    public ef1 p;
    public c33 q;
    public ArrayList r;

    public ka0(int i, boolean z, ef1 ef1Var) {
        this.n = i;
        this.o = z;
        this.p = ef1Var;
    }

    public final Object c(int i, ag1 ag1Var) {
        ag1Var.X(this.n);
        h(ag1Var);
        int iT = i | (ag1Var.f(this) ? qj0.t(2, 0) : qj0.t(1, 0));
        ef1 ef1Var = this.p;
        n44.R(2, ef1Var);
        Object objF = ((df1) ef1Var).f(ag1Var, Integer.valueOf(iT));
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new ja0(2, this, ka0.class, "invoke", "invoke(Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;", 8, 0);
        }
        return objF;
    }

    @Override // defpackage.ff1
    public final /* bridge */ /* synthetic */ Object d(Object obj, Object obj2, Object obj3) {
        return e(obj, (ag1) obj2, ((Number) obj3).intValue());
    }

    public final Object e(Object obj, ag1 ag1Var, int i) {
        ag1Var.X(this.n);
        h(ag1Var);
        int iT = ag1Var.f(this) ? qj0.t(2, 1) : qj0.t(1, 1);
        ef1 ef1Var = this.p;
        n44.R(3, ef1Var);
        Object objD = ((ff1) ef1Var).d(obj, ag1Var, Integer.valueOf(iT | i));
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new ia0(i, 0, this, obj);
        }
        return objD;
    }

    @Override // defpackage.df1
    public final /* bridge */ /* synthetic */ Object f(Object obj, Object obj2) {
        return c(((Number) obj2).intValue(), (ag1) obj);
    }

    public final Object g(Object obj, Object obj2, ag1 ag1Var, int i) {
        ag1Var.X(this.n);
        h(ag1Var);
        int iT = ag1Var.f(this) ? qj0.t(2, 2) : qj0.t(1, 2);
        ef1 ef1Var = this.p;
        n44.R(4, ef1Var);
        Object objN = ((gf1) ef1Var).n(obj, obj2, ag1Var, Integer.valueOf(iT | i));
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new ha0(this, obj, obj2, i, 0);
        }
        return objN;
    }

    public final void h(ag1 ag1Var) {
        c33 c33VarW;
        if (!this.o || (c33VarW = ag1Var.w()) == null) {
            return;
        }
        c33VarW.b |= 1;
        c33 c33Var = this.q;
        if (c33Var == null || !c33Var.a() || c33Var == c33VarW || nt1.g(c33Var.c, c33VarW.c)) {
            this.q = c33VarW;
            return;
        }
        ArrayList arrayList = this.r;
        if (arrayList == null) {
            ArrayList arrayList2 = new ArrayList();
            this.r = arrayList2;
            arrayList2.add(c33VarW);
            return;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            c33 c33Var2 = (c33) arrayList.get(i);
            if (c33Var2 == null || !c33Var2.a() || c33Var2 == c33VarW || nt1.g(c33Var2.c, c33VarW.c)) {
                arrayList.set(i, c33VarW);
                return;
            }
        }
        arrayList.add(c33VarW);
    }

    @Override // defpackage.gf1
    public final /* bridge */ /* synthetic */ Object n(Object obj, Object obj2, Object obj3, Object obj4) {
        return g(obj, obj2, (ag1) obj3, ((Number) obj4).intValue());
    }
}
