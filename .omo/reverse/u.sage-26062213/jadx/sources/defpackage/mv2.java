package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mv2 {
    public final boolean a;
    public final int b;

    public mv2() {
        this.a = false;
        this.b = 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mv2)) {
            return false;
        }
        mv2 mv2Var = (mv2) obj;
        return this.a == mv2Var.a && this.b == mv2Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (Boolean.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "PlatformParagraphStyle(includeFontPadding=" + this.a + ", emojiSupportMatch=" + uz0.a(this.b) + ")";
    }

    public mv2(int i, boolean z) {
        this.a = z;
        this.b = i;
    }
}
