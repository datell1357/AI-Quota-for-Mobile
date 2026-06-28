package defpackage;

import android.graphics.drawable.Drawable;
import android.os.Handler;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class px0 implements Drawable.Callback {
    public final /* synthetic */ qx0 n;

    public px0(qx0 qx0Var) {
        this.n = qx0Var;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        drawable.getClass();
        qx0 qx0Var = this.n;
        ws2 ws2Var = qx0Var.t;
        ws2Var.setValue(Integer.valueOf(((Number) ws2Var.getValue()).intValue() + 1));
        qx0Var.f286u.setValue(new mn3(rx0.a(qx0Var.s)));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        drawable.getClass();
        runnable.getClass();
        ((Handler) rx0.a.getValue()).postAtTime(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        drawable.getClass();
        runnable.getClass();
        ((Handler) rx0.a.getValue()).removeCallbacks(runnable);
    }
}
