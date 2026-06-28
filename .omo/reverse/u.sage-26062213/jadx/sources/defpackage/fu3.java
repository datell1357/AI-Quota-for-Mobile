package defpackage;

import java.io.Serializable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fu3 implements cu3, Serializable {
    public final Object n;

    public fu3(Object obj) {
        this.n = obj;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof fu3) {
            return ca.o(this.n, ((fu3) obj).n);
        }
        return false;
    }

    @Override // defpackage.cu3
    public final Object get() {
        return this.n;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.n});
    }

    public final String toString() {
        return "Suppliers.ofInstance(" + this.n + ")";
    }
}
