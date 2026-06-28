package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nl3 {
    public final na3 a;
    public final na3 b;
    public final na3 c;
    public final na3 d;
    public final na3 e;
    public final na3 f;
    public final na3 g;
    public final na3 h;

    public nl3() {
        na3 na3Var = kl3.a;
        na3 na3Var2 = kl3.b;
        na3 na3Var3 = kl3.c;
        na3 na3Var4 = kl3.d;
        na3 na3Var5 = kl3.f;
        na3 na3Var6 = kl3.e;
        na3 na3Var7 = kl3.g;
        na3 na3Var8 = kl3.h;
        this.a = na3Var;
        this.b = na3Var2;
        this.c = na3Var3;
        this.d = na3Var4;
        this.e = na3Var5;
        this.f = na3Var6;
        this.g = na3Var7;
        this.h = na3Var8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nl3)) {
            return false;
        }
        nl3 nl3Var = (nl3) obj;
        return nt1.g(this.a, nl3Var.a) && nt1.g(this.b, nl3Var.b) && nt1.g(this.c, nl3Var.c) && nt1.g(this.d, nl3Var.d) && nt1.g(this.e, nl3Var.e) && nt1.g(this.f, nl3Var.f) && nt1.g(this.g, nl3Var.g) && nt1.g(this.h, nl3Var.h);
    }

    public final int hashCode() {
        return this.h.hashCode() + ((this.g.hashCode() + ((this.f.hashCode() + ((this.e.hashCode() + ((this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "Shapes(extraSmall=" + this.a + ", small=" + this.b + ", medium=" + this.c + ", large=" + this.d + ", largeIncreased=" + this.f + ", extraLarge=" + this.e + ", extralargeIncreased=" + this.g + ", extraExtraLarge=" + this.h + ")";
    }
}
