package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mj3 {
    public final wj3 a;
    public final jh b;

    public mj3(wj3 wj3Var, jh jhVar) {
        this.a = wj3Var;
        this.b = jhVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mj3)) {
            return false;
        }
        mj3 mj3Var = (mj3) obj;
        return this.a.equals(mj3Var.a) && this.b.equals(mj3Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + ((this.a.hashCode() + (u21.o.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "SessionEvent(eventType=" + u21.o + ", sessionData=" + this.a + ", applicationInfo=" + this.b + ')';
    }
}
