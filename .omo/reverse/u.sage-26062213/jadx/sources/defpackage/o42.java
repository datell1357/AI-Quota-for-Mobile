package defpackage;

import android.content.res.Resources;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o42 implements View.OnTouchListener {
    public static final int E = ViewConfiguration.getTapTimeout();
    public boolean A;
    public boolean B;
    public boolean C;
    public final yx0 D;
    public final am n;
    public final AccelerateInterpolator o;
    public final yx0 p;
    public o9 q;
    public final float[] r;
    public final float[] s;
    public final int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f235u;
    public final float[] v;
    public final float[] w;
    public final float[] x;
    public boolean y;
    public boolean z;

    public o42(yx0 yx0Var) {
        am amVar = new am();
        amVar.e = Long.MIN_VALUE;
        amVar.g = -1L;
        amVar.f = 0L;
        this.n = amVar;
        this.o = new AccelerateInterpolator();
        float[] fArr = {0.0f, 0.0f};
        this.r = fArr;
        float[] fArr2 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.s = fArr2;
        float[] fArr3 = {0.0f, 0.0f};
        this.v = fArr3;
        float[] fArr4 = {0.0f, 0.0f};
        this.w = fArr4;
        float[] fArr5 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.x = fArr5;
        this.p = yx0Var;
        float f = Resources.getSystem().getDisplayMetrics().density;
        float f2 = ((int) ((1575.0f * f) + 0.5f)) / 1000.0f;
        fArr5[0] = f2;
        fArr5[1] = f2;
        float f3 = ((int) ((f * 315.0f) + 0.5f)) / 1000.0f;
        fArr4[0] = f3;
        fArr4[1] = f3;
        this.t = 1;
        fArr2[0] = Float.MAX_VALUE;
        fArr2[1] = Float.MAX_VALUE;
        fArr[0] = 0.2f;
        fArr[1] = 0.2f;
        fArr3[0] = 0.001f;
        fArr3[1] = 0.001f;
        this.f235u = E;
        amVar.a = 500;
        amVar.b = 500;
        this.D = yx0Var;
    }

    public static float b(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float a(int r4, float r5, float r6, float r7) {
        /*
            r3 = this;
            float[] r0 = r3.r
            r0 = r0[r4]
            float[] r1 = r3.s
            r1 = r1[r4]
            float r0 = r0 * r6
            r2 = 0
            float r0 = b(r0, r2, r1)
            float r1 = r3.c(r5, r0)
            float r6 = r6 - r5
            float r5 = r3.c(r6, r0)
            float r5 = r5 - r1
            int r6 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            android.view.animation.AccelerateInterpolator r0 = r3.o
            if (r6 >= 0) goto L25
            float r5 = -r5
            float r5 = r0.getInterpolation(r5)
            float r5 = -r5
            goto L2d
        L25:
            int r6 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r6 <= 0) goto L36
            float r5 = r0.getInterpolation(r5)
        L2d:
            r6 = -1082130432(0xffffffffbf800000, float:-1.0)
            r0 = 1065353216(0x3f800000, float:1.0)
            float r5 = b(r5, r6, r0)
            goto L37
        L36:
            r5 = r2
        L37:
            int r6 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r6 != 0) goto L3c
            return r2
        L3c:
            float[] r0 = r3.v
            r0 = r0[r4]
            float[] r1 = r3.w
            r1 = r1[r4]
            float[] r3 = r3.x
            r3 = r3[r4]
            float r0 = r0 * r7
            if (r6 <= 0) goto L51
            float r5 = r5 * r0
            float r3 = b(r5, r1, r3)
            return r3
        L51:
            float r4 = -r5
            float r4 = r4 * r0
            float r3 = b(r4, r1, r3)
            float r3 = -r3
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.o42.a(int, float, float, float):float");
    }

    public final float c(float f, float f2) {
        if (f2 != 0.0f) {
            int i = this.t;
            if (i == 0 || i == 1) {
                if (f < f2) {
                    if (f >= 0.0f) {
                        return 1.0f - (f / f2);
                    }
                    if (this.B && i == 1) {
                        return 1.0f;
                    }
                }
            } else if (i == 2 && f < 0.0f) {
                return f / (-f2);
            }
        }
        return 0.0f;
    }

    public final void d() {
        int i = 0;
        if (this.z) {
            this.B = false;
            return;
        }
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        am amVar = this.n;
        int i2 = (int) (jCurrentAnimationTimeMillis - amVar.e);
        int i3 = amVar.b;
        if (i2 > i3) {
            i = i3;
        } else if (i2 >= 0) {
            i = i2;
        }
        amVar.i = i;
        amVar.h = amVar.a(jCurrentAnimationTimeMillis);
        amVar.g = jCurrentAnimationTimeMillis;
    }

    public final boolean e() {
        yx0 yx0Var;
        int count;
        am amVar = this.n;
        float f = amVar.d;
        int iAbs = (int) (f / Math.abs(f));
        Math.abs(amVar.c);
        if (iAbs != 0 && (count = (yx0Var = this.D).getCount()) != 0) {
            int childCount = yx0Var.getChildCount();
            int firstVisiblePosition = yx0Var.getFirstVisiblePosition();
            int i = firstVisiblePosition + childCount;
            if (iAbs <= 0 ? !(iAbs >= 0 || (firstVisiblePosition <= 0 && yx0Var.getChildAt(0).getTop() >= 0)) : !(i >= count && yx0Var.getChildAt(childCount - 1).getBottom() <= yx0Var.getHeight())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0014, code lost:
    
        if (r0 != 3) goto L30;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouch(android.view.View r8, android.view.MotionEvent r9) {
        /*
            r7 = this;
            boolean r0 = r7.C
            r1 = 0
            if (r0 != 0) goto L7
            goto L7c
        L7:
            int r0 = r9.getActionMasked()
            r2 = 1
            if (r0 == 0) goto L1b
            if (r0 == r2) goto L17
            r3 = 2
            if (r0 == r3) goto L1f
            r8 = 3
            if (r0 == r8) goto L17
            goto L7c
        L17:
            r7.d()
            return r1
        L1b:
            r7.A = r2
            r7.y = r1
        L1f:
            float r0 = r9.getX()
            int r3 = r8.getWidth()
            float r3 = (float) r3
            yx0 r4 = r7.p
            int r5 = r4.getWidth()
            float r5 = (float) r5
            float r0 = r7.a(r1, r0, r3, r5)
            float r9 = r9.getY()
            int r8 = r8.getHeight()
            float r8 = (float) r8
            int r3 = r4.getHeight()
            float r3 = (float) r3
            float r8 = r7.a(r2, r9, r8, r3)
            am r9 = r7.n
            r9.c = r0
            r9.d = r8
            boolean r8 = r7.B
            if (r8 != 0) goto L7c
            boolean r8 = r7.e()
            if (r8 == 0) goto L7c
            o9 r8 = r7.q
            if (r8 != 0) goto L60
            o9 r8 = new o9
            r8.<init>(r2, r7)
            r7.q = r8
        L60:
            r7.B = r2
            r7.z = r2
            boolean r8 = r7.y
            if (r8 != 0) goto L75
            int r8 = r7.f235u
            if (r8 <= 0) goto L75
            o9 r9 = r7.q
            long r5 = (long) r8
            java.lang.reflect.Field r8 = defpackage.lb4.a
            r4.postOnAnimationDelayed(r9, r5)
            goto L7a
        L75:
            o9 r8 = r7.q
            r8.run()
        L7a:
            r7.y = r2
        L7c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.o42.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
