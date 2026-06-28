package defpackage;

import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class r90 implements q90, ViewTreeObserver.OnDrawListener, Runnable {
    public final long n = SystemClock.uptimeMillis() + 10000;
    public Runnable o;
    public boolean p;
    public final /* synthetic */ u90 q;

    public r90(u90 u90Var) {
        this.q = u90Var;
    }

    public final void a(View view) {
        if (this.p) {
            return;
        }
        this.p = true;
        view.getViewTreeObserver().addOnDrawListener(this);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.getClass();
        this.o = runnable;
        View decorView = this.q.getWindow().getDecorView();
        decorView.getClass();
        if (!this.p) {
            decorView.postOnAnimation(new y(2, this));
        } else if (nt1.g(Looper.myLooper(), Looper.getMainLooper())) {
            decorView.invalidate();
        } else {
            decorView.postInvalidate();
        }
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public final void onDraw() {
        boolean z;
        Runnable runnable = this.o;
        if (runnable == null) {
            if (SystemClock.uptimeMillis() > this.n) {
                this.p = false;
                this.q.getWindow().getDecorView().post(this);
                return;
            }
            return;
        }
        runnable.run();
        this.o = null;
        me1 fullyDrawnReporter = this.q.getFullyDrawnReporter();
        synchronized (fullyDrawnReporter.a) {
            z = fullyDrawnReporter.b;
        }
        if (z) {
            this.p = false;
            this.q.getWindow().getDecorView().post(this);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.q.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(this);
    }
}
