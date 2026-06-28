package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cn {
    public long a;
    public String b;
    public ak0 c;
    public bk0 d;
    public ck0 e;
    public fk0 f;
    public byte g;

    public final dn a() {
        String str;
        ak0 ak0Var;
        bk0 bk0Var;
        if (this.g == 1 && (str = this.b) != null && (ak0Var = this.c) != null && (bk0Var = this.d) != null) {
            return new dn(this.a, str, ak0Var, bk0Var, this.e, this.f);
        }
        StringBuilder sb = new StringBuilder();
        if ((1 & this.g) == 0) {
            sb.append(" timestamp");
        }
        if (this.b == null) {
            sb.append(" type");
        }
        if (this.c == null) {
            sb.append(" app");
        }
        if (this.d == null) {
            sb.append(" device");
        }
        k21.n(di0.w("Missing required properties:", sb));
        return null;
    }
}
