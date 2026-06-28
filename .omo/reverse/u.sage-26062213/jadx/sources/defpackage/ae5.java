package defpackage;

import android.net.Uri;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ae5 {
    public final Uri a;
    public final aa5 b;
    public final fy2 c;
    public final lp1 d;

    public ae5(Uri uri, aa5 aa5Var, fy2 fy2Var, lp1 lp1Var) {
        this.a = uri;
        this.b = aa5Var;
        this.c = fy2Var;
        this.d = lp1Var;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ae5)) {
            return false;
        }
        ae5 ae5Var = (ae5) obj;
        return this.a.equals(ae5Var.a) && this.b.equals(ae5Var.b) && this.c.equals(ae5Var.c) && this.d.equals(ae5Var.d);
    }

    public final int hashCode() {
        return ((((((this.d.hashCode() ^ ((((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003)) * 1000003) ^ bx3.s.hashCode()) * 1000003) ^ 1231) * 1000003) ^ 1237;
    }

    public final String toString() {
        String string = this.a.toString();
        int length = string.length();
        String string2 = this.b.toString();
        int length2 = string2.length();
        bx3 bx3Var = bx3.s;
        String strValueOf = String.valueOf(this.c);
        String strValueOf2 = String.valueOf(this.d);
        String string3 = bx3Var.toString();
        int length3 = strValueOf.length();
        int length4 = strValueOf2.length();
        StringBuilder sb = new StringBuilder(length + 34 + length2 + 10 + length3 + 13 + length4 + 16 + string3.length() + 32 + String.valueOf(true).length() + 22);
        di0.E(sb, "ProtoDataStoreConfig{uri=", string, ", schema=", string2);
        di0.E(sb, ", handler=", strValueOf, ", migrations=", strValueOf2);
        return di0.y(sb, ", variantConfig=", string3, ", useGeneratedExtensionRegistry=true, enableTracing=false}");
    }
}
