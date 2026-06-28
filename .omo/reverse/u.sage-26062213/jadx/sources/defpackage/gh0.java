package defpackage;

import android.os.OutcomeReceiver;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gh0 extends AtomicBoolean implements OutcomeReceiver {
    public final o20 n;

    public gh0(o20 o20Var) {
        super(false);
        this.n = o20Var;
    }

    public final void onError(Throwable th) {
        if (compareAndSet(false, true)) {
            this.n.g(gg4.q(th));
        }
    }

    public final void onResult(Object obj) {
        if (compareAndSet(false, true)) {
            this.n.g(obj);
        }
    }

    @Override // java.util.concurrent.atomic.AtomicBoolean
    public final String toString() {
        return "ContinuationOutcomeReceiver(outcomeReceived = " + get() + ')';
    }
}
