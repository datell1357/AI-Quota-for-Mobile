package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dj {
    public final Object a;
    public final si b;
    public final o23 c;

    public dj(String str, si siVar, o23 o23Var) {
        this.a = str;
        this.b = siVar;
        this.c = o23Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dj)) {
            return false;
        }
        dj djVar = (dj) obj;
        si siVar = djVar.b;
        si siVar2 = this.b;
        return nt1.g(siVar2, siVar) && siVar2.a(this.a, djVar.a) && this.c == djVar.c;
    }

    public final int hashCode() {
        si siVar = this.b;
        return this.c.hashCode() + ((siVar.b(this.a) + (siVar.hashCode() * 31)) * 31);
    }
}
