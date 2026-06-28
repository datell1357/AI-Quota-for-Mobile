package defpackage;

import java.io.Closeable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class y73 implements Closeable {
    public static final x73 n;

    static {
        g00 g00Var = g00.q;
        g00Var.getClass();
        sy syVar = new sy();
        syVar.j0(g00Var);
        n = new x73(g00Var.n.length, syVar);
    }

    public abstract fz a0();

    public abstract long b();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        fi4.a(a0());
    }

    public abstract pb2 j();
}
