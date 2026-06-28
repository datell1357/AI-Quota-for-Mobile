package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class a12 {
    public final n12 a;
    public final y02 b;
    public final uz1 c;
    public final hb d;

    public a12(n12 n12Var, y02 y02Var, uz1 uz1Var, hb hbVar) {
        this.a = n12Var;
        this.b = y02Var;
        this.c = uz1Var;
        this.d = hbVar;
    }

    public final void a(final int i, Object obj, ag1 ag1Var, int i2) {
        int i3;
        Object obj2;
        ag1 ag1Var2;
        ag1Var.X(-462424778);
        int i4 = (ag1Var.d(i) ? 4 : 2) | i2 | (ag1Var.h(obj) ? 32 : 16) | (ag1Var.f(this) ? 256 : 128);
        if (ag1Var.N(i4 & 1, (i4 & 147) != 146)) {
            i3 = i;
            obj2 = obj;
            ag1Var2 = ag1Var;
            is0.c(obj2, i3, this.a.s, qj0.U(-824725566, new df1() { // from class: z02
                @Override // defpackage.df1
                public final Object f(Object obj3, Object obj4) {
                    ag1 ag1Var3 = (ag1) obj3;
                    int iIntValue = ((Integer) obj4).intValue();
                    if (ag1Var3.N(iIntValue & 1, (iIntValue & 3) != 2)) {
                        a12 a12Var = this.n;
                        hb hbVar = a12Var.b.a;
                        int i5 = i;
                        it1 it1VarC = hbVar.c(i5);
                        ((ka0) it1VarC.c.q).n(a12Var.c, Integer.valueOf(i5 - it1VarC.a), ag1Var3, 0);
                    } else {
                        ag1Var3.Q();
                    }
                    return t64.a;
                }
            }, ag1Var), ag1Var2, ((i4 >> 3) & 14) | 3072 | ((i4 << 3) & 112));
        } else {
            i3 = i;
            obj2 = obj;
            ag1Var2 = ag1Var;
            ag1Var2.Q();
        }
        c33 c33VarR = ag1Var2.r();
        if (c33VarR != null) {
            c33VarR.d = new d02(this, i3, obj2, i2);
        }
    }

    public final Object b(int i) {
        y02 y02Var = this.b;
        y02Var.getClass();
        it1 it1VarC = y02Var.a.c(i);
        return ((pe1) it1VarC.c.p).k(Integer.valueOf(i - it1VarC.a));
    }

    public final int c() {
        y02 y02Var = this.b;
        y02Var.getClass();
        return y02Var.a.b;
    }

    public final Object d(int i) {
        Object objK;
        hb hbVar = this.d;
        Object[] objArr = (Object[]) hbVar.d;
        int i2 = i - hbVar.b;
        Object obj = (i2 < 0 || i2 >= objArr.length) ? null : objArr[i2];
        if (obj != null) {
            return obj;
        }
        y02 y02Var = this.b;
        y02Var.getClass();
        it1 it1VarC = y02Var.a.c(i);
        int i3 = i - it1VarC.a;
        pe1 pe1Var = (pe1) it1VarC.c.o;
        return (pe1Var == null || (objK = pe1Var.k(Integer.valueOf(i3))) == null) ? new mp0(i) : objK;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a12)) {
            return false;
        }
        return nt1.g(this.b, ((a12) obj).b);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }
}
