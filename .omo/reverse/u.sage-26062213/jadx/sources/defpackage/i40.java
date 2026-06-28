package defpackage;

import java.text.CharacterIterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i40 implements CharacterIterator {
    public final CharSequence n;
    public final int o;
    public int p = 0;

    public i40(int i, CharSequence charSequence) {
        this.n = charSequence;
        this.o = i;
    }

    @Override // java.text.CharacterIterator
    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override // java.text.CharacterIterator
    public final char current() {
        int i = this.p;
        if (i == this.o) {
            return (char) 65535;
        }
        return this.n.charAt(i);
    }

    @Override // java.text.CharacterIterator
    public final char first() {
        this.p = 0;
        return current();
    }

    @Override // java.text.CharacterIterator
    public final int getBeginIndex() {
        return 0;
    }

    @Override // java.text.CharacterIterator
    public final int getEndIndex() {
        return this.o;
    }

    @Override // java.text.CharacterIterator
    public final int getIndex() {
        return this.p;
    }

    @Override // java.text.CharacterIterator
    public final char last() {
        int i = this.o;
        if (i == 0) {
            this.p = i;
            return (char) 65535;
        }
        int i2 = i - 1;
        this.p = i2;
        return this.n.charAt(i2);
    }

    @Override // java.text.CharacterIterator
    public final char next() {
        int i = this.p + 1;
        this.p = i;
        int i2 = this.o;
        if (i < i2) {
            return this.n.charAt(i);
        }
        this.p = i2;
        return (char) 65535;
    }

    @Override // java.text.CharacterIterator
    public final char previous() {
        int i = this.p;
        if (i <= 0) {
            return (char) 65535;
        }
        int i2 = i - 1;
        this.p = i2;
        return this.n.charAt(i2);
    }

    @Override // java.text.CharacterIterator
    public final char setIndex(int i) {
        if (i > this.o || i < 0) {
            k21.f("invalid position");
            return (char) 0;
        }
        this.p = i;
        return current();
    }
}
