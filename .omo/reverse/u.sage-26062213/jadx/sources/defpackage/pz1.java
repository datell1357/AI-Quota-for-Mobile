package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pz1 extends Number {
    public final String n;

    public pz1(String str) {
        this.n = str;
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return Double.parseDouble(this.n);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof pz1) {
            return this.n.equals(((pz1) obj).n);
        }
        return false;
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return Float.parseFloat(this.n);
    }

    public final int hashCode() {
        return this.n.hashCode();
    }

    @Override // java.lang.Number
    public final int intValue() {
        String str = this.n;
        try {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                return (int) Long.parseLong(str);
            }
        } catch (NumberFormatException unused2) {
            return zf5.S(str).intValue();
        }
    }

    @Override // java.lang.Number
    public final long longValue() {
        String str = this.n;
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return zf5.S(str).longValue();
        }
    }

    public final String toString() {
        return this.n;
    }
}
