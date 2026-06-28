package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s04 {
    public static final s04 b = new s04((byte) 0);
    public final byte a;

    public s04(byte b2) {
        this.a = b2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof s04) && this.a == ((s04) obj).a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new byte[]{this.a});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TraceOptions{sampled=");
        sb.append((this.a & 1) != 0);
        sb.append("}");
        return sb.toString();
    }
}
