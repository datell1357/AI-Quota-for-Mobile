package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class l01 {
    public final o01 a;
    public final byte[] b;

    public l01(o01 o01Var, byte[] bArr) {
        if (o01Var == null) {
            q73.r("encoding is null");
            throw null;
        }
        if (bArr == null) {
            q73.r("bytes is null");
            throw null;
        }
        this.a = o01Var;
        this.b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l01)) {
            return false;
        }
        l01 l01Var = (l01) obj;
        if (this.a.equals(l01Var.a)) {
            return Arrays.equals(this.b, l01Var.b);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b) ^ ((this.a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "EncodedPayload{encoding=" + this.a + ", bytes=[...]}";
    }
}
