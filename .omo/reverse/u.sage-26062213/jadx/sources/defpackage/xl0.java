package defpackage;

import java.io.Closeable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xl0 implements Closeable {
    public m03 n;
    public sk0 o;
    public m03 p;
    public t21 q;
    public m03 r;
    public m03 s;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ((ob3) this.r.get()).close();
    }
}
