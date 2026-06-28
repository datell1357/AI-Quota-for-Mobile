package defpackage;

import java.net.URL;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class h30 {
    public long a;
    public int b;
    public Object c;

    public h30(int i, URL url, long j) {
        this.b = i;
        this.c = url;
        this.a = j;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean a() {
        /*
            r4 = this;
            monitor-enter(r4)
            int r0 = r4.b     // Catch: java.lang.Throwable -> L1b
            if (r0 == 0) goto L1d
            java.lang.Object r0 = r4.c     // Catch: java.lang.Throwable -> L1b
            j94 r0 = (defpackage.j94) r0     // Catch: java.lang.Throwable -> L1b
            ls3 r0 = r0.a     // Catch: java.lang.Throwable -> L1b
            r0.getClass()     // Catch: java.lang.Throwable -> L1b
            long r0 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L1b
            long r2 = r4.a     // Catch: java.lang.Throwable -> L1b
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 <= 0) goto L19
            goto L1d
        L19:
            r0 = 0
            goto L1e
        L1b:
            r0 = move-exception
            goto L20
        L1d:
            r0 = 1
        L1e:
            monitor-exit(r4)
            return r0
        L20:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L1b
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.h30.a():boolean");
    }

    public synchronized void b(int i) {
        long jMin;
        if ((i >= 200 && i < 300) || i == 401 || i == 404) {
            synchronized (this) {
                this.b = 0;
            }
            return;
        }
        this.b++;
        synchronized (this) {
            if (i == 429 || (i >= 500 && i < 600)) {
                double dPow = Math.pow(2.0d, this.b);
                ((j94) this.c).getClass();
                jMin = (long) Math.min(dPow + ((long) (Math.random() * 1000.0d)), 1800000.0d);
            } else {
                jMin = 86400000;
            }
            ((j94) this.c).a.getClass();
            this.a = System.currentTimeMillis() + jMin;
        }
        return;
    }
}
