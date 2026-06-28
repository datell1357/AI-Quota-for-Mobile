package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.core.widget.NestedScrollView;
import com.google.android.gms.common.api.Api;
import defpackage.a13;
import defpackage.cl2;
import defpackage.dl2;
import defpackage.f04;
import defpackage.fb4;
import defpackage.he4;
import defpackage.k21;
import defpackage.k5;
import defpackage.ke4;
import defpackage.l5;
import defpackage.lb4;
import defpackage.m5;
import defpackage.n5;
import defpackage.nr1;
import defpackage.o5;
import defpackage.rd4;
import defpackage.sd4;
import defpackage.td4;
import defpackage.ud4;
import defpackage.vd4;
import defpackage.wd4;
import defpackage.xd4;
import defpackage.yd4;
import defpackage.yn0;
import defpackage.zf5;
import java.lang.reflect.Field;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements cl2, dl2 {
    public static final int[] M = {R.attr.actionBarSize, android.R.attr.windowContentOverlay};
    public static final ke4 N;
    public static final Rect O;
    public final Rect A;
    public ke4 B;
    public ke4 C;
    public ke4 D;
    public ke4 E;
    public OverScroller F;
    public ViewPropertyAnimator G;
    public final k5 H;
    public final l5 I;
    public final l5 J;
    public final a13 K;
    public final o5 L;
    public int n;
    public ContentFrameLayout o;
    public ActionBarContainer p;
    public yn0 q;
    public Drawable r;
    public boolean s;
    public boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f15u;
    public boolean v;
    public int w;
    public final Rect x;
    public final Rect y;
    public final Rect z;

    static {
        int i = Build.VERSION.SDK_INT;
        yd4 xd4Var = i >= 36 ? new xd4() : i >= 35 ? new wd4() : i >= 34 ? new vd4() : i >= 31 ? new ud4() : i >= 30 ? new td4() : i >= 29 ? new sd4() : new rd4();
        xd4Var.h(nr1.b(0, 1, 0, 1));
        N = xd4Var.b();
        O = new Rect();
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.x = new Rect();
        this.y = new Rect();
        this.z = new Rect();
        this.A = new Rect();
        new Rect();
        new Rect();
        new Rect();
        new Rect();
        ke4 ke4Var = ke4.b;
        this.B = ke4Var;
        this.C = ke4Var;
        this.D = ke4Var;
        this.E = ke4Var;
        this.H = new k5(this);
        this.I = new l5(this, 0);
        this.J = new l5(this, 1);
        h(context);
        this.K = new a13();
        o5 o5Var = new o5(context);
        o5Var.setWillNotDraw(true);
        this.L = o5Var;
        addView(o5Var);
    }

    public static boolean f(View view, Rect rect, boolean z) {
        boolean z2;
        n5 n5Var = (n5) view.getLayoutParams();
        int i = ((ViewGroup.MarginLayoutParams) n5Var).leftMargin;
        int i2 = rect.left;
        if (i != i2) {
            ((ViewGroup.MarginLayoutParams) n5Var).leftMargin = i2;
            z2 = true;
        } else {
            z2 = false;
        }
        int i3 = ((ViewGroup.MarginLayoutParams) n5Var).topMargin;
        int i4 = rect.top;
        if (i3 != i4) {
            ((ViewGroup.MarginLayoutParams) n5Var).topMargin = i4;
            z2 = true;
        }
        int i5 = ((ViewGroup.MarginLayoutParams) n5Var).rightMargin;
        int i6 = rect.right;
        if (i5 != i6) {
            ((ViewGroup.MarginLayoutParams) n5Var).rightMargin = i6;
            z2 = true;
        }
        if (z) {
            int i7 = ((ViewGroup.MarginLayoutParams) n5Var).bottomMargin;
            int i8 = rect.bottom;
            if (i7 != i8) {
                ((ViewGroup.MarginLayoutParams) n5Var).bottomMargin = i8;
                return true;
            }
        }
        return z2;
    }

    @Override // defpackage.cl2
    public final void a(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    @Override // defpackage.cl2
    public final void b(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // defpackage.dl2
    public final void c(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        e(nestedScrollView, i, i2, i3, i4, i5);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof n5;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int translationY;
        super.draw(canvas);
        if (this.r != null) {
            if (this.p.getVisibility() == 0) {
                translationY = (int) (this.p.getTranslationY() + this.p.getBottom() + 0.5f);
            } else {
                translationY = 0;
            }
            this.r.setBounds(0, translationY, getWidth(), this.r.getIntrinsicHeight() + translationY);
            this.r.draw(canvas);
        }
    }

    @Override // defpackage.cl2
    public final void e(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(nestedScrollView, i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public final boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    public final void g() {
        removeCallbacks(this.I);
        removeCallbacks(this.J);
        ViewPropertyAnimator viewPropertyAnimator = this.G;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new n5(-1, -1);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new n5(getContext(), attributeSet);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.p;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        a13 a13Var = this.K;
        return a13Var.c | a13Var.b;
    }

    public CharSequence getTitle() {
        j();
        return ((f04) this.q).a.getTitle();
    }

    public final void h(Context context) {
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(M);
        this.n = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
        this.r = drawable;
        setWillNotDraw(drawable == null);
        typedArrayObtainStyledAttributes.recycle();
        this.F = new OverScroller(context);
    }

    @Override // defpackage.cl2
    public final boolean i(View view, View view2, int i, int i2) {
        return i2 == 0 && onStartNestedScroll(view, view2, i);
    }

    public final void j() {
        yn0 wrapper;
        if (this.o == null) {
            this.o = (ContentFrameLayout) findViewById(R.id.action_bar_activity_content);
            this.p = (ActionBarContainer) findViewById(R.id.action_bar_container);
            KeyEvent.Callback callbackFindViewById = findViewById(R.id.action_bar);
            if (callbackFindViewById instanceof yn0) {
                wrapper = (yn0) callbackFindViewById;
            } else {
                if (!(callbackFindViewById instanceof Toolbar)) {
                    k21.n("Can't make a decor toolbar out of ".concat(callbackFindViewById.getClass().getSimpleName()));
                    return;
                }
                wrapper = ((Toolbar) callbackFindViewById).getWrapper();
            }
            this.q = wrapper;
        }
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        j();
        ke4 ke4VarC = ke4.c(this, windowInsets);
        he4 he4Var = ke4VarC.a;
        boolean zF = f(this.p, new Rect(he4Var.n().a, he4Var.n().b, he4Var.n().c, he4Var.n().d), false);
        Field field = lb4.a;
        Rect rect = this.x;
        fb4.b(this, ke4VarC, rect);
        ke4 ke4VarR = he4Var.r(rect.left, rect.top, rect.right, rect.bottom);
        this.B = ke4VarR;
        boolean z = true;
        if (!this.C.equals(ke4VarR)) {
            this.C = this.B;
            zF = true;
        }
        Rect rect2 = this.y;
        if (rect2.equals(rect)) {
            z = zF;
        } else {
            rect2.set(rect);
        }
        if (z) {
            requestLayout();
        }
        return he4Var.a().a.c().a.b().b();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        h(getContext());
        Field field = lb4.a;
        requestApplyInsets();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        g();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                n5 n5Var = (n5) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = ((ViewGroup.MarginLayoutParams) n5Var).leftMargin + paddingLeft;
                int i7 = ((ViewGroup.MarginLayoutParams) n5Var).topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00ab  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r13, int r14) {
        /*
            Method dump skipped, instruction units count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarOverlayLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!this.f15u || !z) {
            return false;
        }
        this.F.fling(0, 0, 0, (int) f2, 0, 0, Integer.MIN_VALUE, Api.BaseClientBuilder.API_PRIORITY_OTHER);
        if (this.F.getFinalY() > this.p.getHeight()) {
            g();
            this.J.run();
        } else {
            g();
            this.I.run();
        }
        this.v = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int i5 = this.w + i2;
        this.w = i5;
        setActionBarHideOffset(i5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i) {
        this.K.b = i;
        this.w = getActionBarHideOffset();
        g();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) == 0 || this.p.getVisibility() != 0) {
            return false;
        }
        return this.f15u;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        if (!this.f15u || this.v) {
            return;
        }
        if (this.w <= this.p.getHeight()) {
            g();
            postDelayed(this.I, 600L);
        } else {
            g();
            postDelayed(this.J, 600L);
        }
    }

    @Override // android.view.View
    public final void onWindowSystemUiVisibilityChanged(int i) {
        super.onWindowSystemUiVisibilityChanged(i);
        j();
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
    }

    public void setActionBarHideOffset(int i) {
        g();
        this.p.setTranslationY(-Math.max(0, Math.min(i, this.p.getHeight())));
    }

    public void setActionBarVisibilityCallback(m5 m5Var) {
        if (getWindowToken() != null) {
            throw null;
        }
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.t = z;
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.f15u) {
            this.f15u = z;
            if (z) {
                return;
            }
            g();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i) {
        j();
        f04 f04Var = (f04) this.q;
        f04Var.d = i != 0 ? zf5.H(f04Var.a.getContext(), i) : null;
        f04Var.c();
    }

    public void setLogo(int i) {
        j();
        f04 f04Var = (f04) this.q;
        f04Var.e = i != 0 ? zf5.H(f04Var.a.getContext(), i) : null;
        f04Var.c();
    }

    public void setOverlayMode(boolean z) {
        this.s = z;
    }

    public void setWindowCallback(Window.Callback callback) {
        j();
        ((f04) this.q).getClass();
    }

    public void setWindowTitle(CharSequence charSequence) {
        j();
        f04 f04Var = (f04) this.q;
        if (f04Var.g) {
            return;
        }
        Toolbar toolbar = f04Var.a;
        f04Var.h = charSequence;
        if ((f04Var.b & 8) != 0) {
            toolbar.setTitle(charSequence);
            if (f04Var.g) {
                lb4.f(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new n5(layoutParams);
    }

    public void setIcon(Drawable drawable) {
        j();
        f04 f04Var = (f04) this.q;
        f04Var.d = drawable;
        f04Var.c();
    }

    public void setShowingForActionMode(boolean z) {
    }

    public void setUiOptions(int i) {
    }

    @Override // defpackage.cl2
    public final void d(int i, int i2, int[] iArr, int i3) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }
}
