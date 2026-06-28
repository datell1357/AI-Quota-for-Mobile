package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mp2 implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {
    public final View n;
    public ViewTreeObserver o;
    public final Runnable p;

    public mp2(View view, Runnable runnable) {
        this.n = view;
        this.o = view.getViewTreeObserver();
        this.p = runnable;
    }

    public static void a(View view, Runnable runnable) {
        if (view == null) {
            q73.r("view == null");
            return;
        }
        mp2 mp2Var = new mp2(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(mp2Var);
        view.addOnAttachStateChangeListener(mp2Var);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        boolean zIsAlive = this.o.isAlive();
        View view = this.n;
        if (zIsAlive) {
            this.o.removeOnPreDrawListener(this);
        } else {
            view.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        view.removeOnAttachStateChangeListener(this);
        this.p.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.o = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        boolean zIsAlive = this.o.isAlive();
        View view2 = this.n;
        if (zIsAlive) {
            this.o.removeOnPreDrawListener(this);
        } else {
            view2.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        view2.removeOnAttachStateChangeListener(this);
    }
}
