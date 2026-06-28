package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class n32 implements Iterator, fx1 {
    public final String n;
    public int o;
    public int p;
    public int q;
    public int r;

    public n32(String str) {
        this.n = str;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i;
        int i2;
        int i3 = this.o;
        if (i3 != 0) {
            return i3 == 1;
        }
        if (this.r < 0) {
            this.o = 2;
            return false;
        }
        String str = this.n;
        int length = str.length();
        int length2 = str.length();
        for (int i4 = this.p; i4 < length2; i4++) {
            char cCharAt = str.charAt(i4);
            if (cCharAt == '\n' || cCharAt == '\r') {
                i = (cCharAt == '\r' && (i2 = i4 + 1) < str.length() && str.charAt(i2) == '\n') ? 2 : 1;
                length = i4;
                this.o = 1;
                this.r = i;
                this.q = length;
                return true;
            }
        }
        i = -1;
        this.o = 1;
        this.r = i;
        this.q = length;
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            p61.v();
            return null;
        }
        this.o = 0;
        int i = this.q;
        int i2 = this.p;
        this.p = this.r + i;
        return this.n.subSequence(i2, i).toString();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
