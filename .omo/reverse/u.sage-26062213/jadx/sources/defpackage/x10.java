package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class x10 implements ex1, Serializable {
    public transient ex1 n;
    public final Object o;
    public final Class p;
    public final String q;
    public final String r;
    public final boolean s;

    public x10(Object obj, Class cls, String str, String str2, boolean z) {
        this.o = obj;
        this.p = cls;
        this.q = str;
        this.r = str2;
        this.s = z;
    }

    public abstract ex1 c();

    public final g50 e() {
        boolean z = this.s;
        Class cls = this.p;
        if (!z) {
            return y33.a(cls);
        }
        y33.a.getClass();
        return new wr2(cls);
    }
}
