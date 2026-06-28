package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class uo {
    public String a;
    public String b;
    public String c;
    public String d;
    public long e;
    public byte f;

    public final vo a() {
        if (this.f == 1 && this.a != null && this.b != null && this.c != null && this.d != null) {
            return new vo(this.e, this.a, this.b, this.c, this.d);
        }
        StringBuilder sb = new StringBuilder();
        if (this.a == null) {
            sb.append(" rolloutId");
        }
        if (this.b == null) {
            sb.append(" variantId");
        }
        if (this.c == null) {
            sb.append(" parameterKey");
        }
        if (this.d == null) {
            sb.append(" parameterValue");
        }
        if ((this.f & 1) == 0) {
            sb.append(" templateVersion");
        }
        k21.n(di0.w("Missing required properties:", sb));
        return null;
    }
}
