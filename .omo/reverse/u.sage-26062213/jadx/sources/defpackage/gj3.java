package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gj3 {
    public static final fj3 Companion = new fj3();
    public static final qz1[] d = {null, null, dm0.C(v12.n, new t52(27))};
    public final lj3 a;
    public final hz3 b;
    public final Map c;

    public /* synthetic */ gj3(int i, lj3 lj3Var, hz3 hz3Var, Map map) {
        if (1 != (i & 1)) {
            w80.X(i, 1, ej3.a.d());
            throw null;
        }
        this.a = lj3Var;
        if ((i & 2) == 0) {
            this.b = null;
        } else {
            this.b = hz3Var;
        }
        if ((i & 4) == 0) {
            this.c = null;
        } else {
            this.c = map;
        }
    }

    public static gj3 a(gj3 gj3Var, lj3 lj3Var, hz3 hz3Var, Map map, int i) {
        if ((i & 1) != 0) {
            lj3Var = gj3Var.a;
        }
        if ((i & 2) != 0) {
            hz3Var = gj3Var.b;
        }
        if ((i & 4) != 0) {
            map = gj3Var.c;
        }
        gj3Var.getClass();
        lj3Var.getClass();
        return new gj3(lj3Var, hz3Var, map);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gj3)) {
            return false;
        }
        gj3 gj3Var = (gj3) obj;
        return nt1.g(this.a, gj3Var.a) && nt1.g(this.b, gj3Var.b) && nt1.g(this.c, gj3Var.c);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        hz3 hz3Var = this.b;
        int iHashCode2 = (iHashCode + (hz3Var == null ? 0 : Long.hashCode(hz3Var.a))) * 31;
        Map map = this.c;
        return iHashCode2 + (map != null ? map.hashCode() : 0);
    }

    public final String toString() {
        return "SessionData(sessionDetails=" + this.a + ", backgroundTime=" + this.b + ", processDataMap=" + this.c + ')';
    }

    public gj3(lj3 lj3Var, hz3 hz3Var, Map map) {
        lj3Var.getClass();
        this.a = lj3Var;
        this.b = hz3Var;
        this.c = map;
    }
}
