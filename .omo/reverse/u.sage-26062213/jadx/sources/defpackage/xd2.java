package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xd2 {
    public final ArrayList a;

    public xd2(pa3 pa3Var, pa3 pa3Var2) throws Throwable {
        Throwable th;
        js2 js2VarA;
        js2 js2VarA2;
        ib2 ib2VarS = fl4.s(new ld(pa3Var.b, pa3Var.c), pa3Var);
        ib2 ib2VarS2 = fl4.s(new ld(pa3Var2.b, pa3Var2.c), pa3Var2);
        List list = ib2VarS.p;
        List list2 = ib2VarS2.p;
        list.getClass();
        list2.getClass();
        a42 a42VarP = tv4.p();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (((sz2) list.get(i)).b instanceof u41) {
                a42VarP.add(list.get(i));
            }
        }
        a42 a42VarL = tv4.l(a42VarP);
        a42 a42VarP2 = tv4.p();
        int size2 = list2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            if (((sz2) list2.get(i2)).b instanceof u41) {
                a42VarP2.add(list2.get(i2));
            }
        }
        a42 a42VarL2 = tv4.l(a42VarP2);
        js2 js2Var = a42VarL.a() > a42VarL2.a() ? new js2(c75.y(a42VarL2, a42VarL), a42VarL2) : new js2(a42VarL, c75.y(a42VarL, a42VarL2));
        List list3 = (List) js2Var.n;
        List list4 = (List) js2Var.o;
        a42 a42VarP3 = tv4.p();
        int size3 = list3.size();
        for (int i3 = 0; i3 < size3 && i3 != list4.size(); i3++) {
            a42VarP3.add(new js2(Float.valueOf(((sz2) list3.get(i3)).a), Float.valueOf(((sz2) list4.get(i3)).a)));
        }
        js2[] js2VarArr = (js2[]) tv4.l(a42VarP3).toArray(new js2[0]);
        zv0 zv0Var = new zv0((js2[]) Arrays.copyOf(js2VarArr, js2VarArr.length));
        qf2 qf2Var = zv0Var.a;
        qf2 qf2Var2 = zv0Var.b;
        float fZ = se0.z(qf2Var, qf2Var2, 0.0f);
        ArrayList arrayList = ib2VarS2.o;
        if (0.0f > fZ || fZ > 1.0f) {
            k21.f("Cutting point is expected to be between 0 and 1");
            throw null;
        }
        if (fZ < 1.0E-4f) {
            th = null;
        } else {
            int size4 = arrayList.size();
            int i4 = 0;
            int i5 = 0;
            while (true) {
                if (i5 >= size4) {
                    i4 = -1;
                    break;
                }
                Object obj = arrayList.get(i5);
                i5++;
                hb2 hb2Var = (hb2) obj;
                float f = hb2Var.c;
                if (fZ <= hb2Var.d && f <= fZ) {
                    break;
                } else {
                    i4++;
                }
            }
            js2 js2VarA3 = ((hb2) arrayList.get(i4)).a(fZ);
            hb2 hb2Var2 = (hb2) js2VarA3.n;
            ArrayList arrayListH = tv4.H(((hb2) js2VarA3.o).a);
            int size5 = arrayList.size();
            for (int i6 = 1; i6 < size5; i6++) {
                arrayListH.add(((hb2) arrayList.get((i6 + i4) % arrayList.size())).a);
            }
            th = null;
            arrayListH.add(hb2Var2.a);
            qf2 qf2Var3 = new qf2(arrayList.size() + 2);
            int size6 = arrayList.size() + 2;
            int i7 = 0;
            while (i7 < size6) {
                qf2Var3.a(i7 == 0 ? 0.0f : i7 == arrayList.size() + 1 ? 1.0f : k94.d(((hb2) arrayList.get(((i4 + i7) - 1) % arrayList.size())).d - fZ, 1.0f));
                i7++;
            }
            a42 a42VarP4 = tv4.p();
            int size7 = list2.size();
            for (int i8 = 0; i8 < size7; i8++) {
                a42VarP4.add(new sz2(k94.d(((sz2) list2.get(i8)).a - fZ, 1.0f), ((sz2) list2.get(i8)).b));
            }
            ib2VarS2 = new ib2(ib2VarS2.n, tv4.l(a42VarP4), arrayListH, qf2Var3);
        }
        ArrayList arrayList2 = new ArrayList();
        hb2 hb2Var3 = (hb2) o70.j0(0, ib2VarS);
        hb2 hb2Var4 = (hb2) o70.j0(0, ib2VarS2);
        int i9 = 1;
        int i10 = 1;
        while (hb2Var3 != null && hb2Var4 != null) {
            float f2 = i10 == ib2VarS.o.size() ? 1.0f : hb2Var3.d;
            float fZ2 = i9 == ib2VarS2.o.size() ? 1.0f : se0.z(qf2Var2, qf2Var, k94.d(hb2Var4.d + fZ, 1.0f));
            float fMin = Math.min(f2, fZ2);
            float f3 = 1.0E-6f + fMin;
            if (f2 > f3) {
                js2VarA = hb2Var3.a(fMin);
            } else {
                js2 js2Var2 = new js2(hb2Var3, o70.j0(i10, ib2VarS));
                i10++;
                js2VarA = js2Var2;
            }
            hb2 hb2Var5 = (hb2) js2VarA.n;
            hb2Var3 = (hb2) js2VarA.o;
            if (fZ2 > f3) {
                js2VarA2 = hb2Var4.a(k94.d(se0.z(qf2Var, qf2Var2, fMin) - fZ, 1.0f));
            } else {
                js2 js2Var3 = new js2(hb2Var4, o70.j0(i9, ib2VarS2));
                i9++;
                js2VarA2 = js2Var3;
            }
            hb2 hb2Var6 = (hb2) js2VarA2.n;
            hb2Var4 = (hb2) js2VarA2.o;
            arrayList2.add(new js2(hb2Var5.a, hb2Var6.a));
        }
        if (hb2Var3 != null || hb2Var4 != null) {
            k21.f("Expected both Polygon's Cubic to be fully matched");
            throw th;
        }
        this.a = arrayList2;
    }
}
