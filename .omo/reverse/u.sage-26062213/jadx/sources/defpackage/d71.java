package defpackage;

import java.util.concurrent.CountDownLatch;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class d71 {
    public final CountDownLatch a;
    public aj0 b = null;

    public d71(CountDownLatch countDownLatch) {
        this.a = countDownLatch;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d71)) {
            return false;
        }
        d71 d71Var = (d71) obj;
        return this.a.equals(d71Var.a) && nt1.g(this.b, d71Var.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        aj0 aj0Var = this.b;
        return iHashCode + (aj0Var == null ? 0 : aj0Var.hashCode());
    }

    public final String toString() {
        return "Dependency(latch=" + this.a + ", subscriber=" + this.b + ')';
    }
}
