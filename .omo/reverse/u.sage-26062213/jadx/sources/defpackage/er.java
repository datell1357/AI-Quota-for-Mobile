package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class er implements Appendable {
    public int n = 64;
    public final /* synthetic */ Appendable o;

    public er(Appendable appendable) {
        this.o = appendable;
    }

    @Override // java.lang.Appendable
    public final Appendable append(char c) throws IOException {
        int i = this.n;
        Appendable appendable = this.o;
        if (i == 0) {
            appendable.append("\n");
            this.n = 64;
        }
        appendable.append(c);
        this.n--;
        return this;
    }

    @Override // java.lang.Appendable
    public final Appendable append(CharSequence charSequence, int i, int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.lang.Appendable
    public final Appendable append(CharSequence charSequence) {
        throw new UnsupportedOperationException();
    }
}
