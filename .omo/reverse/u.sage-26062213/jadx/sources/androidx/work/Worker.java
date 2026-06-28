package androidx.work;

import android.content.Context;
import defpackage.e20;
import defpackage.jx3;
import defpackage.on4;
import defpackage.rr;
import defpackage.t42;
import defpackage.v42;
import defpackage.vc3;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class Worker extends v42 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Worker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        context.getClass();
        workerParameters.getClass();
    }

    @Override // defpackage.v42
    public final e20 a() {
        ExecutorService executorService = this.b.d;
        executorService.getClass();
        return on4.w(new rr(13, executorService, new jx3(7, this)));
    }

    @Override // defpackage.v42
    public final e20 b() {
        ExecutorService executorService = this.b.d;
        executorService.getClass();
        int i = 13;
        return on4.w(new rr(i, executorService, new vc3(i, this)));
    }

    public abstract t42 c();
}
