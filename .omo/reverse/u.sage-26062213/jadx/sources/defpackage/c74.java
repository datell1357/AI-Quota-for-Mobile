package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class c74 extends y73 implements yp3 {
    public final pb2 o;
    public final long p;

    public c74(pb2 pb2Var, long j) {
        this.o = pb2Var;
        this.p = j;
    }

    @Override // defpackage.y73
    public final fz a0() {
        return new d23(this);
    }

    @Override // defpackage.y73
    public final long b() {
        return this.p;
    }

    @Override // defpackage.yp3
    public final mz3 g() {
        return mz3.d;
    }

    @Override // defpackage.y73
    public final pb2 j() {
        return this.o;
    }

    @Override // defpackage.yp3
    public final long l(long j, sy syVar) {
        syVar.getClass();
        throw new IllegalStateException("Unreadable ResponseBody! These Response objects have bodies that are stripped:\n * Response.cacheResponse\n * Response.networkResponse\n * Response.priorResponse\n * EventSourceListener\n * WebSocketListener\n(It is safe to call contentType() and contentLength() on these response bodies.)");
    }

    @Override // defpackage.y73, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
