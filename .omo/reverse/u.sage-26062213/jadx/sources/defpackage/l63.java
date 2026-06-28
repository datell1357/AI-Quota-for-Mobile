package defpackage;

import java.io.InterruptedIOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class l63 extends InterruptedIOException {
    public l63(String str, Throwable th) {
        super(str);
        initCause(th);
    }

    public l63() {
        super("Request aborted");
    }
}
