package defpackage;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ud5 implements fd5 {
    public boolean n;

    static {
        new AtomicInteger();
    }

    @Override // defpackage.fd5
    public final Object a(ed5 ed5Var) throws IOException {
        if (this.n) {
            if (ed5Var.b.isEmpty()) {
                return ed5Var.a.f(ed5Var.d);
            }
            throw new c70("Short circuit would skip transforms.");
        }
        Closeable closeableC = hu4.c(ed5Var);
        try {
            if (!(closeableC instanceof nd5)) {
                throw new IOException("Not convertible and fallback to pipe is disabled.");
            }
            File fileZza = ((nd5) closeableC).zza();
            if (closeableC != null) {
                closeableC.close();
            }
            return fileZza;
        } catch (Throwable th) {
            if (closeableC != null) {
                try {
                    closeableC.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}
