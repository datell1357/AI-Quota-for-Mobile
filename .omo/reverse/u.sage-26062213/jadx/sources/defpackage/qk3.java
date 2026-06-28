package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qk3 {
    public final iz3 a;
    public final lm0 b;
    public final AtomicReference c;

    public qk3(hi0 hi0Var, iz3 iz3Var, lm0 lm0Var) {
        hi0Var.getClass();
        iz3Var.getClass();
        lm0Var.getClass();
        this.a = iz3Var;
        this.b = lm0Var;
        this.c = new AtomicReference();
        ca.y(dm0.c(hi0Var), null, null, new ok3(this, null, 0), 3);
    }

    public final dj3 a() throws Throwable {
        AtomicReference atomicReference = this.c;
        if (atomicReference.get() == null) {
            Object objH = ca.H(d01.n, new ok3(this, null, 1));
            while (!atomicReference.compareAndSet(null, objH) && atomicReference.get() == null) {
            }
        }
        Object obj = atomicReference.get();
        obj.getClass();
        return (dj3) obj;
    }

    public final boolean b() {
        Long l = a().e;
        Integer num = a().d;
        if (l == null || num == null) {
            return true;
        }
        this.a.getClass();
        return iz3.a().c - l.longValue() >= ((long) num.intValue());
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(defpackage.dj3 r5, defpackage.fh0 r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof defpackage.pk3
            if (r0 == 0) goto L13
            r0 = r6
            pk3 r0 = (defpackage.pk3) r0
            int r1 = r0.s
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.s = r1
            goto L18
        L13:
            pk3 r0 = new pk3
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.q
            int r1 = r0.s
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2c
            if (r1 != r3) goto L26
            defpackage.gg4.T(r6)     // Catch: java.io.IOException -> L42
            goto L56
        L26:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r4)
            return r2
        L2c:
            defpackage.gg4.T(r6)
            lm0 r4 = r4.b     // Catch: java.io.IOException -> L42
            x4 r6 = new x4     // Catch: java.io.IOException -> L42
            r1 = 4
            r6.<init>(r5, r2, r1)     // Catch: java.io.IOException -> L42
            r0.s = r3     // Catch: java.io.IOException -> L42
            java.lang.Object r4 = r4.a(r6, r0)     // Catch: java.io.IOException -> L42
            ri0 r5 = defpackage.ri0.n
            if (r4 != r5) goto L56
            return r5
        L42:
            r4 = move-exception
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r6 = "Failed to update config values: "
            r5.<init>(r6)
            r5.append(r4)
            java.lang.String r4 = r5.toString()
            java.lang.String r5 = "FirebaseSessions"
            android.util.Log.w(r5, r4)
        L56:
            t64 r4 = defpackage.t64.a
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qk3.c(dj3, fh0):java.lang.Object");
    }
}
