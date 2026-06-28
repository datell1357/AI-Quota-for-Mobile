package defpackage;

import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hi3 implements gi3, c10 {
    public final gi3 a;
    public final String b;
    public final Set c;

    public hi3(gi3 gi3Var) {
        gi3Var.getClass();
        this.a = gi3Var;
        this.b = gi3Var.b() + '?';
        this.c = ht4.g(gi3Var);
    }

    @Override // defpackage.gi3
    public final int a(String str) {
        str.getClass();
        return this.a.a(str);
    }

    @Override // defpackage.gi3
    public final String b() {
        return this.b;
    }

    @Override // defpackage.gi3
    public final dm0 c() {
        return this.a.c();
    }

    @Override // defpackage.gi3
    public final int d() {
        return this.a.d();
    }

    @Override // defpackage.gi3
    public final String e(int i) {
        return this.a.e(i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof hi3) {
            return nt1.g(this.a, ((hi3) obj).a);
        }
        return false;
    }

    @Override // defpackage.gi3
    public final boolean f() {
        return this.a.f();
    }

    @Override // defpackage.c10
    public final Set g() {
        return this.c;
    }

    @Override // defpackage.gi3
    public final List getAnnotations() {
        return this.a.getAnnotations();
    }

    @Override // defpackage.gi3
    public final boolean h() {
        return true;
    }

    public final int hashCode() {
        return this.a.hashCode() * 31;
    }

    @Override // defpackage.gi3
    public final List i(int i) {
        return this.a.i(i);
    }

    @Override // defpackage.gi3
    public final gi3 j(int i) {
        return this.a.j(i);
    }

    @Override // defpackage.gi3
    public final boolean k(int i) {
        return this.a.k(i);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.a);
        sb.append('?');
        return sb.toString();
    }
}
