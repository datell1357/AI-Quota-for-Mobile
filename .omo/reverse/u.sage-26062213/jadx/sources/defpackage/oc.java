package defpackage;

import android.os.Looper;
import android.view.Choreographer;
import android.view.MotionEvent;
import android.view.View;
import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class oc extends xx1 implements pe1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ oc(int i, Object obj, Object obj2) {
        super(1);
        this.o = i;
        this.q = obj;
        this.p = obj2;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        switch (this.o) {
            case 0:
                nc ncVar = (nc) this.q;
                pc pcVar = (pc) this.p;
                synchronized (ncVar.r) {
                    ncVar.t.remove(pcVar);
                }
                return t64.a;
            case 1:
                ((Choreographer) ((qc) this.q).o).removeFrameCallback((pc) this.p);
                return t64.a;
            case 2:
                ((xy1) this.q).f0(((nd2) obj).c((nd2) this.p));
                return t64.a;
            case 3:
                cv2 cv2Var = (cv2) obj;
                dv2 dv2Var = (dv2) this.q;
                float fG = ((ng0) this.p).c.g();
                cv2Var.getClass();
                cv2.a(cv2Var, dv2Var);
                dv2Var.d0(js1.c(0L, dv2Var.r), fG, null);
                return t64.a;
            case 4:
                cv2.m((cv2) obj, (dv2) this.q, ((qw) this.p).B);
                return t64.a;
            case 5:
                Throwable th = (Throwable) obj;
                b20 b20Var = (b20) this.q;
                if (th == null) {
                    b20Var.a(((zq0) this.p).D());
                } else if (th instanceof CancellationException) {
                    b20Var.d = true;
                    e20 e20Var = b20Var.b;
                    if (e20Var != null && e20Var.o.cancel(true)) {
                        b20Var.a = null;
                        b20Var.b = null;
                        b20Var.c = null;
                    }
                } else {
                    b20Var.b(th);
                }
                return t64.a;
            case 6:
                MotionEvent motionEvent = (MotionEvent) obj;
                fw2 fw2Var = (fw2) this.p;
                if (motionEvent.getActionMasked() == 0) {
                    ((qd1) this.q).p = ((Boolean) ((wc) fw2Var.e()).k(motionEvent)).booleanValue() ? ew2.o : ew2.p;
                } else {
                    ((wc) fw2Var.e()).k(motionEvent);
                }
                return t64.a;
            case 7:
                cv2.m((cv2) obj, (dv2) this.q, ((xm3) this.p).N);
                return t64.a;
            default:
                pb0 pb0Var = (pb0) obj;
                df1 df1Var = (df1) this.p;
                mh4 mh4Var = (mh4) this.q;
                if (!mh4Var.p) {
                    p22 p22VarC = pb0Var.c();
                    View view = pb0Var.a;
                    h22 lifecycle = p22VarC.getLifecycle();
                    mh4Var.r = df1Var;
                    if (mh4Var.q == null) {
                        if (nt1.g(Looper.myLooper(), view.getHandler().getLooper())) {
                            mh4Var.q = lifecycle;
                            lifecycle.a(mh4Var);
                        } else {
                            view.post(new h7(22, mh4Var, lifecycle));
                        }
                    } else if (((r22) lifecycle).d.compareTo(g22.p) >= 0) {
                        mh4Var.o.B(new ka0(-1723985096, true, new ma(pb0Var, mh4Var, df1Var)));
                    }
                }
                return t64.a;
        }
    }
}
