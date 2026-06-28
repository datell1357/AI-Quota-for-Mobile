package defpackage;

import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cj4 extends Drawable implements Drawable.Callback {
    public boolean A;
    public int B;
    public long o;
    public int p;
    public int r;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f52u;
    public final aj4 v;
    public Drawable w;
    public Drawable x;
    public boolean y;
    public boolean z;
    public int n = 0;
    public int q = 255;
    public int s = 0;
    public final boolean t = true;

    public cj4(aj4 aj4Var) {
        aj4 aj4Var2 = new aj4();
        if (aj4Var != null) {
            aj4Var2.a = aj4Var.a;
            aj4Var2.b = aj4Var.b;
        }
        this.v = aj4Var2;
    }

    public final boolean a() {
        if (!this.y) {
            boolean z = false;
            if (this.w.getConstantState() != null && this.x.getConstantState() != null) {
                z = true;
            }
            this.z = z;
            this.y = true;
        }
        return this.z;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void draw(android.graphics.Canvas r8) {
        /*
            r7 = this;
            int r0 = r7.n
            r1 = 2
            r2 = 0
            r3 = 1
            if (r0 == r3) goto L3a
            if (r0 == r1) goto Lb
        L9:
            r4 = r3
            goto L43
        Lb:
            long r0 = r7.o
            r4 = 0
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 < 0) goto L9
            long r0 = android.os.SystemClock.uptimeMillis()
            long r4 = r7.o
            long r0 = r0 - r4
            int r4 = r7.r
            float r4 = (float) r4
            float r0 = (float) r0
            float r0 = r0 / r4
            r1 = 1065353216(0x3f800000, float:1.0)
            int r4 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r4 < 0) goto L27
            r4 = r3
            goto L28
        L27:
            r4 = r2
        L28:
            if (r4 == 0) goto L2c
            r7.n = r2
        L2c:
            float r0 = java.lang.Math.min(r0, r1)
            int r1 = r7.p
            float r1 = (float) r1
            float r1 = r1 * r0
            r0 = 0
            float r1 = r1 + r0
            int r0 = (int) r1
            r7.s = r0
            goto L43
        L3a:
            long r4 = android.os.SystemClock.uptimeMillis()
            r7.o = r4
            r7.n = r1
            r4 = r2
        L43:
            int r0 = r7.s
            android.graphics.drawable.Drawable r1 = r7.w
            android.graphics.drawable.Drawable r5 = r7.x
            boolean r6 = r7.t
            if (r4 == 0) goto L62
            if (r6 == 0) goto L52
            if (r0 != 0) goto L57
            goto L53
        L52:
            r2 = r0
        L53:
            r1.draw(r8)
            r0 = r2
        L57:
            int r7 = r7.q
            if (r0 != r7) goto L61
            r5.setAlpha(r7)
            r5.draw(r8)
        L61:
            return
        L62:
            if (r6 == 0) goto L6b
            int r2 = r7.q
            int r2 = r2 - r0
            r1.setAlpha(r2)
            r2 = r3
        L6b:
            r1.draw(r8)
            if (r2 == 0) goto L75
            int r2 = r7.q
            r1.setAlpha(r2)
        L75:
            if (r0 <= 0) goto L82
            r5.setAlpha(r0)
            r5.draw(r8)
            int r8 = r7.q
            r5.setAlpha(r8)
        L82:
            r7.invalidateSelf()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cj4.draw(android.graphics.Canvas):void");
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        aj4 aj4Var = this.v;
        return aj4Var.b | changingConfigurations | aj4Var.a;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (!a()) {
            return null;
        }
        int changingConfigurations = getChangingConfigurations();
        aj4 aj4Var = this.v;
        aj4Var.a = changingConfigurations;
        return aj4Var;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return Math.max(this.w.getIntrinsicHeight(), this.x.getIntrinsicHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return Math.max(this.w.getIntrinsicWidth(), this.x.getIntrinsicWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        if (!this.A) {
            this.B = Drawable.resolveOpacity(this.w.getOpacity(), this.x.getOpacity());
            this.A = true;
        }
        return this.B;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (this.f52u || super.mutate() != this) {
            return this;
        }
        if (!a()) {
            k21.n("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
            return null;
        }
        this.w.mutate();
        this.x.mutate();
        this.f52u = true;
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        this.w.setBounds(rect);
        this.x.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.s == this.q) {
            this.s = i;
        }
        this.q = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.w.setColorFilter(colorFilter);
        this.x.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }
}
