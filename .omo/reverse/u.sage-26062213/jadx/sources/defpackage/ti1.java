package defpackage;

import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ti1 implements WildcardType {
    public final Type n;
    public final Type o;

    public ti1(Type[] typeArr, Type[] typeArr2) {
        if (typeArr2.length > 1) {
            k21.f("At most one lower bound is supported");
            throw null;
        }
        if (typeArr.length != 1) {
            k21.f("Exactly one upper bound must be specified");
            throw null;
        }
        if (typeArr2.length != 1) {
            Objects.requireNonNull(typeArr[0]);
            gg4.n(typeArr[0]);
            this.o = null;
            this.n = gg4.i(typeArr[0]);
            return;
        }
        Objects.requireNonNull(typeArr2[0]);
        gg4.n(typeArr2[0]);
        if (typeArr[0] != Object.class) {
            k21.f("When lower bound is specified, upper bound must be Object");
            throw null;
        }
        this.o = gg4.i(typeArr2[0]);
        this.n = Object.class;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof WildcardType) && gg4.s(this, (WildcardType) obj);
    }

    @Override // java.lang.reflect.WildcardType
    public final Type[] getLowerBounds() {
        Type type = this.o;
        return type != null ? new Type[]{type} : gg4.b;
    }

    @Override // java.lang.reflect.WildcardType
    public final Type[] getUpperBounds() {
        return new Type[]{this.n};
    }

    public final int hashCode() {
        Type type = this.o;
        return (this.n.hashCode() + 31) ^ (type != null ? type.hashCode() + 31 : 1);
    }

    public final String toString() {
        Type type = this.o;
        if (type != null) {
            return "? super " + gg4.U(type);
        }
        Type type2 = this.n;
        if (type2 == Object.class) {
            return "?";
        }
        return "? extends " + gg4.U(type2);
    }
}
