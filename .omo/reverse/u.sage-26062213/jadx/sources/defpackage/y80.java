package defpackage;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class y80 implements Comparator {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;

    public /* synthetic */ y80(int i, Object obj) {
        this.n = i;
        this.o = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i = this.n;
        Object obj3 = this.o;
        switch (i) {
            case 0:
                for (pe1 pe1Var : (pe1[]) obj3) {
                    int i2 = ca.i((Comparable) pe1Var.k(obj), (Comparable) pe1Var.k(obj2));
                    if (i2 != 0) {
                        return i2;
                    }
                }
                return 0;
            default:
                return ((Number) ((df1) obj3).f(obj, obj2)).intValue();
        }
    }
}
