package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fo extends z31 {
    public final byte[] a;
    public final byte[] b;

    public fo(byte[] bArr, byte[] bArr2) {
        this.a = bArr;
        this.b = bArr2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof z31) {
            z31 z31Var = (z31) obj;
            boolean z = z31Var instanceof fo;
            fo foVar = (fo) z31Var;
            if (Arrays.equals(this.a, z ? foVar.a : foVar.a)) {
                fo foVar2 = (fo) z31Var;
                if (Arrays.equals(this.b, z ? foVar2.b : foVar2.b)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b) ^ ((Arrays.hashCode(this.a) ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "ExperimentIds{clearBlob=" + Arrays.toString(this.a) + ", encryptedBlob=" + Arrays.toString(this.b) + "}";
    }
}
