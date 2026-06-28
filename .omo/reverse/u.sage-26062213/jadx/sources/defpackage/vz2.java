package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class vz2 extends x10 implements kx1 {
    public final boolean t;

    public vz2(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, (i & 1) == 1);
        this.t = false;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof vz2) {
            vz2 vz2Var = (vz2) obj;
            return e().equals(vz2Var.e()) && this.q.equals(vz2Var.q) && this.r.equals(vz2Var.r) && nt1.g(this.o, vz2Var.o);
        }
        if (obj instanceof kx1) {
            return obj.equals(g());
        }
        return false;
    }

    public final ex1 g() {
        if (this.t) {
            return this;
        }
        ex1 ex1Var = this.n;
        if (ex1Var != null) {
            return ex1Var;
        }
        ex1 ex1VarC = c();
        this.n = ex1VarC;
        return ex1VarC;
    }

    public final kx1 h() {
        if (this.t) {
            p61.s("Kotlin reflection is not yet supported for synthetic Java properties. Please follow/upvote https://youtrack.jetbrains.com/issue/KT-55980");
            return null;
        }
        ex1 ex1VarG = g();
        if (ex1VarG != this) {
            return (kx1) ex1VarG;
        }
        throw new wi0("Kotlin reflection implementation is not found at runtime. Make sure you have kotlin-reflect.jar in the classpath");
    }

    public final int hashCode() {
        return this.r.hashCode() + xw1.m(e().hashCode() * 31, this.q, 31);
    }

    public final String toString() {
        ex1 ex1VarG = g();
        return ex1VarG != this ? ex1VarG.toString() : xw1.s(new StringBuilder("property "), this.q, " (Kotlin reflection is not available)");
    }
}
