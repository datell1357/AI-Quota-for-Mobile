package androidx.work.impl.workers;

import android.content.Context;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import defpackage.ba4;
import defpackage.eg4;
import defpackage.ga3;
import defpackage.gg4;
import defpackage.ig4;
import defpackage.jt0;
import defpackage.jy;
import defpackage.qg4;
import defpackage.t42;
import defpackage.t72;
import defpackage.tg4;
import defpackage.xv3;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class DiagnosticsWorker extends Worker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiagnosticsWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        context.getClass();
        workerParameters.getClass();
    }

    @Override // androidx.work.Worker
    public final t42 c() {
        eg4 eg4VarC = eg4.c(this.a);
        WorkDatabase workDatabase = eg4VarC.c;
        workDatabase.getClass();
        qg4 qg4VarW = workDatabase.w();
        ig4 ig4VarU = workDatabase.u();
        tg4 tg4VarX = workDatabase.x();
        xv3 xv3VarT = workDatabase.t();
        eg4VarC.b.d.getClass();
        List list = (List) gg4.N(qg4VarW.a, true, false, new jy(System.currentTimeMillis() - 86400000, 2));
        ga3 ga3Var = qg4VarW.a;
        List list2 = (List) gg4.N(ga3Var, true, false, new ba4(14));
        List list3 = (List) gg4.N(ga3Var, true, false, new ba4(18));
        if (!list.isEmpty()) {
            t72 t72VarG = t72.g();
            String str = jt0.a;
            t72VarG.h(str, "Recently completed work:\n\n");
            t72.g().h(str, jt0.a(ig4VarU, tg4VarX, xv3VarT, list));
        }
        if (!list2.isEmpty()) {
            t72 t72VarG2 = t72.g();
            String str2 = jt0.a;
            t72VarG2.h(str2, "Running work:\n\n");
            t72.g().h(str2, jt0.a(ig4VarU, tg4VarX, xv3VarT, list2));
        }
        if (!list3.isEmpty()) {
            t72 t72VarG3 = t72.g();
            String str3 = jt0.a;
            t72VarG3.h(str3, "Enqueued work:\n\n");
            t72.g().h(str3, jt0.a(ig4VarU, tg4VarX, xv3VarT, list3));
        }
        return new t42();
    }
}
