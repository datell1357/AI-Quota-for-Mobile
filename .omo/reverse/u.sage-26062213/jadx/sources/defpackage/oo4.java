package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class oo4 implements ls4 {
    public final boolean n;

    public oo4(Boolean bool) {
        this.n = bool == null ? false : bool.booleanValue();
    }

    @Override // defpackage.ls4
    public final Iterator a() {
        return null;
    }

    @Override // defpackage.ls4
    public final ls4 c(String str, qd1 qd1Var, ArrayList arrayList) {
        boolean zEquals = "toString".equals(str);
        boolean z = this.n;
        if (zEquals) {
            return new ss4(Boolean.toString(z));
        }
        throw new IllegalArgumentException(Boolean.toString(z) + "." + str + " is not a function.");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof oo4) && this.n == ((oo4) obj).n;
    }

    @Override // defpackage.ls4
    public final ls4 h() {
        return new oo4(Boolean.valueOf(this.n));
    }

    public final int hashCode() {
        return Boolean.valueOf(this.n).hashCode();
    }

    public final String toString() {
        return String.valueOf(this.n);
    }

    @Override // defpackage.ls4
    public final String zzc() {
        return Boolean.toString(this.n);
    }

    @Override // defpackage.ls4
    public final Double zzd() {
        return Double.valueOf(true != this.n ? 0.0d : 1.0d);
    }

    @Override // defpackage.ls4
    public final Boolean zze() {
        return Boolean.valueOf(this.n);
    }
}
