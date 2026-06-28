package defpackage;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o14 {
    public final k41 a;
    public final sn3 b;
    public final l30 c;
    public final boolean d;
    public final Map e;

    public /* synthetic */ o14(k41 k41Var, sn3 sn3Var, l30 l30Var, gg4 gg4Var, LinkedHashMap linkedHashMap, int i) {
        this((i & 1) != 0 ? null : k41Var, (i & 2) != 0 ? null : sn3Var, (i & 4) != 0 ? null : l30Var, (i & 8) != 0 ? null : gg4Var, (i & 32) == 0, (i & 64) != 0 ? h01.n : linkedHashMap);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o14)) {
            return false;
        }
        o14 o14Var = (o14) obj;
        return nt1.g(this.a, o14Var.a) && nt1.g(this.b, o14Var.b) && nt1.g(this.c, o14Var.c) && nt1.g(null, null) && this.d == o14Var.d && nt1.g(this.e, o14Var.e);
    }

    public final int hashCode() {
        k41 k41Var = this.a;
        int iHashCode = (k41Var == null ? 0 : k41Var.hashCode()) * 31;
        sn3 sn3Var = this.b;
        int iHashCode2 = (iHashCode + (sn3Var == null ? 0 : sn3Var.hashCode())) * 31;
        l30 l30Var = this.c;
        return this.e.hashCode() + xw1.n((((iHashCode2 + (l30Var == null ? 0 : l30Var.hashCode())) * 31) + 0) * 961, this.d, 31);
    }

    public final String toString() {
        return "TransitionData(fade=" + this.a + ", slide=" + this.b + ", changeSize=" + this.c + ", scale=" + ((Object) null) + ", veil=null, hold=" + this.d + ", effectsMap=" + this.e + ")";
    }

    public o14(k41 k41Var, sn3 sn3Var, l30 l30Var, gg4 gg4Var, boolean z, Map map) {
        this.a = k41Var;
        this.b = sn3Var;
        this.c = l30Var;
        this.d = z;
        this.e = map;
    }
}
