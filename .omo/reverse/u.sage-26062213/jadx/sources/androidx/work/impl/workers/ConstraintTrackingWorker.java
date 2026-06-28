package androidx.work.impl.workers;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import defpackage.ca;
import defpackage.dh0;
import defpackage.ht4;
import defpackage.x50;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ConstraintTrackingWorker extends CoroutineWorker {
    public final WorkerParameters g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConstraintTrackingWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        context.getClass();
        workerParameters.getClass();
        this.g = workerParameters;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object d(androidx.work.impl.workers.ConstraintTrackingWorker r4, defpackage.v42 r5, defpackage.ct2 r6, defpackage.og4 r7, defpackage.fh0 r8) {
        /*
            boolean r0 = r8 instanceof defpackage.ff0
            if (r0 == 0) goto L13
            r0 = r8
            ff0 r0 = (defpackage.ff0) r0
            int r1 = r0.s
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.s = r1
            goto L18
        L13:
            ff0 r0 = new ff0
            r0.<init>(r4, r8)
        L18:
            java.lang.Object r4 = r0.q
            int r8 = r0.s
            r1 = 0
            r2 = 1
            if (r8 == 0) goto L2c
            if (r8 != r2) goto L26
            defpackage.gg4.T(r4)
            goto L3f
        L26:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r4)
            return r1
        L2c:
            defpackage.gg4.T(r4)
            rd r4 = new rd
            r4.<init>(r5, r6, r7, r1)
            r0.s = r2
            java.lang.Object r4 = defpackage.dm0.r(r4, r0)
            ri0 r5 = defpackage.ri0.n
            if (r4 != r5) goto L3f
            return r5
        L3f:
            r4.getClass()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.workers.ConstraintTrackingWorker.d(androidx.work.impl.workers.ConstraintTrackingWorker, v42, ct2, og4, fh0):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object e(androidx.work.impl.workers.ConstraintTrackingWorker r20, defpackage.fh0 r21) {
        /*
            Method dump skipped, instruction units count: 456
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.workers.ConstraintTrackingWorker.e(androidx.work.impl.workers.ConstraintTrackingWorker, fh0):java.lang.Object");
    }

    @Override // androidx.work.CoroutineWorker
    public final Object c(dh0 dh0Var) {
        ExecutorService executorService = this.b.d;
        executorService.getClass();
        return ca.O(ht4.p(executorService), new x50(this, (dh0) null, 1), dh0Var);
    }
}
