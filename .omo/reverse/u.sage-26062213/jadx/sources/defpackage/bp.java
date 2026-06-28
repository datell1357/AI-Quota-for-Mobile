package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bp {
    public final cp a;
    public final ep b;
    public final dp c;

    public bp(cp cpVar, ep epVar, dp dpVar) {
        this.a = cpVar;
        this.b = epVar;
        this.c = dpVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof bp)) {
            return false;
        }
        bp bpVar = (bp) obj;
        return this.a.equals(bpVar.a) && this.b.equals(bpVar.b) && this.c.equals(bpVar.c);
    }

    public final int hashCode() {
        return this.c.hashCode() ^ ((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003);
    }

    public final String toString() {
        return "StaticSessionData{appData=" + this.a + ", osData=" + this.b + ", deviceData=" + this.c + "}";
    }
}
