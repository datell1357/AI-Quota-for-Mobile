package defpackage;

import android.graphics.Typeface;
import android.text.Spannable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q7 implements ff1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ gf1 p;

    public /* synthetic */ q7(Object obj, gf1 gf1Var, int i) {
        this.n = i;
        this.o = obj;
        this.p = gf1Var;
    }

    @Override // defpackage.ff1
    public final Object d(Object obj, Object obj2, Object obj3) {
        Typeface typeface;
        int i = this.n;
        t64 t64Var = t64.a;
        gf1 gf1Var = this.p;
        Object obj4 = this.o;
        switch (i) {
            case 0:
                hy1 hy1Var = (hy1) obj4;
                ka0 ka0Var = (ka0) gf1Var;
                ag1 ag1Var = (ag1) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                if (!ag1Var.N(iIntValue & 1, (iIntValue & 17) != 16)) {
                    ag1Var.Q();
                } else {
                    gg4.a(kc0.n.a(hy1Var), ka0Var, ag1Var, 8);
                }
                break;
            default:
                Spannable spannable = (Spannable) obj4;
                qb qbVar = (qb) gf1Var;
                iq3 iq3Var = (iq3) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                int iIntValue3 = ((Integer) obj3).intValue();
                ra1 ra1Var = iq3Var.f;
                pb1 pb1Var = iq3Var.c;
                if (pb1Var == null) {
                    pb1Var = pb1.p;
                }
                nb1 nb1Var = iq3Var.d;
                int i2 = nb1Var != null ? nb1Var.a : 0;
                ob1 ob1Var = iq3Var.e;
                int i3 = ob1Var != null ? ob1Var.a : 65535;
                rb rbVar = (rb) qbVar.o;
                c54 c54VarB = ((sa1) rbVar.e).b(ra1Var, pb1Var, i2, i3);
                if (c54VarB instanceof c54) {
                    Object obj5 = c54VarB.n;
                    obj5.getClass();
                    typeface = (Typeface) obj5;
                } else {
                    ui3 ui3Var = new ui3(c54VarB, rbVar.j);
                    rbVar.j = ui3Var;
                    Object obj6 = ui3Var.q;
                    obj6.getClass();
                    typeface = (Typeface) obj6;
                }
                spannable.setSpan(new ua1(1, typeface), iIntValue2, iIntValue3, 33);
                break;
        }
        return t64Var;
    }
}
