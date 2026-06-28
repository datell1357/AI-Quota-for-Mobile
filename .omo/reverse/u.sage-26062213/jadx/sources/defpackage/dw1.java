package defpackage;

import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class dw1 extends g34 {
    public static final dw1 a = new dw1();

    private dw1() {
    }

    public static yv1 d(int i, ww1 ww1Var) {
        int iF = di0.F(i);
        if (iF == 5) {
            return new uw1(ww1Var.q0());
        }
        if (iF == 6) {
            return new uw1(new pz1(ww1Var.q0()));
        }
        if (iF == 7) {
            return new uw1(Boolean.valueOf(ww1Var.V()));
        }
        if (iF == 8) {
            ww1Var.o0();
            return lw1.n;
        }
        k21.n("Unexpected token: ".concat(xw1.A(i)));
        return null;
    }

    public static void e(bx1 bx1Var, yv1 yv1Var) throws IOException {
        if (yv1Var == null || (yv1Var instanceof lw1)) {
            bx1Var.L();
            return;
        }
        if (yv1Var instanceof uw1) {
            uw1 uw1Var = (uw1) yv1Var;
            Serializable serializable = uw1Var.n;
            if (serializable instanceof Number) {
                bx1Var.j0(uw1Var.c());
                return;
            } else if (serializable instanceof Boolean) {
                bx1Var.o0(serializable instanceof Boolean ? ((Boolean) serializable).booleanValue() : Boolean.parseBoolean(uw1Var.d()));
                return;
            } else {
                bx1Var.n0(uw1Var.d());
                return;
            }
        }
        boolean z = yv1Var instanceof lv1;
        if (z) {
            bx1Var.j();
            if (!z) {
                q73.k(yv1Var, "Not a JSON Array: ");
                return;
            }
            ArrayList arrayList = ((lv1) yv1Var).n;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                e(bx1Var, (yv1) obj);
            }
            bx1Var.A();
            return;
        }
        boolean z2 = yv1Var instanceof pw1;
        if (!z2) {
            mk0.g(yv1Var.getClass(), "Couldn't write ");
            return;
        }
        bx1Var.r();
        if (!z2) {
            q73.k(yv1Var, "Not a JSON Object: ");
            return;
        }
        Iterator it = ((v32) ((pw1) yv1Var).n.entrySet()).iterator();
        while (((u32) it).hasNext()) {
            w32 w32VarC = ((u32) it).c();
            bx1Var.F((String) w32VarC.getKey());
            e(bx1Var, (yv1) w32VarC.getValue());
        }
        bx1Var.B();
    }

    @Override // defpackage.g34
    public final Object b(ww1 ww1Var) throws IOException {
        yv1 lv1Var;
        yv1 lv1Var2;
        int iS0 = ww1Var.s0();
        int iF = di0.F(iS0);
        if (iF == 0) {
            ww1Var.b();
            lv1Var = new lv1();
        } else if (iF != 2) {
            lv1Var = null;
        } else {
            ww1Var.j();
            lv1Var = new pw1();
        }
        if (lv1Var == null) {
            return d(iS0, ww1Var);
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            if (ww1Var.L()) {
                String strJ0 = lv1Var instanceof pw1 ? ww1Var.j0() : null;
                int iS02 = ww1Var.s0();
                int iF2 = di0.F(iS02);
                if (iF2 == 0) {
                    ww1Var.b();
                    lv1Var2 = new lv1();
                } else if (iF2 != 2) {
                    lv1Var2 = null;
                } else {
                    ww1Var.j();
                    lv1Var2 = new pw1();
                }
                boolean z = lv1Var2 != null;
                if (lv1Var2 == null) {
                    lv1Var2 = d(iS02, ww1Var);
                }
                if (lv1Var instanceof lv1) {
                    ((lv1) lv1Var).n.add(lv1Var2);
                } else {
                    ((pw1) lv1Var).n.put(strJ0, lv1Var2);
                }
                if (z) {
                    arrayDeque.addLast(lv1Var);
                    lv1Var = lv1Var2;
                }
            } else {
                if (lv1Var instanceof lv1) {
                    ww1Var.A();
                } else {
                    ww1Var.B();
                }
                if (arrayDeque.isEmpty()) {
                    return lv1Var;
                }
                lv1Var = (yv1) arrayDeque.removeLast();
            }
        }
    }

    @Override // defpackage.g34
    public final /* bridge */ /* synthetic */ void c(bx1 bx1Var, Object obj) throws IOException {
        e(bx1Var, (yv1) obj);
    }
}
