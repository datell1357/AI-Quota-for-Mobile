package defpackage;

import java.util.concurrent.ScheduledFuture;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class j20 implements zm2 {
    public final /* synthetic */ int a;
    public final Object b;

    public /* synthetic */ j20(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    public final String toString() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                return "CancelFutureOnCancel[" + ((ScheduledFuture) obj) + ']';
            case 1:
                return "CancelHandler.UserSupplied[" + ((pe1) obj).getClass().getSimpleName() + '@' + qn0.u(this) + ']';
            default:
                return "DisposeOnCancel[" + ((jv0) obj) + ']';
        }
    }
}
