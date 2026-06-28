package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class d34 implements dy0 {
    public final int a;
    public final int b;
    public final my0 c;

    public d34(int i, int i2, my0 my0Var) {
        this.a = i;
        this.b = i2;
        this.c = my0Var;
    }

    @Override // defpackage.ve
    public final ia4 a(e34 e34Var) {
        return new en1(this.a, this.b, this.c);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof d34) {
            d34 d34Var = (d34) obj;
            if (d34Var.a == this.a && d34Var.b == this.b && nt1.g(d34Var.c, this.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.c.hashCode() + (this.a * 31)) * 31) + this.b;
    }

    @Override // defpackage.dy0, defpackage.ve
    public final ka4 a(e34 e34Var) {
        return new en1(this.a, this.b, this.c);
    }
}
