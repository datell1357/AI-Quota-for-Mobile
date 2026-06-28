package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fy2 extends cr2 {
    public final Object n;

    public fy2(Object obj) {
        this.n = obj;
    }

    @Override // defpackage.cr2
    public final Object a() {
        return this.n;
    }

    @Override // defpackage.cr2
    public final boolean b() {
        return true;
    }

    @Override // defpackage.cr2
    public final Object c() {
        return this.n;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof fy2) {
            return this.n.equals(((fy2) obj).n);
        }
        return false;
    }

    public final int hashCode() {
        return this.n.hashCode() + 1502476572;
    }

    public final String toString() {
        return "Optional.of(" + this.n + ")";
    }
}
