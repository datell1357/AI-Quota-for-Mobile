package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rn {
    public tn a;
    public String b;
    public String c;
    public long d;
    public byte e;

    public final sn a() {
        tn tnVar;
        String str;
        String str2;
        if (this.e == 1 && (tnVar = this.a) != null && (str = this.b) != null && (str2 = this.c) != null) {
            return new sn(tnVar, str, str2, this.d);
        }
        StringBuilder sb = new StringBuilder();
        if (this.a == null) {
            sb.append(" rolloutVariant");
        }
        if (this.b == null) {
            sb.append(" parameterKey");
        }
        if (this.c == null) {
            sb.append(" parameterValue");
        }
        if ((this.e & 1) == 0) {
            sb.append(" templateVersion");
        }
        k21.n(di0.w("Missing required properties:", sb));
        return null;
    }
}
