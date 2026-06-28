package defpackage;

import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;
import u.sage.worker.RollingWindowWorker;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t93 extends fh0 {
    public pi1 A;
    public String B;
    public /* synthetic */ Object C;
    public final /* synthetic */ RollingWindowWorker D;
    public int E;
    public long q;
    public boolean r;
    public boolean s;
    public int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Context f334u;
    public r50 v;
    public jf w;
    public p50 x;
    public n8 y;
    public v50 z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t93(RollingWindowWorker rollingWindowWorker, fh0 fh0Var) {
        super(fh0Var);
        this.D = rollingWindowWorker;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.C = obj;
        this.E |= Integer.MIN_VALUE;
        AtomicBoolean atomicBoolean = RollingWindowWorker.g;
        return this.D.d(0L, false, 0, this);
    }
}
