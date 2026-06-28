package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mn {
    public String a;
    public int b;
    public int c;
    public boolean d;
    public byte e;

    public final nn a() {
        String str;
        if (this.e == 7 && (str = this.a) != null) {
            return new nn(this.b, this.c, str, this.d);
        }
        StringBuilder sb = new StringBuilder();
        if (this.a == null) {
            sb.append(" processName");
        }
        if ((this.e & 1) == 0) {
            sb.append(" pid");
        }
        if ((this.e & 2) == 0) {
            sb.append(" importance");
        }
        if ((this.e & 4) == 0) {
            sb.append(" defaultProcess");
        }
        k21.n(di0.w("Missing required properties:", sb));
        return null;
    }
}
