package defpackage;

import java.io.IOException;
import java.util.List;
import org.xmlpull.v1.XmlPullParserException;
import u.sage.MainActivity;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class bt0 implements df1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;

    public /* synthetic */ bt0(y84 y84Var, w3 w3Var, ne1 ne1Var, int i) {
        this.n = 6;
        this.p = y84Var;
        this.q = w3Var;
        this.o = ne1Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) throws XmlPullParserException, IOException {
        int i = this.n;
        t64 t64Var = t64.a;
        Object obj3 = this.q;
        Object obj4 = this.p;
        Object obj5 = this.o;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                on4.b((ne1) obj5, (ne1) obj4, (ne1) obj3, (ag1) obj, qj0.f0(1));
                break;
            case 1:
                MainActivity mainActivity = (MainActivity) obj5;
                String str = (String) obj4;
                tr3 tr3Var = (tr3) obj3;
                ag1 ag1Var = (ag1) obj;
                int iIntValue = ((Integer) obj2).intValue();
                int i2 = MainActivity.C;
                if (!ag1Var.N(iIntValue & 1, (iIntValue & 3) != 2)) {
                    ag1Var.Q();
                } else if (((List) tr3Var.getValue()) == null) {
                    ag1Var.W(2136701104);
                    ag1Var.p(false);
                } else {
                    ag1Var.W(2135722806);
                    List list = (List) tr3Var.getValue();
                    list.getClass();
                    String strI = mt1.i((y84) o70.h0(list));
                    List list2 = (List) tr3Var.getValue();
                    list2.getClass();
                    mainActivity.g(strI, list2, str, ag1Var, 0);
                    ag1Var.p(false);
                }
                break;
            case 2:
                ((Integer) obj2).getClass();
                qj0.j((yh2) obj5, (fc3) obj4, (ka0) obj3, (ag1) obj, qj0.f0(385));
                break;
            case 3:
                float fFloatValue = ((Float) obj).floatValue();
                ((Float) obj2).getClass();
                ca.y((qi0) obj5, null, null, new ej2(fFloatValue, (pg3) obj4, (yh2) obj3, (dh0) null), 3);
                break;
            case 4:
                t33 t33Var = (t33) obj5;
                dg3 dg3Var = (dg3) obj4;
                float fFloatValue2 = ((Float) obj).floatValue();
                ((Float) obj2).getClass();
                long jI = dg3Var.i(dg3Var.e(fFloatValue2 - t33Var.n));
                dg3 dg3Var2 = ((bg3) obj3).a;
                t33Var.n += dg3Var.e(dg3Var.h(dg3Var2.d(dg3Var2.k, jI, 1)));
                break;
            case 5:
                ((Integer) obj2).getClass();
                qj0.m((y84) obj5, (pe1) obj4, (nd2) obj3, (ag1) obj, qj0.f0(1));
                break;
            case 6:
                ((Integer) obj2).getClass();
                qj0.b((y84) obj4, (w3) obj3, (ne1) obj5, (ag1) obj, qj0.f0(1));
                break;
            case 7:
                ((Integer) obj2).getClass();
                k30.e((io3) obj5, (nd2) obj4, (ff1) obj3, (ag1) obj, qj0.f0(7));
                break;
            default:
                y70 y70Var = (y70) obj5;
                e54 e54Var = (e54) obj4;
                ka0 ka0Var = (ka0) obj3;
                ag1 ag1Var2 = (ag1) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (!ag1Var2.N(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    ag1Var2.Q();
                } else {
                    wa2.b(y70Var, null, e54Var, ka0Var, ag1Var2, 0);
                }
                break;
        }
        return t64Var;
    }

    public /* synthetic */ bt0(Object obj, Object obj2, Object obj3, int i) {
        this.n = i;
        this.o = obj;
        this.p = obj2;
        this.q = obj3;
    }

    public /* synthetic */ bt0(Object obj, Object obj2, Object obj3, int i, int i2) {
        this.n = i2;
        this.o = obj;
        this.p = obj2;
        this.q = obj3;
    }
}
