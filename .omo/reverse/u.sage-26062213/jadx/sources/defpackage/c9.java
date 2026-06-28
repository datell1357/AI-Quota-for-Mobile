package defpackage;

import android.os.Trace;
import android.view.MotionEvent;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c9 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ q9 o;

    public /* synthetic */ c9(q9 q9Var, int i) {
        this.n = i;
        this.o = q9Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.n;
        q9 q9Var = this.o;
        switch (i) {
            case 0:
                vh vhVar = q9Var.f275u;
                Trace.beginSection("AndroidOwner:outOfFrameExecutor");
                while (!vhVar.isEmpty()) {
                    try {
                        ((ne1) vhVar.removeLast()).a();
                    } finally {
                        Trace.endSection();
                    }
                    break;
                }
                return;
            case 1:
                q9Var.J0 = false;
                MotionEvent motionEvent = q9Var.z0;
                motionEvent.getClass();
                if (motionEvent.getActionMasked() == 10) {
                    q9Var.K(motionEvent);
                    return;
                } else {
                    k21.n("The ACTION_HOVER_EXIT event was not cleared.");
                    return;
                }
            case 2:
                q9.i(q9Var.getRoot());
                return;
            default:
                q9.i(q9Var.getRoot());
                return;
        }
    }
}
