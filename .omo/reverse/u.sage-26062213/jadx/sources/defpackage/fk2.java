package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fk2 {
    public final on4 a;
    public final List b;
    public final List c;
    public final int d;
    public a42 e;

    public fk2(on4 on4Var, List list, List list2, int i) {
        this.a = on4Var;
        this.b = list;
        this.c = list2;
        this.d = i;
    }

    public final List a() {
        if (this.e == null) {
            a42 a42VarP = tv4.p();
            a42VarP.addAll(this.b);
            on4 on4Var = this.a;
            if (on4Var != null) {
                a42VarP.add(on4Var);
            }
            a42VarP.addAll(this.c);
            this.e = tv4.l(a42VarP);
        }
        a42 a42Var = this.e;
        a42Var.getClass();
        return a42Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || fk2.class != obj.getClass()) {
            return false;
        }
        fk2 fk2Var = (fk2) obj;
        return this.d == fk2Var.d && a().equals(fk2Var.a());
    }

    public final int hashCode() {
        return a().hashCode() + (this.d * 31);
    }

    public final String toString() {
        return "NavigationEventHistory(currentIndex=" + this.d + ", mergedHistory=" + a() + ')';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public fk2() {
        g01 g01Var = g01.n;
        this(null, g01Var, g01Var, -1);
    }
}
