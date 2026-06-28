package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class q23 {
    public final h23 a;
    public final ArrayList b;
    public final int c;
    public final mu0 d;
    public final k63 e;
    public final int f;
    public final int g;
    public final int h;
    public int i;

    public q23(h23 h23Var, ArrayList arrayList, int i, mu0 mu0Var, k63 k63Var, int i2, int i3, int i4) {
        this.a = h23Var;
        this.b = arrayList;
        this.c = i;
        this.d = mu0Var;
        this.e = k63Var;
        this.f = i2;
        this.g = i3;
        this.h = i4;
    }

    public static q23 a(q23 q23Var, int i, mu0 mu0Var, k63 k63Var, int i2) {
        if ((i2 & 1) != 0) {
            i = q23Var.c;
        }
        int i3 = i;
        if ((i2 & 2) != 0) {
            mu0Var = q23Var.d;
        }
        mu0 mu0Var2 = mu0Var;
        if ((i2 & 4) != 0) {
            k63Var = q23Var.e;
        }
        k63 k63Var2 = k63Var;
        int i4 = q23Var.f;
        int i5 = q23Var.g;
        int i6 = q23Var.h;
        k63Var2.getClass();
        return new q23(q23Var.a, q23Var.b, i3, mu0Var2, k63Var2, i4, i5, i6);
    }

    public final w73 b(k63 k63Var) {
        k63Var.getClass();
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        int i = this.c;
        if (i >= size) {
            k21.n("Check failed.");
            return null;
        }
        this.i++;
        mu0 mu0Var = this.d;
        if (mu0Var != null) {
            u23 u23VarG = ((z21) mu0Var.c).g();
            cn1 cn1Var = k63Var.a;
            u23VarG.getClass();
            cn1Var.getClass();
            cn1 cn1Var2 = u23VarG.i.h;
            if (cn1Var.e != cn1Var2.e || !nt1.g(cn1Var.d, cn1Var2.d)) {
                k21.m(arrayList.get(i - 1), " must retain the same host and port", "network interceptor ");
                return null;
            }
            if (this.i != 1) {
                k21.m(arrayList.get(i - 1), " must call proceed() exactly once", "network interceptor ");
                return null;
            }
        }
        int i2 = i + 1;
        q23 q23VarA = a(this, i2, null, k63Var, 58);
        bt1 bt1Var = (bt1) arrayList.get(i);
        w73 w73VarA = bt1Var.a(q23VarA);
        if (w73VarA == null) {
            throw new NullPointerException("interceptor " + bt1Var + " returned null");
        }
        if (mu0Var == null || i2 >= arrayList.size() || q23VarA.i == 1) {
            return w73VarA;
        }
        k21.m(bt1Var, " must call proceed() exactly once", "network interceptor ");
        return null;
    }
}
