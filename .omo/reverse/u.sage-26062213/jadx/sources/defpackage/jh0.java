package defpackage;

import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jh0 {
    public final String a;
    public final int b;
    public final String c;
    public final boolean d;

    public jh0(String str, String str2, int i, boolean z) {
        w80.G(str, "Host");
        w80.J(i, "Port");
        w80.L(str2, "Path");
        this.a = str.toLowerCase(Locale.ROOT);
        this.b = i;
        if (ht4.v(str2)) {
            this.c = "/";
        } else {
            this.c = str2;
        }
        this.d = z;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        if (this.d) {
            sb.append("(secure)");
        }
        sb.append(this.a);
        sb.append(':');
        sb.append(Integer.toString(this.b));
        sb.append(this.c);
        sb.append(']');
        return sb.toString();
    }
}
