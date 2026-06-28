package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qu implements gj1, Cloneable, Serializable {
    public static final ru[] p = new ru[0];
    public final String n;
    public final String o;

    public qu(String str, String str2) {
        this.n = str;
        this.o = str2;
    }

    @Override // defpackage.gj1
    public final ru[] a() {
        String str = this.o;
        if (str == null) {
            return p;
        }
        uu uuVar = uu.a;
        b40 b40Var = new b40(str.length());
        b40Var.b(str);
        ky0 ky0Var = new ky0(0, str.length());
        uu uuVar2 = uu.a;
        return uu.a(b40Var, ky0Var);
    }

    public final Object clone() {
        return super.clone();
    }

    @Override // defpackage.sh2
    public final String getName() {
        return this.n;
    }

    @Override // defpackage.sh2
    public final String getValue() {
        return this.o;
    }

    public final String toString() {
        return mj1.p(null, this).toString();
    }
}
