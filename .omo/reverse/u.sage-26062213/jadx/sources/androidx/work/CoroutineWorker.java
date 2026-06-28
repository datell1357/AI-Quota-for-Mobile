package androidx.work;

import android.content.Context;
import defpackage.ca;
import defpackage.dh0;
import defpackage.e20;
import defpackage.hi0;
import defpackage.n44;
import defpackage.nt1;
import defpackage.ui0;
import defpackage.v42;
import defpackage.vi0;
import defpackage.vu1;
import defpackage.w80;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class CoroutineWorker extends v42 {
    public final WorkerParameters e;
    public final ui0 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        context.getClass();
        workerParameters.getClass();
        this.e = workerParameters;
        this.f = ui0.p;
    }

    @Override // defpackage.v42
    public final e20 a() {
        vu1 vu1VarE = n44.E();
        ui0 ui0Var = this.f;
        ui0Var.getClass();
        return w80.E(ca.B(ui0Var, vu1VarE), new vi0(this, null, 0));
    }

    @Override // defpackage.v42
    public final e20 b() {
        ui0 ui0Var = ui0.p;
        hi0 hi0Var = this.f;
        if (nt1.g(hi0Var, ui0Var)) {
            hi0Var = this.e.e;
        }
        hi0Var.getClass();
        return w80.E(hi0Var.F(n44.E()), new vi0(this, null, 1));
    }

    public abstract Object c(dh0 dh0Var);
}
