package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nc2 implements Cloneable {
    public static final nc2 p = new nc2(-1, -1);
    public final int n;
    public final int o;

    public nc2(int i, int i2) {
        this.n = i;
        this.o = i2;
    }

    public final Object clone() {
        return (nc2) super.clone();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[maxLineLength=");
        sb.append(this.n);
        sb.append(", maxHeaderCount=");
        return xw1.p(this.o, "]", sb);
    }
}
