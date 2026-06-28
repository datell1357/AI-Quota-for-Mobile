package defpackage;

import java.util.AbstractQueue;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class b62 extends AbstractQueue {
    public final /* synthetic */ int n;
    public final y52 o;

    public b62(int i) {
        this.n = i;
        switch (i) {
            case 1:
                z52 z52Var = new z52(1);
                z52Var.o = z52Var;
                z52Var.p = z52Var;
                this.o = z52Var;
                break;
            default:
                z52 z52Var2 = new z52(0);
                z52Var2.o = z52Var2;
                z52Var2.p = z52Var2;
                this.o = z52Var2;
                break;
        }
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        int i = this.n;
        h62 h62Var = h62.n;
        y52 y52Var = this.o;
        switch (i) {
            case 0:
                z52 z52Var = (z52) y52Var;
                x33 x33Var = z52Var.o;
                while (x33Var != z52Var) {
                    x33 x33VarE = x33Var.e();
                    w52 w52Var = v62.F;
                    x33Var.i(h62Var);
                    x33Var.j(h62Var);
                    x33Var = x33VarE;
                }
                z52Var.o = z52Var;
                z52Var.p = z52Var;
                break;
            default:
                z52 z52Var2 = (z52) y52Var;
                x33 x33Var2 = z52Var2.o;
                while (x33Var2 != z52Var2) {
                    x33 x33VarL = x33Var2.l();
                    w52 w52Var2 = v62.F;
                    x33Var2.h(h62Var);
                    x33Var2.g(h62Var);
                    x33Var2 = x33VarL;
                }
                z52Var2.o = z52Var2;
                z52Var2.p = z52Var2;
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        int i = this.n;
        h62 h62Var = h62.n;
        switch (i) {
            case 0:
                if (((x33) obj).e() != h62Var) {
                }
                break;
            default:
                if (((x33) obj).l() != h62Var) {
                }
                break;
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        int i = this.n;
        y52 y52Var = this.o;
        switch (i) {
            case 0:
                z52 z52Var = (z52) y52Var;
                if (z52Var.o == z52Var) {
                }
                break;
            default:
                z52 z52Var2 = (z52) y52Var;
                if (z52Var2.o == z52Var2) {
                }
                break;
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        int i = this.n;
        y52 y52Var = this.o;
        switch (i) {
            case 0:
                z52 z52Var = (z52) y52Var;
                x33 x33Var = z52Var.o;
                return new a62(this, x33Var != z52Var ? x33Var : null, 0);
            default:
                z52 z52Var2 = (z52) y52Var;
                x33 x33Var2 = z52Var2.o;
                return new a62(this, x33Var2 != z52Var2 ? x33Var2 : null, 1);
        }
    }

    @Override // java.util.Queue
    public final boolean offer(Object obj) {
        int i = this.n;
        y52 y52Var = this.o;
        switch (i) {
            case 0:
                x33 x33Var = (x33) obj;
                x33 x33VarB = x33Var.b();
                x33 x33VarE = x33Var.e();
                w52 w52Var = v62.F;
                x33VarB.i(x33VarE);
                x33VarE.j(x33VarB);
                z52 z52Var = (z52) y52Var;
                x33 x33Var2 = z52Var.p;
                x33Var2.i(x33Var);
                x33Var.j(x33Var2);
                x33Var.i(z52Var);
                z52Var.p = x33Var;
                break;
            default:
                x33 x33Var3 = (x33) obj;
                x33 x33VarK = x33Var3.k();
                x33 x33VarL = x33Var3.l();
                w52 w52Var2 = v62.F;
                x33VarK.h(x33VarL);
                x33VarL.g(x33VarK);
                z52 z52Var2 = (z52) y52Var;
                x33 x33Var4 = z52Var2.p;
                x33Var4.h(x33Var3);
                x33Var3.g(x33Var4);
                x33Var3.h(z52Var2);
                z52Var2.p = x33Var3;
                break;
        }
        return true;
    }

    @Override // java.util.Queue
    public final Object peek() {
        int i = this.n;
        y52 y52Var = this.o;
        switch (i) {
            case 0:
                z52 z52Var = (z52) y52Var;
                x33 x33Var = z52Var.o;
                if (x33Var == z52Var) {
                    return null;
                }
                return x33Var;
            default:
                z52 z52Var2 = (z52) y52Var;
                x33 x33Var2 = z52Var2.o;
                if (x33Var2 == z52Var2) {
                    return null;
                }
                return x33Var2;
        }
    }

    @Override // java.util.Queue
    public final Object poll() {
        int i = this.n;
        y52 y52Var = this.o;
        switch (i) {
            case 0:
                z52 z52Var = (z52) y52Var;
                x33 x33Var = z52Var.o;
                if (x33Var == z52Var) {
                    return null;
                }
                remove(x33Var);
                return x33Var;
            default:
                z52 z52Var2 = (z52) y52Var;
                x33 x33Var2 = z52Var2.o;
                if (x33Var2 == z52Var2) {
                    return null;
                }
                remove(x33Var2);
                return x33Var2;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        int i = this.n;
        h62 h62Var = h62.n;
        switch (i) {
            case 0:
                x33 x33Var = (x33) obj;
                x33 x33VarB = x33Var.b();
                x33 x33VarE = x33Var.e();
                w52 w52Var = v62.F;
                x33VarB.i(x33VarE);
                x33VarE.j(x33VarB);
                x33Var.i(h62Var);
                x33Var.j(h62Var);
                if (x33VarE != h62Var) {
                }
                break;
            default:
                x33 x33Var2 = (x33) obj;
                x33 x33VarK = x33Var2.k();
                x33 x33VarL = x33Var2.l();
                w52 w52Var2 = v62.F;
                x33VarK.h(x33VarL);
                x33VarL.g(x33VarK);
                x33Var2.h(h62Var);
                x33Var2.g(h62Var);
                if (x33VarL != h62Var) {
                }
                break;
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        int i = this.n;
        y52 y52Var = this.o;
        int i2 = 0;
        switch (i) {
            case 0:
                z52 z52Var = (z52) y52Var;
                for (x33 x33VarE = z52Var.o; x33VarE != z52Var; x33VarE = x33VarE.e()) {
                    i2++;
                }
                break;
            default:
                z52 z52Var2 = (z52) y52Var;
                for (x33 x33VarL = z52Var2.o; x33VarL != z52Var2; x33VarL = x33VarL.l()) {
                    i2++;
                }
                break;
        }
        return i2;
    }
}
