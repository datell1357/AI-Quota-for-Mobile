package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gw1 extends tw1 {
    public final boolean n;
    public final String o;

    public gw1(String str, boolean z) {
        str.getClass();
        this.n = z;
        this.o = str.toString();
    }

    @Override // defpackage.tw1
    public final String a() {
        return this.o;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || gw1.class != obj.getClass()) {
            return false;
        }
        gw1 gw1Var = (gw1) obj;
        return this.n == gw1Var.n && nt1.g(this.o, gw1Var.o);
    }

    public final int hashCode() {
        return this.o.hashCode() + (Boolean.hashCode(this.n) * 31);
    }

    @Override // defpackage.tw1
    public final String toString() {
        boolean z = this.n;
        String str = this.o;
        if (!z) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        xs3.a(str, sb);
        return sb.toString();
    }
}
