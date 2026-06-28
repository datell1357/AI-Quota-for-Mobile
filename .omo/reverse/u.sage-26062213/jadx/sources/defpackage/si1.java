package defpackage;

import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class si1 implements ParameterizedType {
    public final Type n;
    public final Type o;
    public final Type[] p;

    public si1(Type type, Class cls, Type... typeArr) {
        Objects.requireNonNull(cls);
        if (type == null && !Modifier.isStatic(cls.getModifiers()) && cls.getDeclaringClass() != null) {
            p61.i(cls, "Must specify owner type for ");
            throw null;
        }
        this.n = type != null ? gg4.i(type) : null;
        this.o = gg4.i(cls);
        Type[] typeArr2 = (Type[]) typeArr.clone();
        this.p = typeArr2;
        int length = typeArr2.length;
        for (int i = 0; i < length; i++) {
            Objects.requireNonNull(this.p[i]);
            gg4.n(this.p[i]);
            Type[] typeArr3 = this.p;
            typeArr3[i] = gg4.i(typeArr3[i]);
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ParameterizedType) && gg4.s(this, (ParameterizedType) obj);
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type[] getActualTypeArguments() {
        return (Type[]) this.p.clone();
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getOwnerType() {
        return this.n;
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getRawType() {
        return this.o;
    }

    public final int hashCode() {
        int iHashCode = Arrays.hashCode(this.p) ^ this.o.hashCode();
        Type type = this.n;
        return (type != null ? type.hashCode() : 0) ^ iHashCode;
    }

    public final String toString() {
        Type[] typeArr = this.p;
        int length = typeArr.length;
        Type type = this.o;
        if (length == 0) {
            return gg4.U(type);
        }
        StringBuilder sb = new StringBuilder((length + 1) * 30);
        sb.append(gg4.U(type));
        sb.append("<");
        sb.append(gg4.U(typeArr[0]));
        for (int i = 1; i < length; i++) {
            sb.append(", ");
            sb.append(gg4.U(typeArr[i]));
        }
        sb.append(">");
        return sb.toString();
    }
}
