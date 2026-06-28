package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class d84 {

    @ni3("x")
    private final List<p84> a;

    @ni3("l")
    private final long b;

    public d84(List list, long j) {
        this.a = list;
        this.b = j;
    }

    public static d84 a(d84 d84Var, long j) {
        List<p84> list = d84Var.a;
        list.getClass();
        return new d84(list, j);
    }

    public final long b() {
        return this.b;
    }

    public final List c() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d84)) {
            return false;
        }
        d84 d84Var = (d84) obj;
        return nt1.g(this.a, d84Var.a) && this.b == d84Var.b;
    }

    public final int hashCode() {
        return Long.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "UsageData(limits=" + this.a + ", lastUpdatedEpochMillis=" + this.b + ")";
    }
}
