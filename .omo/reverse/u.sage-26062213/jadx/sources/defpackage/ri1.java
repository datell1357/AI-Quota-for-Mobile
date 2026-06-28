package defpackage;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ri1 implements GenericArrayType {
    public final Type n;

    public ri1(Type type) {
        Objects.requireNonNull(type);
        this.n = gg4.i(type);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof GenericArrayType) && gg4.s(this, (GenericArrayType) obj);
    }

    @Override // java.lang.reflect.GenericArrayType
    public final Type getGenericComponentType() {
        return this.n;
    }

    public final int hashCode() {
        return this.n.hashCode();
    }

    public final String toString() {
        return gg4.U(this.n) + "[]";
    }
}
