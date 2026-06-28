package defpackage;

import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xn2 extends g34 {
    public static final wn2 c = new wn2(1);
    public final pi1 a;
    public final int b;

    public xn2(pi1 pi1Var, int i) {
        this.a = pi1Var;
        this.b = i;
    }

    @Override // defpackage.g34
    public final Object b(ww1 ww1Var) throws IOException {
        Object arrayList;
        Serializable arrayList2;
        int iS0 = ww1Var.s0();
        int iF = di0.F(iS0);
        if (iF == 0) {
            ww1Var.b();
            arrayList = new ArrayList();
        } else if (iF != 2) {
            arrayList = null;
        } else {
            ww1Var.j();
            arrayList = new x32(true);
        }
        if (arrayList == null) {
            return d(iS0, ww1Var);
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            if (ww1Var.L()) {
                String strJ0 = arrayList instanceof Map ? ww1Var.j0() : null;
                int iS02 = ww1Var.s0();
                int iF2 = di0.F(iS02);
                if (iF2 == 0) {
                    ww1Var.b();
                    arrayList2 = new ArrayList();
                } else if (iF2 != 2) {
                    arrayList2 = null;
                } else {
                    ww1Var.j();
                    arrayList2 = new x32(true);
                }
                boolean z = arrayList2 != null;
                if (arrayList2 == null) {
                    arrayList2 = d(iS02, ww1Var);
                }
                if (arrayList instanceof List) {
                    ((List) arrayList).add(arrayList2);
                } else {
                    ((Map) arrayList).put(strJ0, arrayList2);
                }
                if (z) {
                    arrayDeque.addLast(arrayList);
                    arrayList = arrayList2;
                }
            } else {
                if (arrayList instanceof List) {
                    ww1Var.A();
                } else {
                    ww1Var.B();
                }
                if (arrayDeque.isEmpty()) {
                    return arrayList;
                }
                arrayList = arrayDeque.removeLast();
            }
        }
    }

    @Override // defpackage.g34
    public final void c(bx1 bx1Var, Object obj) throws IOException {
        if (obj == null) {
            bx1Var.L();
            return;
        }
        Class<?> cls = obj.getClass();
        pi1 pi1Var = this.a;
        pi1Var.getClass();
        g34 g34VarB = pi1Var.b(new q44(cls));
        if (!(g34VarB instanceof xn2)) {
            g34VarB.c(bx1Var, obj);
        } else {
            bx1Var.r();
            bx1Var.B();
        }
    }

    public final Serializable d(int i, ww1 ww1Var) {
        int iF = di0.F(i);
        if (iF == 5) {
            return ww1Var.q0();
        }
        if (iF == 6) {
            return xw1.c(this.b, ww1Var);
        }
        if (iF == 7) {
            return Boolean.valueOf(ww1Var.V());
        }
        if (iF == 8) {
            ww1Var.o0();
            return null;
        }
        k21.n("Unexpected token: ".concat(xw1.A(i)));
        return null;
    }
}
