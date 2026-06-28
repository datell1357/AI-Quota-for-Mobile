package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.TextView;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i04 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {
    public static i04 x;
    public static i04 y;
    public final View n;
    public final CharSequence o;
    public final int p;
    public final h04 q;
    public final h04 r;
    public int s;
    public int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public j04 f130u;
    public boolean v;
    public boolean w;

    /* JADX WARN: Type inference failed for: r0v0, types: [h04] */
    /* JADX WARN: Type inference failed for: r0v1, types: [h04] */
    public i04(View view, CharSequence charSequence) {
        final int i = 0;
        this.q = new Runnable(this) { // from class: h04
            public final /* synthetic */ i04 o;

            {
                this.o = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                int i2 = i;
                i04 i04Var = this.o;
                switch (i2) {
                    case 0:
                        i04Var.c(false);
                        break;
                    default:
                        i04Var.a();
                        break;
                }
            }
        };
        final int i2 = 1;
        this.r = new Runnable(this) { // from class: h04
            public final /* synthetic */ i04 o;

            {
                this.o = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                int i22 = i2;
                i04 i04Var = this.o;
                switch (i22) {
                    case 0:
                        i04Var.c(false);
                        break;
                    default:
                        i04Var.a();
                        break;
                }
            }
        };
        this.n = view;
        this.o = charSequence;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
        Method method = ob4.a;
        this.p = Build.VERSION.SDK_INT >= 28 ? tf.n(viewConfiguration) : viewConfiguration.getScaledTouchSlop() / 2;
        this.w = true;
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    public static void b(i04 i04Var) {
        i04 i04Var2 = x;
        if (i04Var2 != null) {
            i04Var2.n.removeCallbacks(i04Var2.q);
        }
        x = i04Var;
        if (i04Var != null) {
            i04Var.n.postDelayed(i04Var.q, ViewConfiguration.getLongPressTimeout());
        }
    }

    public final void a() {
        i04 i04Var = y;
        View view = this.n;
        if (i04Var == this) {
            y = null;
            j04 j04Var = this.f130u;
            if (j04Var != null) {
                View view2 = (View) j04Var.b;
                if (view2.getParent() != null) {
                    ((WindowManager) j04Var.a.getSystemService("window")).removeView(view2);
                }
                this.f130u = null;
                this.w = true;
                view.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (x == this) {
            b(null);
        }
        view.removeCallbacks(this.r);
    }

    public final void c(boolean z) {
        int height;
        int i;
        int i2;
        boolean z2;
        int i3;
        int i4;
        long longPressTimeout;
        long j;
        long j2;
        View view = this.n;
        if (view.isAttachedToWindow()) {
            b(null);
            i04 i04Var = y;
            if (i04Var != null) {
                i04Var.a();
            }
            y = this;
            this.v = z;
            j04 j04Var = new j04(view.getContext());
            View view2 = (View) j04Var.b;
            this.f130u = j04Var;
            int width = this.s;
            int i5 = this.t;
            boolean z3 = this.v;
            WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) j04Var.d;
            ViewParent parent = view2.getParent();
            Context context = j04Var.a;
            if (parent != null && view2.getParent() != null) {
                ((WindowManager) context.getSystemService("window")).removeView(view2);
            }
            ((TextView) j04Var.c).setText(this.o);
            int[] iArr = (int[]) j04Var.g;
            int[] iArr2 = (int[]) j04Var.f;
            Rect rect = (Rect) j04Var.e;
            layoutParams.token = view.getApplicationWindowToken();
            int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_threshold);
            if (view.getWidth() < dimensionPixelOffset) {
                width = view.getWidth() / 2;
            }
            if (view.getHeight() >= dimensionPixelOffset) {
                int dimensionPixelOffset2 = context.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_extra_offset);
                height = i5 + dimensionPixelOffset2;
                i = i5 - dimensionPixelOffset2;
            } else {
                height = view.getHeight();
                i = 0;
            }
            layoutParams.gravity = 49;
            int dimensionPixelOffset3 = context.getResources().getDimensionPixelOffset(z3 ? R.dimen.tooltip_y_offset_touch : R.dimen.tooltip_y_offset_non_touch);
            View rootView = view.getRootView();
            ViewGroup.LayoutParams layoutParams2 = rootView.getLayoutParams();
            int i6 = width;
            if (!(layoutParams2 instanceof WindowManager.LayoutParams) || ((WindowManager.LayoutParams) layoutParams2).type != 2) {
                Context context2 = view.getContext();
                while (true) {
                    if (!(context2 instanceof ContextWrapper)) {
                        break;
                    }
                    if (context2 instanceof Activity) {
                        rootView = ((Activity) context2).getWindow().getDecorView();
                        break;
                    }
                    context2 = ((ContextWrapper) context2).getBaseContext();
                }
            }
            if (rootView == null) {
                Log.e("TooltipPopup", "Cannot find app view");
                i4 = 1;
            } else {
                rootView.getWindowVisibleDisplayFrame(rect);
                if (rect.left >= 0 || rect.top >= 0) {
                    i2 = i;
                    z2 = z3;
                    i3 = 0;
                    i4 = 1;
                } else {
                    Resources resources = context.getResources();
                    i4 = 1;
                    i2 = i;
                    z2 = z3;
                    int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
                    int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
                    DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                    i3 = 0;
                    rect.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
                }
                rootView.getLocationOnScreen(iArr);
                view.getLocationOnScreen(iArr2);
                int i7 = iArr2[i3] - iArr[i3];
                iArr2[i3] = i7;
                iArr2[i4] = iArr2[i4] - iArr[i4];
                layoutParams.x = (i7 + i6) - (rootView.getWidth() / 2);
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i3, i3);
                view2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                int measuredHeight = view2.getMeasuredHeight();
                int i8 = iArr2[i4];
                int i9 = ((i8 + i2) - dimensionPixelOffset3) - measuredHeight;
                int i10 = i8 + height + dimensionPixelOffset3;
                if (z2) {
                    if (i9 >= 0) {
                        layoutParams.y = i9;
                    } else {
                        layoutParams.y = i10;
                    }
                } else if (measuredHeight + i10 <= rect.height()) {
                    layoutParams.y = i10;
                } else {
                    layoutParams.y = i9;
                }
            }
            ((WindowManager) context.getSystemService("window")).addView(view2, layoutParams);
            view.addOnAttachStateChangeListener(this);
            if (this.v) {
                j2 = 2500;
            } else {
                Field field = lb4.a;
                if ((view.getWindowSystemUiVisibility() & 1) == i4) {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j = 3000;
                } else {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j = 15000;
                }
                j2 = j - longPressTimeout;
            }
            h04 h04Var = this.r;
            view.removeCallbacks(h04Var);
            view.postDelayed(h04Var, j2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0066  */
    @Override // android.view.View.OnHoverListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onHover(android.view.View r4, android.view.MotionEvent r5) {
        /*
            r3 = this;
            j04 r4 = r3.f130u
            r0 = 0
            if (r4 == 0) goto La
            boolean r4 = r3.v
            if (r4 == 0) goto La
            goto L6f
        La:
            android.view.View r4 = r3.n
            android.content.Context r1 = r4.getContext()
            java.lang.String r2 = "accessibility"
            java.lang.Object r1 = r1.getSystemService(r2)
            android.view.accessibility.AccessibilityManager r1 = (android.view.accessibility.AccessibilityManager) r1
            boolean r2 = r1.isEnabled()
            if (r2 == 0) goto L25
            boolean r1 = r1.isTouchExplorationEnabled()
            if (r1 == 0) goto L25
            goto L6f
        L25:
            int r1 = r5.getAction()
            r2 = 7
            if (r1 == r2) goto L38
            r4 = 10
            if (r1 == r4) goto L31
            goto L6f
        L31:
            r4 = 1
            r3.w = r4
            r3.a()
            return r0
        L38:
            boolean r4 = r4.isEnabled()
            if (r4 == 0) goto L6f
            j04 r4 = r3.f130u
            if (r4 != 0) goto L6f
            float r4 = r5.getX()
            int r4 = (int) r4
            float r5 = r5.getY()
            int r5 = (int) r5
            boolean r1 = r3.w
            if (r1 != 0) goto L66
            int r1 = r3.s
            int r1 = r4 - r1
            int r1 = java.lang.Math.abs(r1)
            int r2 = r3.p
            if (r1 > r2) goto L66
            int r1 = r3.t
            int r1 = r5 - r1
            int r1 = java.lang.Math.abs(r1)
            if (r1 <= r2) goto L6f
        L66:
            r3.s = r4
            r3.t = r5
            r3.w = r0
            b(r3)
        L6f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.i04.onHover(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.s = view.getWidth() / 2;
        this.t = view.getHeight() / 2;
        c(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        a();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }
}
