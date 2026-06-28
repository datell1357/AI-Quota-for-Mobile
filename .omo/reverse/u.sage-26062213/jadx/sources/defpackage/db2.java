package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface db2 {
    default int a(jt1 jt1Var, List list, int i) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            arrayList.add(new kp0((ya2) list.get(i3), kt1.o, lt1.o, i2));
        }
        return f(new tt1(jt1Var, jt1Var.getLayoutDirection()), arrayList, nf0.b(i, 0, 13)).a();
    }

    default int c(jt1 jt1Var, List list, int i) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            arrayList.add(new kp0((ya2) list.get(i3), kt1.o, lt1.n, i2));
        }
        return f(new tt1(jt1Var, jt1Var.getLayoutDirection()), arrayList, nf0.b(0, i, 7)).b();
    }

    eb2 f(gb2 gb2Var, List list, long j);

    default int g(jt1 jt1Var, List list, int i) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            arrayList.add(new kp0((ya2) list.get(i3), kt1.n, lt1.o, i2));
        }
        return f(new tt1(jt1Var, jt1Var.getLayoutDirection()), arrayList, nf0.b(i, 0, 13)).a();
    }

    default int i(jt1 jt1Var, List list, int i) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            arrayList.add(new kp0((ya2) list.get(i3), kt1.n, lt1.n, i2));
        }
        return f(new tt1(jt1Var, jt1Var.getLayoutDirection()), arrayList, nf0.b(0, i, 7)).b();
    }
}
