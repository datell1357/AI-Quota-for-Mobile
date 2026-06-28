package defpackage;

import android.util.Base64;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hp {
    public final String a;
    public final byte[] b;
    public final ry2 c;

    public hp(String str, byte[] bArr, ry2 ry2Var) {
        this.a = str;
        this.b = bArr;
        this.c = ry2Var;
    }

    public static eh a() {
        eh ehVar = new eh(4, false);
        ehVar.q = ry2.n;
        return ehVar;
    }

    public final hp b(ry2 ry2Var) {
        eh ehVarA = a();
        ehVarA.G(this.a);
        if (ry2Var == null) {
            q73.r("Null priority");
            return null;
        }
        ehVarA.q = ry2Var;
        ehVarA.p = this.b;
        return ehVarA.k();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof hp) {
            hp hpVar = (hp) obj;
            if (this.a.equals(hpVar.a) && Arrays.equals(this.b, hpVar.b) && this.c.equals(hpVar.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.c.hashCode() ^ ((((this.a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.b)) * 1000003);
    }

    public final String toString() {
        byte[] bArr = this.b;
        String strEncodeToString = bArr == null ? "" : Base64.encodeToString(bArr, 2);
        StringBuilder sb = new StringBuilder("TransportContext(");
        sb.append(this.a);
        sb.append(", ");
        sb.append(this.c);
        sb.append(", ");
        return xw1.s(sb, strEncodeToString, ")");
    }
}
