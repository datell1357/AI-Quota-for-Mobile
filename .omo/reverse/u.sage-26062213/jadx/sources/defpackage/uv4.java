package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class uv4 {
    public final Context a;
    public final rx4 b;

    public uv4(Context context, rx4 rx4Var) {
        this.a = context;
        this.b = rx4Var;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof uv4)) {
            return false;
        }
        uv4 uv4Var = (uv4) obj;
        return this.a.equals(uv4Var.a) && this.b.equals(uv4Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() ^ ((this.a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return xw1.r("FlagsContext{context=", this.a.toString(), ", hermeticFileOverrides=", this.b.toString(), "}");
    }
}
