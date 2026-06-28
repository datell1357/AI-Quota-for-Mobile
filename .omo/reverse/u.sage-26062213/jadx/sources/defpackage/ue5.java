package defpackage;

import android.text.TextUtils;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ue5 {
    public final z43 a;
    public final z43 b;
    public final UUID c;

    public ue5(z43 z43Var, z43 z43Var2, UUID uuid) {
        this.a = z43Var;
        this.b = z43Var2;
        this.c = uuid;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ue5)) {
            return false;
        }
        ue5 ue5Var = (ue5) obj;
        return this.a.equals(ue5Var.a) && this.b.equals(ue5Var.b) && this.c.equals(ue5Var.c);
    }

    public final int hashCode() {
        return (this.c.hashCode() ^ ((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003)) * 1000003;
    }

    public final String toString() {
        return TextUtils.join(" -> ", this.a);
    }
}
