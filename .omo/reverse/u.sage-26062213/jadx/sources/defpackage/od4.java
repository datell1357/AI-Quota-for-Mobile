package defpackage;

import android.view.WindowInsetsAnimation;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class od4 extends pd4 {
    public final WindowInsetsAnimation e;

    public od4(WindowInsetsAnimation windowInsetsAnimation) {
        super(0, null, 0L);
        this.e = windowInsetsAnimation;
    }

    @Override // defpackage.pd4
    public final long a() {
        return this.e.getDurationMillis();
    }

    @Override // defpackage.pd4
    public final float b() {
        return this.e.getInterpolatedFraction();
    }

    @Override // defpackage.pd4
    public final int c() {
        return this.e.getTypeMask();
    }

    @Override // defpackage.pd4
    public final void d(float f) {
        this.e.setFraction(f);
    }
}
