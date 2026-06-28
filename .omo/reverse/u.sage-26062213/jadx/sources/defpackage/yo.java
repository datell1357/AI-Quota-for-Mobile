package defpackage;

import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yo {
    public final pr3 a;
    public final HashMap b;

    public yo(pr3 pr3Var, HashMap map) {
        this.a = pr3Var;
        this.b = map;
    }

    public final long a(ry2 ry2Var, long j, int i) {
        long jI = j - this.a.i();
        zo zoVar = (zo) this.b.get(ry2Var);
        long j2 = zoVar.a;
        return Math.min(Math.max((long) (Math.pow(3.0d, i - 1) * j2 * Math.max(1.0d, Math.log(10000.0d) / Math.log((j2 > 1 ? j2 : 2L) * ((long) r12)))), jI), zoVar.b);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof yo)) {
            return false;
        }
        yo yoVar = (yo) obj;
        return this.a.equals(yoVar.a) && this.b.equals(yoVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() ^ ((this.a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "SchedulerConfig{clock=" + this.a + ", values=" + this.b + "}";
    }
}
