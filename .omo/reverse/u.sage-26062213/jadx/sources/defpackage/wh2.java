package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wh2 {
    public final qj2 a;
    public final boolean b;
    public final Object c;

    public wh2(qj2 qj2Var, String str, boolean z) {
        if (z && str == null) {
            p61.h(qj2Var.b(), " has null value but is not nullable.", "Argument with type ");
            throw null;
        }
        this.a = qj2Var;
        this.c = str;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || wh2.class != obj.getClass()) {
            return false;
        }
        wh2 wh2Var = (wh2) obj;
        if (this.b != wh2Var.b || !this.a.equals(wh2Var.a)) {
            return false;
        }
        Object obj2 = wh2Var.c;
        Object obj3 = this.c;
        return obj3 != null ? obj3.equals(obj2) : obj2 == null;
    }

    public final int hashCode() {
        int iHashCode = ((this.a.hashCode() * 961) + (this.b ? 1 : 0)) * 31;
        Object obj = this.c;
        return iHashCode + (obj != null ? obj.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(y33.a(wh2.class).c());
        sb.append(" Type: " + this.a);
        sb.append(" Nullable: false");
        if (this.b) {
            sb.append(" DefaultValue: " + this.c);
        }
        return sb.toString();
    }
}
