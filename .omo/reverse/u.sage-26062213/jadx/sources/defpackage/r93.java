package defpackage;

import u.sage.worker.RollingWindowWorker;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class r93 extends fh0 {
    public /* synthetic */ Object q;
    public final /* synthetic */ RollingWindowWorker r;
    public int s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r93(RollingWindowWorker rollingWindowWorker, fh0 fh0Var) {
        super(fh0Var);
        this.r = rollingWindowWorker;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.q = obj;
        this.s |= Integer.MIN_VALUE;
        return this.r.c(this);
    }
}
