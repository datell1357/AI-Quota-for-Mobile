package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hc1 extends jc1 {
    public final /* synthetic */ wu4 a;
    public final /* synthetic */ AtomicReference b;
    public final /* synthetic */ g6 c;
    public final /* synthetic */ f6 d;
    public final /* synthetic */ lc1 e;

    public hc1(lc1 lc1Var, wu4 wu4Var, AtomicReference atomicReference, g6 g6Var, f6 f6Var) {
        this.e = lc1Var;
        this.a = wu4Var;
        this.b = atomicReference;
        this.c = g6Var;
        this.d = f6Var;
    }

    @Override // defpackage.jc1
    public final void a() {
        p6 activityResultRegistry;
        lc1 lc1Var = this.e;
        String strGenerateActivityResultKey = lc1Var.generateActivityResultKey();
        wu4 wu4Var = this.a;
        switch (wu4Var.n) {
            case 1:
                lc1 lc1Var2 = (lc1) wu4Var.o;
                Object obj = lc1Var2.mHost;
                activityResultRegistry = !(obj instanceof t6) ? lc1Var2.requireActivity().getActivityResultRegistry() : ((t6) obj).getActivityResultRegistry();
                break;
            default:
                activityResultRegistry = (p6) wu4Var.o;
                break;
        }
        this.b.set(activityResultRegistry.d(strGenerateActivityResultKey, lc1Var, this.c, this.d));
    }
}
