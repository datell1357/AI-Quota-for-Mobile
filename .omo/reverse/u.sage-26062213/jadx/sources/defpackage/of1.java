package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class of1 extends x10 implements nf1, ex1, ef1 {
    public final int t;

    public of1(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(obj, cls, str, str2, (i2 & 1) == 1);
        this.t = i;
    }

    @Override // defpackage.nf1
    public final int b() {
        return this.t;
    }

    @Override // defpackage.x10
    public final ex1 c() {
        y33.a.getClass();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object] */
    public final boolean equals(Object obj) {
        ?? r2;
        if (obj == this) {
            return true;
        }
        if (obj instanceof of1) {
            of1 of1Var = (of1) obj;
            return this.q.equals(of1Var.q) && this.r.equals(of1Var.r) && nt1.g(this.o, of1Var.o) && e().equals(of1Var.e());
        }
        if (!(obj instanceof of1)) {
            return false;
        }
        ex1 ex1Var = this.n;
        if (ex1Var == null) {
            c();
            this.n = this;
            this = this;
        } else {
            r2 = ex1Var;
        }
        return obj.equals(r2);
    }

    public final int hashCode() {
        e();
        return this.r.hashCode() + xw1.m(e().hashCode() * 31, this.q, 31);
    }

    public final String toString() {
        ex1 ex1Var = this.n;
        if (ex1Var == null) {
            c();
            this.n = this;
            ex1Var = this;
        }
        if (ex1Var != this) {
            return ex1Var.toString();
        }
        String str = this.q;
        return "<init>".equals(str) ? "constructor (Kotlin reflection is not available)" : di0.v("function ", str, " (Kotlin reflection is not available)");
    }

    public of1(int i, Class cls, String str, String str2, int i2) {
        this(i, w10.n, cls, str, str2, i2, 0);
    }
}
