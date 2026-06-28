package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class ky1 extends rd2 {
    public final String b;

    public ky1(String str) {
        this.b = str;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        ly1 ly1Var = new ly1();
        ly1Var.B = this.b;
        return ly1Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ky1) && this.b.equals(((ky1) obj).b);
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        ((ly1) md2Var).B = this.b;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return "LayoutIdElement(layoutId=" + ((Object) this.b) + ")";
    }
}
