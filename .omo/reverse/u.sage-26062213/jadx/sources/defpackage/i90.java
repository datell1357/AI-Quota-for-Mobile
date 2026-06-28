package defpackage;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i90 {
    public final String a;
    public final Set b;
    public final Set c;
    public final int d;
    public final int e;
    public final aa0 f;
    public final Set g;

    public i90(String str, Set set, Set set2, int i, int i2, aa0 aa0Var, Set set3) {
        this.a = str;
        this.b = Collections.unmodifiableSet(set);
        this.c = Collections.unmodifiableSet(set2);
        this.d = i;
        this.e = i2;
        this.f = aa0Var;
        this.g = Collections.unmodifiableSet(set3);
    }

    public static h90 a(z03 z03Var) {
        return new h90(z03Var, new z03[0]);
    }

    public static h90 b(Class cls) {
        return new h90(cls, new Class[0]);
    }

    public static i90 c(Object obj, Class cls, Class... clsArr) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        hashSet.add(z03.a(cls));
        for (Class cls2 : clsArr) {
            gg4.m(cls2, "Null interface");
            hashSet.add(z03.a(cls2));
        }
        return new i90(null, new HashSet(hashSet), new HashSet(hashSet2), 0, 0, new g90(1, obj), hashSet3);
    }

    public final String toString() {
        return "Component<" + Arrays.toString(this.b.toArray()) + ">{" + this.d + ", type=" + this.e + ", deps=" + Arrays.toString(this.c.toArray()) + "}";
    }
}
