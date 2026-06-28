package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lr2 extends fl4 {
    public final l33 x;

    public lr2(l33 l33Var) {
        this.x = l33Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof lr2) {
            return this.x.equals(((lr2) obj).x);
        }
        return false;
    }

    public final int hashCode() {
        return this.x.hashCode();
    }

    @Override // defpackage.fl4
    public final l33 o() {
        return this.x;
    }
}
