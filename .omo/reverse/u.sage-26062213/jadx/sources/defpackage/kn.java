package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kn {
    public long a;
    public String b;
    public String c;
    public long d;
    public int e;
    public byte f;

    public final ln a() {
        String str;
        if (this.f == 7 && (str = this.b) != null) {
            return new ln(this.a, str, this.c, this.d, this.e);
        }
        StringBuilder sb = new StringBuilder();
        if ((this.f & 1) == 0) {
            sb.append(" pc");
        }
        if (this.b == null) {
            sb.append(" symbol");
        }
        if ((this.f & 2) == 0) {
            sb.append(" offset");
        }
        if ((this.f & 4) == 0) {
            sb.append(" importance");
        }
        k21.n(di0.w("Missing required properties:", sb));
        return null;
    }
}
