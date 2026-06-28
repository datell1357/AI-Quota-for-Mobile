package defpackage;

import android.graphics.drawable.Drawable;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ks2 {
    public final Object a;
    public final Object b;

    public ks2(CharSequence charSequence, Drawable drawable) {
        this.a = charSequence;
        this.b = drawable;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ks2)) {
            return false;
        }
        ks2 ks2Var = (ks2) obj;
        return Objects.equals(ks2Var.a, this.a) && Objects.equals(ks2Var.b, this.b);
    }

    public final int hashCode() {
        Object obj = this.a;
        int iHashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.b;
        return iHashCode ^ (obj2 != null ? obj2.hashCode() : 0);
    }

    public final String toString() {
        return "Pair{" + this.a + " " + this.b + "}";
    }
}
