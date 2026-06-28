package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class y94 implements hd4 {
    public final String a;
    public final ws2 b;

    public y94(ur1 ur1Var, String str) {
        this.a = str;
        this.b = ca.A(ur1Var);
    }

    @Override // defpackage.hd4
    public final int a(as0 as0Var) {
        return e().d;
    }

    @Override // defpackage.hd4
    public final int b(as0 as0Var) {
        return e().b;
    }

    @Override // defpackage.hd4
    public final int c(as0 as0Var, hy1 hy1Var) {
        return e().c;
    }

    @Override // defpackage.hd4
    public final int d(as0 as0Var, hy1 hy1Var) {
        return e().a;
    }

    public final ur1 e() {
        return (ur1) this.b.getValue();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof y94) {
            return nt1.g(e(), ((y94) obj).e());
        }
        return false;
    }

    public final void f(ur1 ur1Var) {
        this.b.setValue(ur1Var);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return this.a + "(left=" + e().a + ", top=" + e().b + ", right=" + e().c + ", bottom=" + e().d + ")";
    }
}
