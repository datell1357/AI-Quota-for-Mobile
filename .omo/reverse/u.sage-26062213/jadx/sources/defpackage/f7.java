package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f7 {
    public final /* synthetic */ int a = 0;
    public final boolean b;
    public final String c;

    public f7(String str, boolean z) {
        this.c = str;
        this.b = z;
    }

    public String toString() {
        switch (this.a) {
            case 0:
                String str = this.c;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7);
                sb.append("{");
                sb.append(str);
                sb.append("}");
                sb.append(this.b);
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public f7(boolean z, String str) {
        this.b = z;
        this.c = str;
    }
}
