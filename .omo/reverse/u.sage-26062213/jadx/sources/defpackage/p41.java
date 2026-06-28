package defpackage;

import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.LinkedBlockingDeque;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class p41 extends nw3 {
    public final /* synthetic */ wa3 e;
    public final /* synthetic */ q41 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p41(String str, wa3 wa3Var, q41 q41Var) {
        super(str);
        this.e = wa3Var;
        this.f = q41Var;
    }

    @Override // defpackage.nw3
    public final long a() throws InterruptedException {
        va3 va3Var;
        wa3 wa3Var = this.e;
        try {
            va3Var = wa3Var.e();
        } catch (Throwable th) {
            va3Var = new va3(wa3Var, th, 2);
        }
        q41 q41Var = this.f;
        if (!((CopyOnWriteArrayList) q41Var.q).contains(wa3Var)) {
            return -1L;
        }
        ((LinkedBlockingDeque) q41Var.r).put(va3Var);
        return -1L;
    }
}
