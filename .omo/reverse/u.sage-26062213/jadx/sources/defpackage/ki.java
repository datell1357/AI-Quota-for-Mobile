package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class ki extends rd2 {
    @Override // defpackage.rd2
    public final md2 e() {
        li liVar = new li();
        liVar.B = 1.0f;
        liVar.C = true;
        return liVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof ki ? (ki) obj : null) == null) {
            return false;
        }
        ((ki) obj).getClass();
        return true;
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        li liVar = (li) md2Var;
        liVar.B = 1.0f;
        liVar.C = true;
    }

    public final int hashCode() {
        return Boolean.hashCode(true) + (Float.hashCode(1.0f) * 31);
    }
}
