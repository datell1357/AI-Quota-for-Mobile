package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s32 implements gi3 {
    public final gi3 a;
    public final gi3 b;

    public s32(gi3 gi3Var, gi3 gi3Var2) {
        gi3Var.getClass();
        gi3Var2.getClass();
        this.a = gi3Var;
        this.b = gi3Var2;
    }

    @Override // defpackage.gi3
    public final int a(String str) {
        str.getClass();
        Integer numZ0 = gt3.z0(str);
        if (numZ0 != null) {
            return numZ0.intValue();
        }
        k21.f(str.concat(" is not a valid map index"));
        return 0;
    }

    @Override // defpackage.gi3
    public final String b() {
        return "kotlin.collections.LinkedHashMap";
    }

    @Override // defpackage.gi3
    public final dm0 c() {
        return it3.R;
    }

    @Override // defpackage.gi3
    public final int d() {
        return 2;
    }

    @Override // defpackage.gi3
    public final String e(int i) {
        return String.valueOf(i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s32)) {
            return false;
        }
        s32 s32Var = (s32) obj;
        return nt1.g(this.a, s32Var.a) && nt1.g(this.b, s32Var.b);
    }

    @Override // defpackage.gi3
    public final boolean f() {
        return false;
    }

    @Override // defpackage.gi3
    public final List getAnnotations() {
        return g01.n;
    }

    @Override // defpackage.gi3
    public final boolean h() {
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + ((this.a.hashCode() + 710441009) * 31);
    }

    @Override // defpackage.gi3
    public final List i(int i) {
        if (i >= 0) {
            return g01.n;
        }
        k21.l(xw1.q("Illegal index ", i, ", kotlin.collections.LinkedHashMap expects only non-negative indices"));
        return null;
    }

    @Override // defpackage.gi3
    public final gi3 j(int i) {
        if (i < 0) {
            k21.l(xw1.q("Illegal index ", i, ", kotlin.collections.LinkedHashMap expects only non-negative indices"));
            return null;
        }
        int i2 = i % 2;
        if (i2 == 0) {
            return this.a;
        }
        if (i2 == 1) {
            return this.b;
        }
        k21.n("Unreached");
        return null;
    }

    @Override // defpackage.gi3
    public final boolean k(int i) {
        if (i >= 0) {
            return false;
        }
        k21.l(xw1.q("Illegal index ", i, ", kotlin.collections.LinkedHashMap expects only non-negative indices"));
        return false;
    }

    public final String toString() {
        return "kotlin.collections.LinkedHashMap(" + this.a + ", " + this.b + ')';
    }
}
