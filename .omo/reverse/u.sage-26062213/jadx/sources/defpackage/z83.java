package defpackage;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.animation.AnimationUtils;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class z83 extends View {
    public static final int[] s = {R.attr.state_pressed, R.attr.state_enabled};
    public static final int[] t = new int[0];
    public b74 n;
    public Boolean o;
    public Long p;
    public y q;
    public cc r;

    private final void setRippleState(boolean z) {
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        Runnable runnable = this.q;
        if (runnable != null) {
            removeCallbacks(runnable);
            runnable.run();
        }
        Long l = this.p;
        long jLongValue = jCurrentAnimationTimeMillis - (l != null ? l.longValue() : 0L);
        if (z || jLongValue >= 5) {
            int[] iArr = z ? s : t;
            b74 b74Var = this.n;
            if (b74Var != null) {
                b74Var.setState(iArr);
            }
        } else {
            y yVar = new y(7, this);
            this.q = yVar;
            postDelayed(yVar, 50L);
        }
        this.p = Long.valueOf(jCurrentAnimationTimeMillis);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setRippleState$lambda$1(z83 z83Var) {
        b74 b74Var = z83Var.n;
        if (b74Var != null) {
            b74Var.setState(t);
        }
        z83Var.q = null;
    }

    public final void b(hy2 hy2Var, boolean z, long j, int i, long j2, float f, cc ccVar) {
        if (this.n == null || !Boolean.valueOf(z).equals(this.o)) {
            b74 b74Var = new b74(z);
            setBackground(b74Var);
            this.n = b74Var;
            this.o = Boolean.valueOf(z);
        }
        b74 b74Var2 = this.n;
        b74Var2.getClass();
        this.r = ccVar;
        e(j, i, j2, f);
        if (z) {
            b74Var2.setHotspot(Float.intBitsToFloat((int) (hy2Var.a >> 32)), Float.intBitsToFloat((int) (hy2Var.a & 4294967295L)));
        } else {
            b74Var2.setHotspot(b74Var2.getBounds().centerX(), b74Var2.getBounds().centerY());
        }
        setRippleState(true);
    }

    public final void c() {
        this.r = null;
        y yVar = this.q;
        if (yVar != null) {
            removeCallbacks(yVar);
            y yVar2 = this.q;
            yVar2.getClass();
            yVar2.run();
        } else {
            b74 b74Var = this.n;
            if (b74Var != null) {
                b74Var.setState(t);
            }
        }
        b74 b74Var2 = this.n;
        if (b74Var2 == null) {
            return;
        }
        b74Var2.setVisible(false, false);
        unscheduleDrawable(b74Var2);
    }

    public final void d() {
        setRippleState(false);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        if (isAttachedToWindow()) {
            super.draw(canvas);
        } else {
            c();
        }
    }

    public final void e(long j, int i, long j2, float f) {
        b74 b74Var = this.n;
        if (b74Var == null) {
            return;
        }
        if (b74Var.getRadius() != i) {
            b74Var.setRadius(i);
        }
        if (Build.VERSION.SDK_INT < 28) {
            f *= 2.0f;
        }
        if (f > 1.0f) {
            f = 1.0f;
        }
        long jB = t70.b(f, j2);
        t70 t70Var = b74Var.o;
        if (!(t70Var == null ? false : t70.c(t70Var.a, jB))) {
            b74Var.o = new t70(jB);
            b74Var.setColor(ColorStateList.valueOf(c75.R(jB)));
        }
        Rect rect = new Rect(0, 0, is0.V(Float.intBitsToFloat((int) (j >> 32))), is0.V(Float.intBitsToFloat((int) (j & 4294967295L))));
        setLeft(rect.left);
        setTop(rect.top);
        setRight(rect.right);
        setBottom(rect.bottom);
        b74Var.setBounds(rect);
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) throws Exception {
        cc ccVar = this.r;
        if (ccVar != null) {
            ccVar.a();
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    @Override // android.view.View
    public final void refreshDrawableState() {
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }
}
