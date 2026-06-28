package defpackage;

import android.os.Bundle;
import android.util.Log;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ei2 {
    public final pr3 a;
    public final wr3 b;
    public final wr3 c;
    public boolean d;
    public final b23 e;
    public final b23 f;
    public final lk2 g;
    public final /* synthetic */ xi2 h;

    public ei2(xi2 xi2Var, lk2 lk2Var) {
        lk2Var.getClass();
        this.h = xi2Var;
        this.a = new pr3(2);
        wr3 wr3VarA = xr3.a(g01.n);
        this.b = wr3VarA;
        wr3 wr3VarA2 = xr3.a(k01.n);
        this.c = wr3VarA2;
        this.e = new b23(wr3VarA);
        this.f = new b23(wr3VarA2);
        this.g = lk2Var;
    }

    public final void a(yh2 yh2Var) {
        yh2Var.getClass();
        synchronized (this.a) {
            wr3 wr3Var = this.b;
            wr3Var.i(null, o70.r0((Collection) wr3Var.getValue(), yh2Var));
        }
    }

    public final yh2 b(qi2 qi2Var, Bundle bundle) {
        ii2 ii2Var = this.h.b;
        ii2Var.getClass();
        return b21.v(ii2Var.a.c, qi2Var, bundle, ii2Var.j(), ii2Var.p);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00aa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(defpackage.yh2 r14) {
        /*
            Method dump skipped, instruction units count: 218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ei2.c(yh2):void");
    }

    public final void d(yh2 yh2Var, boolean z) {
        yh2Var.getClass();
        ii2 ii2Var = this.h.b;
        h4 h4Var = new h4(this, yh2Var, z);
        ii2Var.getClass();
        lk2 lk2VarB = ii2Var.t.b(yh2Var.o.n);
        ii2Var.x.put(yh2Var, Boolean.valueOf(z));
        if (!lk2VarB.equals(this.g)) {
            Object obj = ii2Var.f140u.get(lk2VarB);
            obj.getClass();
            ((ei2) obj).d(yh2Var, z);
            return;
        }
        gi2 gi2Var = ii2Var.w;
        if (gi2Var != null) {
            gi2Var.k(yh2Var);
            h4Var.a();
            return;
        }
        vh vhVar = ii2Var.f;
        int iIndexOf = vhVar.indexOf(yh2Var);
        if (iIndexOf < 0) {
            Log.i("NavController", "Ignoring pop of " + yh2Var + " as it was not found on the current back stack");
            return;
        }
        int i = iIndexOf + 1;
        if (i != vhVar.p) {
            ii2Var.o(((yh2) vhVar.get(i)).o.o.a, true, false);
        }
        ii2.r(ii2Var, yh2Var);
        h4Var.a();
        ii2Var.b.a();
        ii2Var.b();
    }

    public final void e(yh2 yh2Var, boolean z) {
        Object objPrevious;
        yh2Var.getClass();
        wr3 wr3Var = this.c;
        Iterable iterable = (Iterable) wr3Var.getValue();
        boolean z2 = iterable instanceof Collection;
        b23 b23Var = this.e;
        if (!z2 || !((Collection) iterable).isEmpty()) {
            Iterator it = iterable.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (((yh2) it.next()) == yh2Var) {
                    Iterable iterable2 = (Iterable) b23Var.n.getValue();
                    if ((iterable2 instanceof Collection) && ((Collection) iterable2).isEmpty()) {
                        return;
                    }
                    Iterator it2 = iterable2.iterator();
                    while (it2.hasNext()) {
                        if (((yh2) it2.next()) == yh2Var) {
                        }
                    }
                    return;
                }
            }
        }
        wr3Var.i(null, is0.P((Set) wr3Var.getValue(), yh2Var));
        wr3 wr3Var2 = b23Var.n;
        wr3 wr3Var3 = b23Var.n;
        List list = (List) wr3Var2.getValue();
        ListIterator listIterator = list.listIterator(list.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                objPrevious = null;
                break;
            }
            objPrevious = listIterator.previous();
            yh2 yh2Var2 = (yh2) objPrevious;
            if (!nt1.g(yh2Var2, yh2Var) && ((List) wr3Var3.getValue()).lastIndexOf(yh2Var2) < ((List) wr3Var3.getValue()).lastIndexOf(yh2Var)) {
                break;
            }
        }
        yh2 yh2Var3 = (yh2) objPrevious;
        if (yh2Var3 != null) {
            wr3Var.i(null, is0.P((Set) wr3Var.getValue(), yh2Var3));
        }
        d(yh2Var, z);
    }

    public final void f(yh2 yh2Var) {
        yh2Var.getClass();
        ii2 ii2Var = this.h.b;
        ii2Var.getClass();
        lk2 lk2VarB = ii2Var.t.b(yh2Var.o.n);
        if (!lk2VarB.equals(this.g)) {
            Object obj = ii2Var.f140u.get(lk2VarB);
            if (obj != null) {
                ((ei2) obj).f(yh2Var);
                return;
            } else {
                p61.e(xw1.s(new StringBuilder("NavigatorBackStack for "), yh2Var.o.n, " should already be created"));
                return;
            }
        }
        pe1 pe1Var = ii2Var.v;
        if (pe1Var != null) {
            pe1Var.k(yh2Var);
            a(yh2Var);
        } else {
            Log.i("NavController", "Ignoring add of destination " + yh2Var.o + " outside of the call to navigate(). ");
        }
    }
}
