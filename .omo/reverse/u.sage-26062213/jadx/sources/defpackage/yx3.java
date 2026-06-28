package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yx3 {
    public final String a;
    public String b;
    public boolean c = false;
    public ps2 d = null;

    public yx3(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yx3)) {
            return false;
        }
        yx3 yx3Var = (yx3) obj;
        return nt1.g(this.a, yx3Var.a) && nt1.g(this.b, yx3Var.b) && this.c == yx3Var.c && nt1.g(this.d, yx3Var.d);
    }

    public final int hashCode() {
        int iN = xw1.n(xw1.m(this.a.hashCode() * 31, this.b, 31), this.c, 31);
        ps2 ps2Var = this.d;
        return iN + (ps2Var == null ? 0 : ps2Var.hashCode());
    }

    public final String toString() {
        return "TextSubstitution(layoutCache=" + this.d + ", isShowingSubstitution=" + this.c + ")";
    }
}
