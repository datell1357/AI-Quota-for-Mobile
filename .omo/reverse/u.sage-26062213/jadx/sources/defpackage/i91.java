package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i91 {
    public final void a(ya2 ya2Var, ya2 ya2Var2, long j) {
        long jM = bi4.m(j, mz1.n);
        if (ya2Var != null) {
            int iK = ya2Var.K(mf0.g(jM));
            new ds1(ds1.a(iK, ya2Var.T(iK)));
        }
        if (ya2Var2 != null) {
            int iK2 = ya2Var2.K(mf0.g(jM));
            new ds1(ds1.a(iK2, ya2Var2.T(iK2)));
        }
    }

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof i91);
    }

    public final int hashCode() {
        return Integer.hashCode(0) + xw1.j(0, g91.n.hashCode() * 31, 31);
    }

    public final String toString() {
        return "FlowLayoutOverflowState(type=" + g91.n + ", minLinesToShowCollapse=0, minCrossAxisSizeToShowCollapse=0)";
    }
}
