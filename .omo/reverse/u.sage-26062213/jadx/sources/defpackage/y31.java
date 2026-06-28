package defpackage;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class y31 {
    public static final y31 b;
    public static final y31 c;
    public final o14 a;

    static {
        LinkedHashMap linkedHashMap = null;
        k41 k41Var = null;
        sn3 sn3Var = null;
        l30 l30Var = null;
        gg4 gg4Var = null;
        b = new y31(new o14(k41Var, sn3Var, l30Var, gg4Var, linkedHashMap, 127));
        c = new y31(new o14(k41Var, sn3Var, l30Var, gg4Var, linkedHashMap, 95));
    }

    public y31(o14 o14Var) {
        this.a = o14Var;
    }

    public final y31 a(y31 y31Var) {
        o14 o14Var = y31Var.a;
        k41 k41Var = o14Var.a;
        o14 o14Var2 = this.a;
        if (k41Var == null) {
            k41Var = o14Var2.a;
        }
        sn3 sn3Var = o14Var.b;
        if (sn3Var == null) {
            sn3Var = o14Var2.b;
        }
        l30 l30Var = o14Var.c;
        if (l30Var == null) {
            l30Var = o14Var2.c;
        }
        boolean z = o14Var.d || o14Var2.d;
        Map map = o14Var2.e;
        Map map2 = o14Var.e;
        map.getClass();
        map2.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.putAll(map2);
        return new y31(new o14(k41Var, sn3Var, l30Var, (gg4) null, z, linkedHashMap));
    }

    public final boolean equals(Object obj) {
        return (obj instanceof y31) && ((y31) obj).a.equals(this.a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        if (equals(b)) {
            return "ExitTransition.None";
        }
        if (equals(c)) {
            return "ExitTransition.KeepUntilTransitionsFinished";
        }
        o14 o14Var = this.a;
        k41 k41Var = o14Var.a;
        String string = k41Var != null ? k41Var.toString() : null;
        sn3 sn3Var = o14Var.b;
        String string2 = sn3Var != null ? sn3Var.toString() : null;
        l30 l30Var = o14Var.c;
        String string3 = l30Var != null ? l30Var.toString() : null;
        boolean z = o14Var.d;
        StringBuilder sbB = di0.B("ExitTransition: \nFade - ", string, ",\nSlide - ", string2, ",\nShrink - ");
        di0.E(sbB, string3, ",\nScale - ", null, ",\nKeepUntilTransitionsFinished - ");
        sbB.append(z);
        return sbB.toString();
    }
}
