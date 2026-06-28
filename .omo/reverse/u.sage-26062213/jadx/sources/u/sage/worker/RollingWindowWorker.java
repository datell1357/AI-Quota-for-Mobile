package u.sage.worker;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import defpackage.b23;
import defpackage.bi4;
import defpackage.eg4;
import defpackage.ez3;
import defpackage.it0;
import defpackage.n8;
import defpackage.np2;
import defpackage.op2;
import defpackage.ra3;
import defpackage.wr3;
import defpackage.xr3;
import defpackage.zl0;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class RollingWindowWorker extends CoroutineWorker {
    public static final AtomicBoolean g = new AtomicBoolean(false);
    public static final wr3 h;
    public static final b23 i;
    public static final wr3 j;
    public static final b23 k;

    static {
        wr3 wr3VarA = xr3.a(Boolean.FALSE);
        h = wr3VarA;
        i = new b23(wr3VarA);
        wr3 wr3VarA2 = xr3.a(null);
        j = wr3VarA2;
        k = new b23(wr3VarA2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RollingWindowWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        context.getClass();
        workerParameters.getClass();
    }

    public static void e(Context context, n8 n8Var, long j2, boolean z, int i2) {
        if (i2 >= 2) {
            it0.a("handleFailure: Max retries (2) reached. Giving up.");
            ez3.a.getClass();
            ra3.f(new Object[0]);
            Map mapSingletonMap = Collections.singletonMap("trigger_timestamp", String.valueOf(j2));
            mapSingletonMap.getClass();
            n8Var.d("rolling_window_gave_up", mapSingletonMap);
            return;
        }
        int i3 = i2 + 1;
        SimpleDateFormat simpleDateFormat = it0.a;
        it0.a("handleFailure: Scheduling retry " + i3 + "/2 in 10m.");
        ez3.a.getClass();
        ra3.m(new Object[0]);
        context.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("rolling_window_trigger_timestamp", Long.valueOf(j2));
        linkedHashMap.put("force_rolling_window", Boolean.valueOf(z));
        linkedHashMap.put("rolling_window_retry_count", Integer.valueOf(i3));
        zl0 zl0Var = new zl0(linkedHashMap);
        bi4.L(zl0Var);
        np2 np2VarB = new np2(RollingWindowWorker.class, 0).b(10L, TimeUnit.MINUTES);
        np2VarB.c.e = zl0Var;
        np2VarB.d.add("rolling_window_retry");
        eg4.c(context).b("rolling_window_work_retry", (op2) np2VarB.a());
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    @Override // androidx.work.CoroutineWorker
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(defpackage.dh0 r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: u.sage.worker.RollingWindowWorker.c(dh0):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0018  */
    /* JADX WARN: Type inference failed for: r1v12, types: [p50, r50] */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(long r26, boolean r28, int r29, defpackage.fh0 r30) {
        /*
            Method dump skipped, instruction units count: 627
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: u.sage.worker.RollingWindowWorker.d(long, boolean, int, fh0):java.lang.Object");
    }
}
