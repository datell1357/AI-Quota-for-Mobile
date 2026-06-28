package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jk2 extends kt4 {
    public final bk2 z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jk2(bk2 bk2Var) {
        super(20);
        bk2Var.getClass();
        this.z = bk2Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && jk2.class == obj.getClass() && nt1.g(this.z, ((jk2) obj).z);
    }

    public final int hashCode() {
        return this.z.hashCode() - 31;
    }

    @Override // defpackage.kt4
    public final String toString() {
        return "InProgress(latestEvent=" + this.z + ", direction=-1)";
    }
}
