package defpackage;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hg5 {
    public final String a;
    public final boolean b;
    public final z45 c;
    public final BitSet d;
    public final BitSet e;
    public final di f;
    public final di g;
    public final /* synthetic */ gn4 h;

    public hg5(gn4 gn4Var, String str, z45 z45Var, BitSet bitSet, BitSet bitSet2, di diVar, di diVar2) {
        this.h = gn4Var;
        this.a = str;
        this.d = bitSet;
        this.e = bitSet2;
        this.f = diVar;
        this.g = new di(0);
        for (Integer num : (ai) diVar2.keySet()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add((Long) diVar2.get(num));
            this.g.put(num, arrayList);
        }
        this.b = false;
        this.c = z45Var;
    }

    public final void a(m1 m1Var) {
        int iD = m1Var.d();
        if (((Boolean) m1Var.c) != null) {
            this.e.set(iD, true);
        }
        Boolean bool = (Boolean) m1Var.d;
        if (bool != null) {
            this.d.set(iD, bool.booleanValue());
        }
        if (((Long) m1Var.e) != null) {
            Integer numValueOf = Integer.valueOf(iD);
            di diVar = this.f;
            Long l = (Long) diVar.get(numValueOf);
            long jLongValue = ((Long) m1Var.e).longValue() / 1000;
            if (l == null || jLongValue > l.longValue()) {
                diVar.put(numValueOf, Long.valueOf(jLongValue));
            }
        }
        if (((Long) m1Var.f) != null) {
            Integer numValueOf2 = Integer.valueOf(iD);
            di diVar2 = this.g;
            List arrayList = (List) diVar2.get(numValueOf2);
            if (arrayList == null) {
                arrayList = new ArrayList();
                diVar2.put(numValueOf2, arrayList);
            }
            if (m1Var.e()) {
                arrayList.clear();
            }
            pq4.a();
            r45 r45Var = (r45) this.h.a;
            ds4 ds4Var = r45Var.d;
            d05 d05Var = e05.F0;
            String str = this.a;
            if (ds4Var.G(str, d05Var) && m1Var.f()) {
                arrayList.clear();
            }
            pq4.a();
            boolean zG = r45Var.d.G(str, d05Var);
            Long l2 = (Long) m1Var.f;
            if (!zG) {
                arrayList.add(Long.valueOf(l2.longValue() / 1000));
                return;
            }
            Long lValueOf = Long.valueOf(l2.longValue() / 1000);
            if (arrayList.contains(lValueOf)) {
                return;
            }
            arrayList.add(lValueOf);
        }
    }

    public final c35 b(int i) {
        ArrayList arrayList;
        List list;
        a35 a35VarA = c35.A();
        a35VarA.b();
        ((c35) a35VarA.o).B(i);
        a35VarA.b();
        ((c35) a35VarA.o).E(this.b);
        z45 z45Var = this.c;
        if (z45Var != null) {
            a35VarA.b();
            ((c35) a35VarA.o).D(z45Var);
        }
        y45 y45VarB = z45.B();
        ArrayList arrayListB0 = ub5.b0(this.d);
        y45VarB.b();
        ((z45) y45VarB.o).F(arrayListB0);
        ArrayList arrayListB02 = ub5.b0(this.e);
        y45VarB.b();
        ((z45) y45VarB.o).D(arrayListB02);
        di diVar = this.f;
        if (diVar == null) {
            arrayList = null;
        } else {
            ArrayList arrayList2 = new ArrayList(diVar.p);
            for (Integer num : (ai) diVar.keySet()) {
                int iIntValue = num.intValue();
                Long l = (Long) diVar.get(num);
                if (l != null) {
                    q35 q35VarX = r35.x();
                    q35VarX.b();
                    ((r35) q35VarX.o).y(iIntValue);
                    long jLongValue = l.longValue();
                    q35VarX.b();
                    ((r35) q35VarX.o).z(jLongValue);
                    arrayList2.add((r35) q35VarX.d());
                }
            }
            arrayList = arrayList2;
        }
        if (arrayList != null) {
            y45VarB.b();
            ((z45) y45VarB.o).H(arrayList);
        }
        di diVar2 = this.g;
        if (diVar2 == null) {
            list = Collections.EMPTY_LIST;
        } else {
            ArrayList arrayList3 = new ArrayList(diVar2.p);
            for (Integer num2 : (ai) diVar2.keySet()) {
                b55 b55VarY = c55.y();
                int iIntValue2 = num2.intValue();
                b55VarY.b();
                ((c55) b55VarY.o).z(iIntValue2);
                List list2 = (List) diVar2.get(num2);
                if (list2 != null) {
                    Collections.sort(list2);
                    b55VarY.b();
                    ((c55) b55VarY.o).A(list2);
                }
                arrayList3.add((c55) b55VarY.d());
            }
            list = arrayList3;
        }
        y45VarB.b();
        ((z45) y45VarB.o).J(list);
        a35VarA.b();
        ((c35) a35VarA.o).C((z45) y45VarB.d());
        return (c35) a35VarA.d();
    }

    public hg5(gn4 gn4Var, String str) {
        this.h = gn4Var;
        this.a = str;
        this.b = true;
        this.d = new BitSet();
        this.e = new BitSet();
        this.f = new di(0);
        this.g = new di(0);
    }
}
