package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ib2 extends j1 {
    public final ld n;
    public final ArrayList o;
    public final List p;

    public ib2(ld ldVar, a42 a42Var, ArrayList arrayList, qf2 qf2Var) {
        if (qf2Var.b != arrayList.size() + 1) {
            k21.f("Outline progress size is expected to be the cubics size + 1");
            throw null;
        }
        int i = qf2Var.b;
        if (i == 0) {
            q73.l("FloatList is empty.");
            throw null;
        }
        float[] fArr = qf2Var.a;
        int i2 = 0;
        float fB = 0.0f;
        if (fArr[0] != 0.0f) {
            k21.f("First outline progress value is expected to be zero");
            throw null;
        }
        if (i == 0) {
            q73.l("FloatList is empty.");
            throw null;
        }
        if (fArr[i - 1] != 1.0f) {
            k21.f("Last outline progress value is expected to be one");
            throw null;
        }
        this.n = ldVar;
        this.p = a42Var;
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        while (i2 < size) {
            int i3 = i2 + 1;
            if (qf2Var.b(i3) - qf2Var.b(i2) > 1.0E-4f) {
                arrayList2.add(new hb2(this, (cl0) arrayList.get(i2), fB, qf2Var.b(i3)));
                fB = qf2Var.b(i3);
            }
            i2 = i3;
        }
        hb2 hb2Var = (hb2) arrayList2.get(arrayList2.size() - 1);
        float f = hb2Var.c;
        if (1.0f < f) {
            k21.f("endOutlineProgress is expected to be equal or greater than startOutlineProgress");
            throw null;
        }
        hb2Var.c = f;
        hb2Var.d = 1.0f;
        this.o = arrayList2;
    }

    @Override // defpackage.w
    public final int a() {
        return this.o.size();
    }

    @Override // defpackage.w, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof hb2) {
            return super.contains((hb2) obj);
        }
        return false;
    }

    @Override // java.util.List
    public final Object get(int i) {
        return (hb2) this.o.get(i);
    }

    @Override // defpackage.j1, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof hb2) {
            return super.indexOf((hb2) obj);
        }
        return -1;
    }

    @Override // defpackage.j1, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof hb2) {
            return super.lastIndexOf((hb2) obj);
        }
        return -1;
    }
}
