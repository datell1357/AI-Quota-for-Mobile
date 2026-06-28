package defpackage;

import android.view.ViewConfiguration;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tc implements nb4 {
    public final ViewConfiguration a;

    public tc(ViewConfiguration viewConfiguration) {
        this.a = viewConfiguration;
    }

    @Override // defpackage.nb4
    public final float a() {
        return this.a.getScaledMaximumFlingVelocity();
    }

    @Override // defpackage.nb4
    public final float b() {
        return this.a.getScaledTouchSlop();
    }
}
