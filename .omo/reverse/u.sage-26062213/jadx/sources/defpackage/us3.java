package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class us3 implements CharSequence {
    public char[] n;
    public String o;

    @Override // java.lang.CharSequence
    public final char charAt(int i) {
        return this.n[i];
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.n.length;
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i, int i2) {
        return new String(this.n, i, i2 - i);
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        if (this.o == null) {
            this.o = new String(this.n);
        }
        return this.o;
    }
}
