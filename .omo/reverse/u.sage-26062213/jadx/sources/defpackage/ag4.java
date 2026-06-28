package defpackage;

import androidx.work.impl.WorkDatabase;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ag4 {
    public final qd1 a;
    public final ez2 b;
    public final qg4 c;

    static {
        t72.i("WMFgUpdater");
    }

    public ag4(WorkDatabase workDatabase, ez2 ez2Var, qd1 qd1Var) {
        this.b = ez2Var;
        this.a = qd1Var;
        this.c = workDatabase.w();
    }
}
