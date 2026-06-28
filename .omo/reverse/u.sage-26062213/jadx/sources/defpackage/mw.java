package defpackage;

import java.io.EOFException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mw implements kn3 {
    @Override // defpackage.kn3
    public final void J(long j, sy syVar) throws EOFException {
        syVar.skip(j);
    }

    @Override // defpackage.kn3
    public final mz3 g() {
        return mz3.d;
    }

    @Override // defpackage.kn3, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
    }

    @Override // defpackage.kn3, java.io.Flushable
    public final void flush() {
    }
}
