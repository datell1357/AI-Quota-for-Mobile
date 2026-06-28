package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class e42 implements gi3 {
    public final gi3 a;

    public e42(gi3 gi3Var) {
        this.a = gi3Var;
    }

    @Override // defpackage.gi3
    public final int a(String str) {
        str.getClass();
        Integer numZ0 = gt3.z0(str);
        if (numZ0 != null) {
            return numZ0.intValue();
        }
        k21.f(str.concat(" is not a valid list index"));
        return 0;
    }

    @Override // defpackage.gi3
    public final dm0 c() {
        return it3.Q;
    }

    @Override // defpackage.gi3
    public final int d() {
        return 1;
    }

    @Override // defpackage.gi3
    public final String e(int i) {
        return String.valueOf(i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e42)) {
            return false;
        }
        e42 e42Var = (e42) obj;
        return nt1.g(this.a, e42Var.a) && nt1.g(b(), e42Var.b());
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
        return b().hashCode() + (this.a.hashCode() * 31);
    }

    @Override // defpackage.gi3
    public final List i(int i) {
        if (i >= 0) {
            return g01.n;
        }
        p61.p(xw1.u("Illegal index ", i, ", "), b(), " expects only non-negative indices");
        return null;
    }

    @Override // defpackage.gi3
    public final gi3 j(int i) {
        if (i >= 0) {
            return this.a;
        }
        p61.p(xw1.u("Illegal index ", i, ", "), b(), " expects only non-negative indices");
        return null;
    }

    @Override // defpackage.gi3
    public final boolean k(int i) {
        if (i >= 0) {
            return false;
        }
        p61.p(xw1.u("Illegal index ", i, ", "), b(), " expects only non-negative indices");
        return false;
    }

    public final String toString() {
        return b() + '(' + this.a + ')';
    }
}
