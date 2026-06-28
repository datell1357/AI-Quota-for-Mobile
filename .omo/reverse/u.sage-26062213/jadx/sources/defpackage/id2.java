package defpackage;

import android.os.Binder;
import android.os.Process;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class id2 implements Callable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public id2(o55 o55Var, bu4 bu4Var, String str) {
        this.a = 2;
        this.b = o55Var;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Object objOnLoadInBackground = null;
        switch (this.a) {
            case 0:
                ej ejVar = (ej) this.b;
                ejVar.q.set(true);
                try {
                    Process.setThreadPriority(10);
                    objOnLoadInBackground = ejVar.s.onLoadInBackground();
                    Binder.flushPendingCommands();
                    return objOnLoadInBackground;
                } finally {
                }
            case 1:
                return new p65(((w35) this.b).l);
            case 2:
                o55 o55Var = (o55) this.b;
                o55Var.c.V();
                i25 i25Var = o55Var.c.h;
                pb5.T(i25Var);
                i25Var.v();
                throw new IllegalStateException("Unexpected call on client side");
            default:
                pc4 pc4Var = (pc4) this.b;
                synchronized (((ce5) pc4Var.p).g) {
                    pc4Var.o = null;
                    break;
                }
                return null;
        }
    }

    public /* synthetic */ id2(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }
}
