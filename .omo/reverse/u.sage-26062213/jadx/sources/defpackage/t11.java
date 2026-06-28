package defpackage;

import java.io.Serializable;
import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t11 extends j1 implements s11, RandomAccess, Serializable {
    public final Enum[] n;

    public t11(Enum[] enumArr) {
        this.n = enumArr;
    }

    @Override // defpackage.w
    public final int a() {
        return this.n.length;
    }

    @Override // defpackage.w, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (!(obj instanceof Enum)) {
            return false;
        }
        Enum r2 = (Enum) obj;
        return ((Enum) ji.Z(r2.ordinal(), this.n)) == r2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        Enum[] enumArr = this.n;
        int length = enumArr.length;
        if (i >= 0 && i < length) {
            return enumArr[i];
        }
        mk0.h(di0.p(i, length, "index: ", ", size: "));
        return null;
    }

    @Override // defpackage.j1, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Enum)) {
            return -1;
        }
        Enum r3 = (Enum) obj;
        int iOrdinal = r3.ordinal();
        if (((Enum) ji.Z(iOrdinal, this.n)) == r3) {
            return iOrdinal;
        }
        return -1;
    }

    @Override // defpackage.j1, java.util.List
    public final int lastIndexOf(Object obj) {
        if (!(obj instanceof Enum)) {
            return -1;
        }
        Enum r3 = (Enum) obj;
        int iOrdinal = r3.ordinal();
        if (((Enum) ji.Z(iOrdinal, this.n)) == r3) {
            return iOrdinal;
        }
        return -1;
    }
}
