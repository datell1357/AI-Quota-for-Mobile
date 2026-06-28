package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mr {
    public int a;
    public byte[] b;
    public int c;
    public int d;
    public boolean e;
    public int f;
    public int g;

    public final String toString() {
        return mr.class.getSimpleName() + "[buffer=" + Arrays.toString(this.b) + ", currentLinePos=" + this.f + ", eof=" + this.e + ", ibitWorkArea=" + this.a + ", lbitWorkArea=0, modulus=" + this.g + ", pos=" + this.c + ", readPos=" + this.d + "]";
    }
}
