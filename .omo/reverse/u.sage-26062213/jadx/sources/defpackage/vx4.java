package defpackage;

import java.io.Serializable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vx4 implements Serializable, rx4 {
    public final Object n;

    public vx4(Object obj) {
        this.n = obj;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof vx4)) {
            return false;
        }
        Object obj2 = ((vx4) obj).n;
        Object obj3 = this.n;
        return obj3 == obj2 || obj3.equals(obj2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.n});
    }

    public final String toString() {
        return di0.v("Suppliers.ofInstance(", this.n.toString(), ")");
    }

    @Override // defpackage.rx4
    public final Object zza() {
        return this.n;
    }
}
