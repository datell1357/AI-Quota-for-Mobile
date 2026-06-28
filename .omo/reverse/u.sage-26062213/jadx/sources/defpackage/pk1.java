package defpackage;

import java.io.IOException;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pk1 extends nk1 {
    public long r;
    public boolean s;
    public final /* synthetic */ sk1 t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pk1(sk1 sk1Var, cn1 cn1Var) {
        super(sk1Var, cn1Var);
        cn1Var.getClass();
        this.t = sk1Var;
        this.r = -1L;
        this.s = true;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        boolean zE;
        if (this.p) {
            return;
        }
        if (this.s) {
            TimeZone timeZone = hi4.a;
            TimeUnit.MILLISECONDS.getClass();
            try {
                zE = hi4.e(this, 100);
            } catch (IOException unused) {
                zE = false;
            }
            if (!zE) {
                this.t.b.k();
                b(sk1.f);
            }
        }
        this.p = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00c9, code lost:
    
        if (r18.s == false) goto L48;
     */
    @Override // defpackage.nk1, defpackage.yp3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long l(long r19, defpackage.sy r21) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pk1.l(long, sy):long");
    }
}
