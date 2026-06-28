package defpackage;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qh3 implements Comparator {
    public final /* synthetic */ int n;
    public final /* synthetic */ Comparator o;

    public qh3(Comparator comparator) {
        this.n = 0;
        this.o = comparator;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i = this.n;
        Comparator comparator = this.o;
        switch (i) {
            case 0:
                int iCompare = comparator.compare(obj, obj2);
                if (iCompare != 0) {
                    return iCompare;
                }
                return xy1.g0.compare(((gh3) obj).c, ((gh3) obj2).c);
            case 1:
                int iCompare2 = ((qh3) comparator).compare(obj, obj2);
                return iCompare2 != 0 ? iCompare2 : ca.i(Integer.valueOf(((gh3) obj).f), Integer.valueOf(((gh3) obj2).f));
            case 2:
                int iCompare3 = ((qh3) comparator).compare(obj, obj2);
                return iCompare3 != 0 ? iCompare3 : ca.i(Integer.valueOf(((yi3) obj).a.ordinal()), Integer.valueOf(((yi3) obj2).a.ordinal()));
            default:
                int iCompare4 = ((lh0) comparator).compare(obj, obj2);
                return iCompare4 != 0 ? iCompare4 : ca.i(Boolean.valueOf(((yi3) obj2).c), Boolean.valueOf(((yi3) obj).c));
        }
    }

    public /* synthetic */ qh3(Comparator comparator, int i) {
        this.n = i;
        this.o = comparator;
    }
}
