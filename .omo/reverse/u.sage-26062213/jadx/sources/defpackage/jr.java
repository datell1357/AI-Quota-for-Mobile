package defpackage;

import java.math.RoundingMode;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jr extends lr {
    public final kr c;

    public jr(kr krVar) {
        this.c = krVar;
    }

    @Override // defpackage.lr
    public final int b(byte[] bArr, CharSequence charSequence) {
        StringBuilder sb = new StringBuilder(charSequence.length());
        for (int i = 0; i < charSequence.length(); i++) {
            char cCharAt = charSequence.charAt(i);
            if ("\n".indexOf(cCharAt) < 0) {
                sb.append(cCharAt);
            }
        }
        return this.c.b(bArr, sb);
    }

    @Override // defpackage.lr
    public final void d(Appendable appendable, byte[] bArr, int i) {
        this.c.d(new er(appendable), bArr, i);
    }

    @Override // defpackage.lr
    public final int e(int i) {
        return this.c.e(i);
    }

    @Override // defpackage.lr
    public final int f(int i) {
        int iF = this.c.f(i);
        return w80.s(Math.max(0, iF - 1), 64, RoundingMode.FLOOR) + iF;
    }

    @Override // defpackage.lr
    public final CharSequence g(CharSequence charSequence) {
        return this.c.g(charSequence);
    }

    public final String toString() {
        return this.c + ".withSeparator(\"\n\", 64)";
    }
}
