package defpackage;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o11 {
    public static final o11 b = new o11(new o14((k41) null, (sn3) null, (l30) null, (gg4) null, (LinkedHashMap) null, 127));
    public final o14 a;

    public o11(o14 o14Var) {
        this.a = o14Var;
    }

    public final o11 a(o11 o11Var) {
        o14 o14Var = o11Var.a;
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
        Map map = o14Var2.e;
        Map map2 = o14Var.e;
        map.getClass();
        map2.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.putAll(map2);
        return new o11(new o14(k41Var, sn3Var, l30Var, (gg4) null, linkedHashMap, 32));
    }

    public final boolean equals(Object obj) {
        return (obj instanceof o11) && ((o11) obj).a.equals(this.a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        if (equals(b)) {
            return "EnterTransition.None";
        }
        o14 o14Var = this.a;
        k41 k41Var = o14Var.a;
        String string = k41Var != null ? k41Var.toString() : null;
        sn3 sn3Var = o14Var.b;
        String string2 = sn3Var != null ? sn3Var.toString() : null;
        l30 l30Var = o14Var.c;
        return di0.y(di0.B("EnterTransition: \nFade - ", string, ",\nSlide - ", string2, ",\nShrink - "), l30Var != null ? l30Var.toString() : null, ",\nScale - ", null);
    }
}
