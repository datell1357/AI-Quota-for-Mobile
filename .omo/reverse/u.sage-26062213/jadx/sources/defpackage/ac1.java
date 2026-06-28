package defpackage;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ac1 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ p5 o;

    public /* synthetic */ ac1(p5 p5Var, int i) {
        this.n = i;
        this.o = p5Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.n;
        p5 p5Var = this.o;
        switch (i) {
            case 0:
                ViewParent parent = p5Var.q.getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                break;
            default:
                p5Var.a();
                View view = p5Var.q;
                if (view.isEnabled() && !view.isLongClickable() && p5Var.c()) {
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                    view.onTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                    p5Var.t = true;
                    break;
                }
                break;
        }
    }
}
