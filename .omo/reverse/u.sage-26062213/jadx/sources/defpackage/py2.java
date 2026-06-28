package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class py2 implements gi3 {
    public final String a;
    public final ny2 b;

    public py2(String str, ny2 ny2Var) {
        ny2Var.getClass();
        this.a = str;
        this.b = ny2Var;
    }

    @Override // defpackage.gi3
    public final int a(String str) {
        str.getClass();
        throw new IllegalStateException("Primitive descriptor does not have elements");
    }

    @Override // defpackage.gi3
    public final String b() {
        return this.a;
    }

    @Override // defpackage.gi3
    public final dm0 c() {
        return this.b;
    }

    @Override // defpackage.gi3
    public final int d() {
        return 0;
    }

    @Override // defpackage.gi3
    public final String e(int i) {
        throw new IllegalStateException("Primitive descriptor does not have elements");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof py2)) {
            return false;
        }
        py2 py2Var = (py2) obj;
        return this.a.equals(py2Var.a) && nt1.g(this.b, py2Var.b);
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
        return (this.b.hashCode() * 31) + this.a.hashCode();
    }

    @Override // defpackage.gi3
    public final List i(int i) {
        throw new IllegalStateException("Primitive descriptor does not have elements");
    }

    @Override // defpackage.gi3
    public final gi3 j(int i) {
        throw new IllegalStateException("Primitive descriptor does not have elements");
    }

    @Override // defpackage.gi3
    public final boolean k(int i) {
        throw new IllegalStateException("Primitive descriptor does not have elements");
    }

    public final String toString() {
        return "PrimitiveDescriptor(" + this.a + ')';
    }
}
