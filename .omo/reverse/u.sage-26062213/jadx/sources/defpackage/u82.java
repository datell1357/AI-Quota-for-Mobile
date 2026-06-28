package defpackage;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import u.sage.MainActivity;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class u82 implements df1 {
    public final /* synthetic */ int n = 0;
    public final /* synthetic */ pg2 o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ Object r;
    public final /* synthetic */ Object s;
    public final /* synthetic */ Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ Object f355u;

    public /* synthetic */ u82(n8 n8Var, m10 m10Var, qi0 qi0Var, wh1 wh1Var, s92 s92Var, pg2 pg2Var, y84 y84Var) {
        this.p = wh1Var;
        this.q = s92Var;
        this.r = qi0Var;
        this.s = m10Var;
        this.t = n8Var;
        this.f355u = y84Var;
        this.o = pg2Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.n;
        t64 t64Var = t64.a;
        Object obj3 = this.f355u;
        Object obj4 = this.t;
        Object obj5 = this.s;
        Object obj6 = this.r;
        Object obj7 = this.q;
        Object obj8 = this.p;
        switch (i) {
            case 0:
                final ArrayList arrayList = (ArrayList) obj8;
                final tr3 tr3Var = (tr3) obj7;
                final List list = (List) obj6;
                final MainActivity mainActivity = (MainActivity) obj5;
                final xi2 xi2Var = (xi2) obj4;
                final String str = (String) obj3;
                ag1 ag1Var = (ag1) obj;
                int iIntValue = ((Integer) obj2).intValue();
                int i2 = MainActivity.C;
                if (!ag1Var.N(iIntValue & 1, (iIntValue & 3) != 2)) {
                    ag1Var.Q();
                } else {
                    long j = ((ua2) ag1Var.j(wa2.a)).a.F;
                    final pg2 pg2Var = this.o;
                    zj2.a(null, j, 0L, null, qj0.U(-1402807588, new ff1() { // from class: w82
                        @Override // defpackage.ff1
                        public final Object d(Object obj9, Object obj10, Object obj11) {
                            Object objPrevious;
                            qi2 qi2Var;
                            boolean z;
                            db3 db3Var = (db3) obj9;
                            ag1 ag1Var2 = (ag1) obj10;
                            int iIntValue2 = ((Integer) obj11).intValue();
                            int i3 = MainActivity.C;
                            db3Var.getClass();
                            if ((iIntValue2 & 6) == 0) {
                                iIntValue2 |= ag1Var2.f(db3Var) ? 4 : 2;
                            }
                            int i4 = iIntValue2;
                            if (ag1Var2.N(i4 & 1, (i4 & 19) != 18)) {
                                tr3 tr3Var2 = tr3Var;
                                boolean zF = ag1Var2.f((List) tr3Var2.getValue());
                                Object objK = ag1Var2.K();
                                ArrayList arrayList2 = arrayList;
                                bx3 bx3Var = rb0.a;
                                if (zF || objK == bx3Var) {
                                    List list2 = (List) tr3Var2.getValue();
                                    ListIterator listIterator = list2.listIterator(list2.size());
                                    loop1: while (true) {
                                        objK = null;
                                        if (!listIterator.hasPrevious()) {
                                            objPrevious = null;
                                            break;
                                        }
                                        objPrevious = listIterator.previous();
                                        yh2 yh2Var = (yh2) objPrevious;
                                        if (!arrayList2.isEmpty()) {
                                            int size = arrayList2.size();
                                            int i5 = 0;
                                            while (i5 < size) {
                                                Object obj12 = arrayList2.get(i5);
                                                i5++;
                                                if (nt1.g(((gx) obj12).a, (String) yh2Var.o.o.e)) {
                                                    break loop1;
                                                }
                                            }
                                        }
                                    }
                                    yh2 yh2Var2 = (yh2) objPrevious;
                                    if (yh2Var2 != null && (qi2Var = yh2Var2.o) != null) {
                                        objK = (String) qi2Var.o.e;
                                    }
                                    ag1Var2.g0(objK);
                                }
                                String str2 = (String) objK;
                                int size2 = arrayList2.size();
                                int i6 = 0;
                                while (i6 < size2) {
                                    int i7 = i6 + 1;
                                    final gx gxVar = (gx) arrayList2.get(i6);
                                    final boolean zG = nt1.g(gxVar.a, str2);
                                    is3 is3Var = wa2.a;
                                    long j2 = ((ua2) ag1Var2.j(is3Var)).a.q;
                                    ArrayList arrayList3 = arrayList2;
                                    long j3 = ((ua2) ag1Var2.j(is3Var)).a.q;
                                    long j4 = ((ua2) ag1Var2.j(is3Var)).a.H;
                                    is3 is3Var2 = gy3.c;
                                    db3 db3Var2 = db3Var;
                                    String str3 = str2;
                                    long j5 = ((n50) ag1Var2.j(is3Var2)).P;
                                    long j6 = ((n50) ag1Var2.j(is3Var2)).P;
                                    long j7 = t70.f;
                                    rj2 rj2VarP = fl4.p(((ua2) ag1Var2.j(is3Var)).a);
                                    if (j2 == 16) {
                                        j2 = rj2VarP.a;
                                    }
                                    long j8 = j2;
                                    long j9 = j3 != 16 ? j3 : rj2VarP.b;
                                    if (j4 == 16) {
                                        j4 = rj2VarP.c;
                                    }
                                    long j10 = j4;
                                    long j11 = j5 != 16 ? j5 : rj2VarP.d;
                                    if (j6 == 16) {
                                        j6 = rj2VarP.e;
                                    }
                                    rj2 rj2Var = new rj2(j8, j9, j10, j11, j6, j7 != 16 ? j7 : rj2VarP.f, j7 != 16 ? j7 : rj2VarP.g);
                                    boolean zF2 = ag1Var2.f(gxVar);
                                    final List list3 = list;
                                    boolean zH = zF2 | ag1Var2.h(list3);
                                    final MainActivity mainActivity2 = mainActivity;
                                    boolean zH2 = zH | ag1Var2.h(mainActivity2);
                                    final pg2 pg2Var2 = pg2Var;
                                    boolean zF3 = zH2 | ag1Var2.f(pg2Var2) | ag1Var2.g(zG);
                                    final xi2 xi2Var2 = xi2Var;
                                    boolean zH3 = zF3 | ag1Var2.h(xi2Var2);
                                    final String str4 = str;
                                    boolean zF4 = zH3 | ag1Var2.f(str4);
                                    Object objK2 = ag1Var2.K();
                                    if (zF4 || objK2 == bx3Var) {
                                        objK2 = new ne1() { // from class: b92
                                            @Override // defpackage.ne1
                                            public final Object a() {
                                                String str5;
                                                Object next;
                                                qi2 qi2Var2;
                                                int i8 = MainActivity.C;
                                                ra3 ra3Var = ez3.a;
                                                String str6 = gxVar.a;
                                                ra3Var.getClass();
                                                ra3.c(new Object[0]);
                                                Iterator it = list3.iterator();
                                                while (true) {
                                                    str5 = null;
                                                    if (!it.hasNext()) {
                                                        next = null;
                                                        break;
                                                    }
                                                    next = it.next();
                                                    if (mt1.i((y84) next).equals(str6)) {
                                                        break;
                                                    }
                                                }
                                                y84 y84Var = (y84) next;
                                                MainActivity mainActivity3 = mainActivity2;
                                                if (y84Var != null) {
                                                    n8 n8VarI = mainActivity3.i();
                                                    ra3 ra3Var2 = ez3.a;
                                                    y84Var.name();
                                                    ra3Var2.getClass();
                                                    ra3.c(new Object[0]);
                                                    Bundle bundle = new Bundle();
                                                    bundle.putString("service_type", y84Var.q);
                                                    n8VarI.a("bottom_nav_clicked", bundle);
                                                    n8VarI.b().a("bottom_nav_clicked", bundle);
                                                }
                                                if (!nt1.g(mainActivity3.B, str6)) {
                                                    n8 n8VarI2 = mainActivity3.i();
                                                    String str7 = mainActivity3.B;
                                                    str6.getClass();
                                                    if (nt1.g(str7, str6)) {
                                                        ez3.a.getClass();
                                                        ra3.c(new Object[0]);
                                                    } else {
                                                        ez3.a.getClass();
                                                        ra3.c(new Object[0]);
                                                        Bundle bundle2 = new Bundle();
                                                        if (str7 != null) {
                                                            bundle2.putString("from_tab", str7);
                                                        }
                                                        bundle2.putString("to_tab", str6);
                                                        n8VarI2.a("tab_switched", bundle2);
                                                        n8VarI2.b().a("tab_switched", bundle2);
                                                    }
                                                    mainActivity3.B = str6;
                                                }
                                                yh2 yh2Var3 = (yh2) pg2Var2.getValue();
                                                if (yh2Var3 != null && (qi2Var2 = yh2Var3.o) != null) {
                                                    str5 = (String) qi2Var2.o.e;
                                                }
                                                boolean z2 = zG;
                                                xi2 xi2Var3 = xi2Var2;
                                                if (!z2 || nt1.g(str5, str6)) {
                                                    xi2Var3.a(str6, new ao0(str4, 5));
                                                } else {
                                                    xi2.d(xi2Var3, str6);
                                                }
                                                return t64.a;
                                            }
                                        };
                                        z = zG;
                                        ag1Var2.g0(objK2);
                                    } else {
                                        z = zG;
                                    }
                                    final int i8 = 0;
                                    final int i9 = 1;
                                    db3Var = db3Var2;
                                    zj2.b(db3Var, z, (ne1) objK2, qj0.U(2096879784, new df1() { // from class: c92
                                        @Override // defpackage.df1
                                        public final Object f(Object obj13, Object obj14) {
                                            int i10 = i8;
                                            t64 t64Var2 = t64.a;
                                            gx gxVar2 = gxVar;
                                            switch (i10) {
                                                case 0:
                                                    ag1 ag1Var3 = (ag1) obj13;
                                                    int iIntValue3 = ((Integer) obj14).intValue();
                                                    int i11 = MainActivity.C;
                                                    if (!ag1Var3.N(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                                                        ag1Var3.Q();
                                                    } else {
                                                        qn1.b(kt4.W(gxVar2.c, ag1Var3), gxVar2.b, null, 0L, ag1Var3, 8, 12);
                                                    }
                                                    break;
                                                default:
                                                    ag1 ag1Var4 = (ag1) obj13;
                                                    int iIntValue4 = ((Integer) obj14).intValue();
                                                    int i12 = MainActivity.C;
                                                    if (!ag1Var4.N(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                                                        ag1Var4.Q();
                                                    } else {
                                                        lx3.b(gxVar2.b, null, 0L, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ag1Var4, 0, 0, 262142);
                                                    }
                                                    break;
                                            }
                                            return t64Var2;
                                        }
                                    }, ag1Var2), null, false, qj0.U(1093866155, new df1() { // from class: c92
                                        @Override // defpackage.df1
                                        public final Object f(Object obj13, Object obj14) {
                                            int i10 = i9;
                                            t64 t64Var2 = t64.a;
                                            gx gxVar2 = gxVar;
                                            switch (i10) {
                                                case 0:
                                                    ag1 ag1Var3 = (ag1) obj13;
                                                    int iIntValue3 = ((Integer) obj14).intValue();
                                                    int i11 = MainActivity.C;
                                                    if (!ag1Var3.N(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                                                        ag1Var3.Q();
                                                    } else {
                                                        qn1.b(kt4.W(gxVar2.c, ag1Var3), gxVar2.b, null, 0L, ag1Var3, 8, 12);
                                                    }
                                                    break;
                                                default:
                                                    ag1 ag1Var4 = (ag1) obj13;
                                                    int iIntValue4 = ((Integer) obj14).intValue();
                                                    int i12 = MainActivity.C;
                                                    if (!ag1Var4.N(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                                                        ag1Var4.Q();
                                                    } else {
                                                        lx3.b(gxVar2.b, null, 0L, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ag1Var4, 0, 0, 262142);
                                                    }
                                                    break;
                                            }
                                            return t64Var2;
                                        }
                                    }, ag1Var2), false, rj2Var, ag1Var2, (i4 & 14) | 1575936);
                                    arrayList2 = arrayList3;
                                    size2 = size2;
                                    i6 = i7;
                                    bx3Var = bx3Var;
                                    str2 = str3;
                                }
                            } else {
                                ag1Var2.Q();
                            }
                            return t64.a;
                        }
                    }, ag1Var), ag1Var, 196608);
                }
                break;
            default:
                wh1 wh1Var = (wh1) obj8;
                s92 s92Var = (s92) obj7;
                qi0 qi0Var = (qi0) obj6;
                m10 m10Var = (m10) obj5;
                n8 n8Var = (n8) obj4;
                y84 y84Var = (y84) obj3;
                ag1 ag1Var2 = (ag1) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (!ag1Var2.N(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    ag1Var2.Q();
                } else {
                    boolean zBooleanValue = ((Boolean) this.o.getValue()).booleanValue();
                    boolean zH = ag1Var2.h(wh1Var) | ag1Var2.h(s92Var) | ag1Var2.h(qi0Var) | ag1Var2.h(m10Var) | ag1Var2.h(n8Var) | ag1Var2.d(y84Var.ordinal());
                    Object objK = ag1Var2.K();
                    if (zH || objK == rb0.a) {
                        sx sxVar = new sx(wh1Var, s92Var, qi0Var, n8Var, y84Var, m10Var, 1);
                        ag1Var2.g0(sxVar);
                        objK = sxVar;
                    }
                    jv3.a(zBooleanValue, (pe1) objK, null, false, zf5.u(((ua2) ag1Var2.j(wa2.a)).a.F, ag1Var2), ag1Var2, 0);
                }
                break;
        }
        return t64Var;
    }

    public /* synthetic */ u82(ArrayList arrayList, pg2 pg2Var, List list, MainActivity mainActivity, pg2 pg2Var2, xi2 xi2Var, String str) {
        this.p = arrayList;
        this.q = pg2Var;
        this.r = list;
        this.s = mainActivity;
        this.o = pg2Var2;
        this.t = xi2Var;
        this.f355u = str;
    }
}
