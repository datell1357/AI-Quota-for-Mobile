package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class oz2 {
    public static final oz2 b = new oz2(new v60());
    public final v60 a;

    public oz2(v60 v60Var) {
        this.a = v60Var;
        if (Float.isNaN(0.0f)) {
            k21.f("current must not be NaN");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof oz2) && this.a.equals(((oz2) obj).a);
    }

    public final int hashCode() {
        return (this.a.hashCode() + (Float.hashCode(0.0f) * 31)) * 31;
    }

    public final String toString() {
        return "ProgressBarRangeInfo(current=0.0, range=" + this.a + ", steps=0)";
    }
}
