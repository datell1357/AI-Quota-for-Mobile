package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ti {
    public final o23 a;
    public final jo1 b;
    public final si c;

    public ti(o23 o23Var, jo1 jo1Var, si siVar) {
        this.a = o23Var;
        this.b = jo1Var;
        this.c = siVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ti)) {
            return false;
        }
        ti tiVar = (ti) obj;
        if (this.a != tiVar.a) {
            return false;
        }
        si siVar = tiVar.c;
        si siVar2 = this.c;
        return nt1.g(siVar2, siVar) && siVar2.a(this.b, tiVar.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        si siVar = this.c;
        return siVar.b(this.b) + ((siVar.hashCode() + iHashCode) * 31);
    }

    public final String toString() {
        return "Input(imageLoader=" + this.a + ", request=" + this.b + ", modelEqualityDelegate=" + this.c + ")";
    }
}
