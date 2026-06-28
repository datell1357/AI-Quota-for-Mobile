package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hk2 {
    public final wr3 a = xr3.a(ik2.z);
    public final wr3 b;
    public final b23 c;
    public final vh d;
    public final vh e;
    public ek2 f;
    public int g;
    public gk2 h;
    public final eg2 i;
    public final eg2 j;
    public final eg2 k;
    public boolean l;
    public boolean m;
    public boolean n;

    public hk2() {
        wr3 wr3VarA = xr3.a(new fk2());
        this.b = wr3VarA;
        this.c = new b23(wr3VarA);
        this.d = new vh();
        this.e = new vh();
        this.i = fr2.a();
        this.j = fr2.a();
        this.k = fr2.a();
    }

    public final void a(ck2 ck2Var, gk2 gk2Var, int i) {
        ck2Var.getClass();
        if (gk2Var.a == null) {
            (i != 0 ? i != 1 ? this.i : this.j : this.k).g(gk2Var);
            gk2Var.a = ck2Var;
            ((fk2) this.c.n.getValue()).getClass();
            gk2Var.b(i != 0 ? i != 1 ? this.n : this.l : this.m);
            return;
        }
        StringBuilder sb = new StringBuilder("Input '");
        sb.append(gk2Var);
        ck2 ck2Var2 = gk2Var.a;
        sb.append("' is already added to dispatcher ");
        sb.append(ck2Var2);
        sb.append('.');
        throw new IllegalArgumentException(sb.toString().toString());
    }

    public final void b() {
        boolean z;
        boolean z2;
        long j;
        fk2 fk2Var;
        vh vhVar = this.d;
        if (vhVar == null || !vhVar.isEmpty()) {
            Iterator it = vhVar.iterator();
            while (it.hasNext()) {
                if (((ek2) it.next()).a()) {
                    z = true;
                    break;
                }
            }
            z = false;
        } else {
            z = false;
        }
        vh vhVar2 = this.e;
        if (vhVar2 == null || !vhVar2.isEmpty()) {
            Iterator it2 = vhVar2.iterator();
            while (it2.hasNext()) {
                if (((ek2) it2.next()).a()) {
                    z2 = true;
                    break;
                }
            }
            z2 = false;
        } else {
            z2 = false;
        }
        boolean z3 = z || z2;
        boolean z4 = this.m != z;
        boolean z5 = this.l != z2;
        boolean z6 = this.n != z3;
        eg2 eg2Var = this.k;
        char c = 31;
        if (z4) {
            Object[] objArr = eg2Var.b;
            long[] jArr = eg2Var.c;
            j = 2147483647L;
            int i = eg2Var.e;
            while (i != Integer.MAX_VALUE) {
                int i2 = (int) ((jArr[i] >> 31) & 2147483647L);
                ((gk2) objArr[i]).b(z);
                i = i2;
                vhVar = vhVar;
            }
        } else {
            j = 2147483647L;
        }
        vh vhVar3 = vhVar;
        eg2 eg2Var2 = this.j;
        if (z5) {
            Object[] objArr2 = eg2Var2.b;
            long[] jArr2 = eg2Var2.c;
            int i3 = eg2Var2.e;
            while (i3 != Integer.MAX_VALUE) {
                int i4 = (int) ((jArr2[i3] >> c) & j);
                ((gk2) objArr2[i3]).b(z2);
                c = c;
                i3 = i4;
            }
        }
        char c2 = c;
        eg2 eg2Var3 = this.i;
        if (z6) {
            Object[] objArr3 = eg2Var3.b;
            long[] jArr3 = eg2Var3.c;
            int i5 = eg2Var3.e;
            while (i5 != Integer.MAX_VALUE) {
                int i6 = (int) ((jArr3[i5] >> c2) & j);
                ((gk2) objArr3[i5]).b(z3);
                i5 = i6;
            }
        }
        this.m = z;
        this.l = z2;
        this.n = z3;
        ek2 ek2VarC = this.f;
        if (ek2VarC == null) {
            ek2VarC = c(0);
        }
        ek2 ek2VarC2 = this.f;
        if (ek2VarC2 == null) {
            ek2VarC2 = c(0);
        }
        if (nt1.g(ek2VarC2, ek2VarC)) {
            if (ek2VarC2 == null) {
                fk2Var = new fk2();
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator<E> it3 = vhVar3.iterator();
                while (it3.hasNext()) {
                    ((ek2) it3.next()).a();
                }
                Iterator<E> it4 = vhVar2.iterator();
                while (it4.hasNext()) {
                    ((ek2) it4.next()).a();
                }
                fk2Var = new fk2(ek2VarC2.a, arrayList, g01.n, arrayList.size());
            }
            wr3 wr3Var = this.b;
            if (nt1.g((fk2) wr3Var.getValue(), fk2Var)) {
                return;
            }
            wr3Var.i(null, fk2Var);
            Object[] objArr4 = eg2Var.b;
            long[] jArr4 = eg2Var.c;
            int i7 = eg2Var.e;
            while (i7 != Integer.MAX_VALUE) {
                int i8 = (int) ((jArr4[i7] >> c2) & j);
                ((gk2) objArr4[i7]).getClass();
                i7 = i8;
            }
            Object[] objArr5 = eg2Var2.b;
            long[] jArr5 = eg2Var2.c;
            int i9 = eg2Var2.e;
            while (i9 != Integer.MAX_VALUE) {
                int i10 = (int) ((jArr5[i9] >> c2) & j);
                ((gk2) objArr5[i9]).getClass();
                i9 = i10;
            }
            Object[] objArr6 = eg2Var3.b;
            long[] jArr6 = eg2Var3.c;
            int i11 = eg2Var3.e;
            while (i11 != Integer.MAX_VALUE) {
                int i12 = (int) ((jArr6[i11] >> c2) & j);
                ((gk2) objArr6[i11]).getClass();
                i11 = i12;
            }
        }
    }

    public final ek2 c(int i) {
        Object next;
        Object next2;
        vh vhVar = this.e;
        vh vhVar2 = this.d;
        Object obj = null;
        if (i == -1) {
            Iterator it = vhVar2.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (((ek2) next).a()) {
                    break;
                }
            }
            ek2 ek2Var = (ek2) next;
            if (ek2Var != null) {
                return ek2Var;
            }
            Iterator it2 = vhVar.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next3 = it2.next();
                if (((ek2) next3).a()) {
                    obj = next3;
                    break;
                }
            }
            return (ek2) obj;
        }
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException(("Unsupported direction: '" + i + "'.").toString());
            }
            Iterator it3 = vhVar2.iterator();
            while (it3.hasNext()) {
                ((ek2) it3.next()).getClass();
            }
            Iterator it4 = vhVar.iterator();
            while (it4.hasNext()) {
                ((ek2) it4.next()).getClass();
            }
            return null;
        }
        Iterator it5 = vhVar2.iterator();
        while (true) {
            if (!it5.hasNext()) {
                next2 = null;
                break;
            }
            next2 = it5.next();
            if (((ek2) next2).a()) {
                break;
            }
        }
        ek2 ek2Var2 = (ek2) next2;
        if (ek2Var2 != null) {
            return ek2Var2;
        }
        Iterator it6 = vhVar.iterator();
        while (true) {
            if (!it6.hasNext()) {
                break;
            }
            Object next4 = it6.next();
            if (((ek2) next4).a()) {
                obj = next4;
                break;
            }
        }
        return (ek2) obj;
    }
}
