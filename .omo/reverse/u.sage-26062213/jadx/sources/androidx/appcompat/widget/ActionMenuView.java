package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import com.google.android.gms.common.api.Api;
import defpackage.bx3;
import defpackage.fc4;
import defpackage.l32;
import defpackage.m32;
import defpackage.r5;
import defpackage.ra3;
import defpackage.t5;
import defpackage.tb2;
import defpackage.u5;
import defpackage.ub2;
import defpackage.v5;
import defpackage.w5;
import defpackage.wu4;
import defpackage.x5;
import defpackage.zb2;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class ActionMenuView extends m32 implements tb2 {
    public ub2 C;
    public Context D;
    public int E;
    public u5 F;
    public ra3 G;
    public boolean H;
    public int I;
    public final int J;
    public final int K;
    public x5 L;

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.J = (int) (56.0f * f);
        this.K = (int) (f * 4.0f);
        this.D = context;
        this.E = 0;
    }

    public static w5 h() {
        w5 w5Var = new w5(-2, -2);
        w5Var.a = false;
        ((LinearLayout.LayoutParams) w5Var).gravity = 16;
        return w5Var;
    }

    public static w5 i(ViewGroup.LayoutParams layoutParams) {
        w5 w5Var;
        if (layoutParams == null) {
            return h();
        }
        if (layoutParams instanceof w5) {
            w5 w5Var2 = (w5) layoutParams;
            w5Var = new w5(w5Var2);
            w5Var.a = w5Var2.a;
        } else {
            w5Var = new w5(layoutParams);
        }
        if (((LinearLayout.LayoutParams) w5Var).gravity <= 0) {
            ((LinearLayout.LayoutParams) w5Var).gravity = 16;
        }
        return w5Var;
    }

    @Override // defpackage.tb2
    public final boolean a(zb2 zb2Var) {
        return this.C.p(zb2Var, null, 0);
    }

    @Override // defpackage.m32, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof w5;
    }

    @Override // defpackage.m32
    /* JADX INFO: renamed from: d */
    public final /* bridge */ /* synthetic */ l32 generateDefaultLayoutParams() {
        return h();
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // defpackage.m32
    /* JADX INFO: renamed from: e */
    public final l32 generateLayoutParams(AttributeSet attributeSet) {
        return new w5(getContext(), attributeSet);
    }

    @Override // defpackage.m32
    /* JADX INFO: renamed from: f */
    public final /* bridge */ /* synthetic */ l32 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return i(layoutParams);
    }

    @Override // defpackage.m32, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return h();
    }

    @Override // defpackage.m32, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new w5(getContext(), attributeSet);
    }

    public Menu getMenu() {
        if (this.C == null) {
            Context context = getContext();
            ub2 ub2Var = new ub2(context);
            this.C = ub2Var;
            int i = 6;
            ub2Var.e = new wu4(i, this);
            u5 u5Var = new u5(context);
            this.F = u5Var;
            u5Var.x = true;
            u5Var.y = true;
            u5Var.r = new bx3(i);
            this.C.b(u5Var, this.D);
            u5 u5Var2 = this.F;
            u5Var2.t = this;
            this.C = u5Var2.p;
        }
        return this.C;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        u5 u5Var = this.F;
        t5 t5Var = u5Var.f354u;
        if (t5Var != null) {
            return t5Var.getDrawable();
        }
        if (u5Var.w) {
            return u5Var.v;
        }
        return null;
    }

    public int getPopupTheme() {
        return this.E;
    }

    public int getWindowAnimations() {
        return 0;
    }

    public final boolean j(int i) {
        boolean zB = false;
        if (i == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i - 1);
        KeyEvent.Callback childAt2 = getChildAt(i);
        if (i < getChildCount() && (childAt instanceof v5)) {
            zB = ((v5) childAt).b();
        }
        return (i <= 0 || !(childAt2 instanceof v5)) ? zB : ((v5) childAt2).c() | zB;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        u5 u5Var = this.F;
        if (u5Var != null) {
            u5Var.f();
            r5 r5Var = this.F.E;
            if (r5Var == null || !r5Var.b()) {
                return;
            }
            this.F.g();
            this.F.k();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        u5 u5Var = this.F;
        if (u5Var != null) {
            u5Var.g();
            r5 r5Var = u5Var.F;
            if (r5Var == null || !r5Var.b()) {
                return;
            }
            r5Var.i.dismiss();
        }
    }

    @Override // defpackage.m32, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int width;
        int paddingLeft;
        if (!this.H) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i5 = (i4 - i2) / 2;
        int dividerWidth = getDividerWidth();
        int i6 = i3 - i;
        int paddingRight = (i6 - getPaddingRight()) - getPaddingLeft();
        boolean z2 = fc4.a;
        boolean z3 = getLayoutDirection() == 1;
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                w5 w5Var = (w5) childAt.getLayoutParams();
                if (w5Var.a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (j(i9)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (z3) {
                        paddingLeft = getPaddingLeft() + ((LinearLayout.LayoutParams) w5Var).leftMargin;
                        width = paddingLeft + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) w5Var).rightMargin;
                        paddingLeft = width - measuredWidth;
                    }
                    int i10 = i5 - (measuredHeight / 2);
                    childAt.layout(paddingLeft, i10, width, measuredHeight + i10);
                    paddingRight -= measuredWidth;
                    i7 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) w5Var).leftMargin) + ((LinearLayout.LayoutParams) w5Var).rightMargin;
                    j(i9);
                    i8++;
                }
            }
        }
        if (childCount == 1 && i7 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i11 = (i6 / 2) - (measuredWidth2 / 2);
            int i12 = i5 - (measuredHeight2 / 2);
            childAt2.layout(i11, i12, measuredWidth2 + i11, measuredHeight2 + i12);
            return;
        }
        int i13 = i8 - (i7 ^ 1);
        int iMax = Math.max(0, i13 > 0 ? paddingRight / i13 : 0);
        if (z3) {
            int width2 = getWidth() - getPaddingRight();
            for (int i14 = 0; i14 < childCount; i14++) {
                View childAt3 = getChildAt(i14);
                w5 w5Var2 = (w5) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !w5Var2.a) {
                    int i15 = width2 - ((LinearLayout.LayoutParams) w5Var2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i16 = i5 - (measuredHeight3 / 2);
                    childAt3.layout(i15 - measuredWidth3, i16, i15, measuredHeight3 + i16);
                    width2 = i15 - ((measuredWidth3 + ((LinearLayout.LayoutParams) w5Var2).leftMargin) + iMax);
                }
            }
            return;
        }
        int paddingLeft2 = getPaddingLeft();
        for (int i17 = 0; i17 < childCount; i17++) {
            View childAt4 = getChildAt(i17);
            w5 w5Var3 = (w5) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !w5Var3.a) {
                int i18 = paddingLeft2 + ((LinearLayout.LayoutParams) w5Var3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i19 = i5 - (measuredHeight4 / 2);
                childAt4.layout(i18, i19, i18 + measuredWidth4, measuredHeight4 + i19);
                paddingLeft2 = measuredWidth4 + ((LinearLayout.LayoutParams) w5Var3).rightMargin + iMax + i18;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v16, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v41 */
    @Override // defpackage.m32, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        ?? r11;
        int i5;
        int i6;
        ub2 ub2Var;
        boolean z = this.H;
        boolean z2 = View.MeasureSpec.getMode(i) == 1073741824;
        this.H = z2;
        if (z != z2) {
            this.I = 0;
        }
        int size = View.MeasureSpec.getSize(i);
        if (this.H && (ub2Var = this.C) != null && size != this.I) {
            this.I = size;
            ub2Var.o(true);
        }
        int childCount = getChildCount();
        if (!this.H || childCount <= 0) {
            for (int i7 = 0; i7 < childCount; i7++) {
                w5 w5Var = (w5) getChildAt(i7).getLayoutParams();
                ((LinearLayout.LayoutParams) w5Var).rightMargin = 0;
                ((LinearLayout.LayoutParams) w5Var).leftMargin = 0;
            }
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i);
        int size3 = View.MeasureSpec.getSize(i2);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, paddingBottom, -2);
        int i8 = size2 - paddingRight;
        int i9 = this.J;
        int i10 = i8 / i9;
        int i11 = i8 % i9;
        if (i10 == 0) {
            setMeasuredDimension(i8, 0);
            return;
        }
        int i12 = (i11 / i10) + i9;
        int childCount2 = getChildCount();
        int iMax = 0;
        int i13 = 0;
        int iMax2 = 0;
        int i14 = 0;
        boolean z3 = false;
        int i15 = 0;
        long j = 0;
        while (true) {
            i3 = this.K;
            if (i14 >= childCount2) {
                break;
            }
            View childAt = getChildAt(i14);
            int i16 = size3;
            int i17 = paddingBottom;
            if (childAt.getVisibility() == 8) {
                i5 = i12;
            } else {
                boolean z4 = childAt instanceof ActionMenuItemView;
                i13++;
                if (z4) {
                    childAt.setPadding(i3, 0, i3, 0);
                }
                w5 w5Var2 = (w5) childAt.getLayoutParams();
                w5Var2.f = false;
                w5Var2.c = 0;
                w5Var2.b = 0;
                w5Var2.d = false;
                ((LinearLayout.LayoutParams) w5Var2).leftMargin = 0;
                ((LinearLayout.LayoutParams) w5Var2).rightMargin = 0;
                w5Var2.e = z4 && !TextUtils.isEmpty(((ActionMenuItemView) childAt).getText());
                int i18 = w5Var2.a ? 1 : i10;
                w5 w5Var3 = (w5) childAt.getLayoutParams();
                int i19 = i10;
                i5 = i12;
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(childMeasureSpec) - i17, View.MeasureSpec.getMode(childMeasureSpec));
                ActionMenuItemView actionMenuItemView = z4 ? (ActionMenuItemView) childAt : null;
                boolean z5 = (actionMenuItemView == null || TextUtils.isEmpty(actionMenuItemView.getText())) ? false : true;
                boolean z6 = z5;
                if (i18 <= 0 || (z5 && i18 < 2)) {
                    i6 = 0;
                } else {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i5 * i18, Integer.MIN_VALUE), iMakeMeasureSpec);
                    int measuredWidth = childAt.getMeasuredWidth();
                    i6 = measuredWidth / i5;
                    if (measuredWidth % i5 != 0) {
                        i6++;
                    }
                    if (z6 && i6 < 2) {
                        i6 = 2;
                    }
                }
                w5Var3.d = !w5Var3.a && z6;
                w5Var3.b = i6;
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i6 * i5, 1073741824), iMakeMeasureSpec);
                iMax2 = Math.max(iMax2, i6);
                if (w5Var2.d) {
                    i15++;
                }
                if (w5Var2.a) {
                    z3 = true;
                }
                i10 = i19 - i6;
                iMax = Math.max(iMax, childAt.getMeasuredHeight());
                if (i6 == 1) {
                    j |= (long) (1 << i14);
                }
            }
            i14++;
            size3 = i16;
            paddingBottom = i17;
            i12 = i5;
        }
        int i20 = size3;
        int i21 = i10;
        int i22 = i12;
        boolean z7 = z3 && i13 == 2;
        int i23 = i21;
        boolean z8 = false;
        while (i15 > 0 && i23 > 0) {
            int i24 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            long j2 = 0;
            int i25 = 0;
            int i26 = 0;
            while (i26 < childCount2) {
                int i27 = iMax;
                w5 w5Var4 = (w5) getChildAt(i26).getLayoutParams();
                boolean z9 = z7;
                if (w5Var4.d) {
                    int i28 = w5Var4.b;
                    if (i28 < i24) {
                        j2 = 1 << i26;
                        i24 = i28;
                        i25 = 1;
                    } else if (i28 == i24) {
                        j2 |= 1 << i26;
                        i25++;
                    }
                }
                i26++;
                z7 = z9;
                iMax = i27;
            }
            i4 = iMax;
            boolean z10 = z7;
            j |= j2;
            if (i25 > i23) {
                break;
            }
            int i29 = i24 + 1;
            int i30 = 0;
            while (i30 < childCount2) {
                View childAt2 = getChildAt(i30);
                w5 w5Var5 = (w5) childAt2.getLayoutParams();
                boolean z11 = z3;
                long j3 = 1 << i30;
                if ((j2 & j3) != 0) {
                    if (z10 && w5Var5.e) {
                        r11 = 1;
                        r11 = 1;
                        if (i23 == 1) {
                            childAt2.setPadding(i3 + i22, 0, i3, 0);
                        }
                    } else {
                        r11 = 1;
                    }
                    w5Var5.b += r11;
                    w5Var5.f = r11;
                    i23--;
                } else if (w5Var5.b == i29) {
                    j |= j3;
                }
                i30++;
                z3 = z11;
            }
            z7 = z10;
            iMax = i4;
            z8 = true;
        }
        i4 = iMax;
        boolean z12 = !z3 && i13 == 1;
        if (i23 > 0 && j != 0 && (i23 < i13 - 1 || z12 || iMax2 > 1)) {
            float fBitCount = Long.bitCount(j);
            if (!z12) {
                if ((j & 1) != 0 && !((w5) getChildAt(0).getLayoutParams()).e) {
                    fBitCount -= 0.5f;
                }
                int i31 = childCount2 - 1;
                if ((j & ((long) (1 << i31))) != 0 && !((w5) getChildAt(i31).getLayoutParams()).e) {
                    fBitCount -= 0.5f;
                }
            }
            int i32 = fBitCount > 0.0f ? (int) ((i23 * i22) / fBitCount) : 0;
            boolean z13 = z8;
            for (int i33 = 0; i33 < childCount2; i33++) {
                if ((j & ((long) (1 << i33))) != 0) {
                    View childAt3 = getChildAt(i33);
                    w5 w5Var6 = (w5) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        w5Var6.c = i32;
                        w5Var6.f = true;
                        if (i33 == 0 && !w5Var6.e) {
                            ((LinearLayout.LayoutParams) w5Var6).leftMargin = (-i32) / 2;
                        }
                        z13 = true;
                    } else if (w5Var6.a) {
                        w5Var6.c = i32;
                        w5Var6.f = true;
                        ((LinearLayout.LayoutParams) w5Var6).rightMargin = (-i32) / 2;
                        z13 = true;
                    } else {
                        if (i33 != 0) {
                            ((LinearLayout.LayoutParams) w5Var6).leftMargin = i32 / 2;
                        }
                        if (i33 != childCount2 - 1) {
                            ((LinearLayout.LayoutParams) w5Var6).rightMargin = i32 / 2;
                        }
                    }
                }
            }
            z8 = z13;
        }
        if (z8) {
            for (int i34 = 0; i34 < childCount2; i34++) {
                View childAt4 = getChildAt(i34);
                w5 w5Var7 = (w5) childAt4.getLayoutParams();
                if (w5Var7.f) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((w5Var7.b * i22) + w5Var7.c, 1073741824), childMeasureSpec);
                }
            }
        }
        setMeasuredDimension(i8, mode != 1073741824 ? i4 : i20);
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.F.C = z;
    }

    public void setOnMenuItemClickListener(x5 x5Var) {
        this.L = x5Var;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        u5 u5Var = this.F;
        t5 t5Var = u5Var.f354u;
        if (t5Var != null) {
            t5Var.setImageDrawable(drawable);
        } else {
            u5Var.w = true;
            u5Var.v = drawable;
        }
    }

    public void setPopupTheme(int i) {
        if (this.E != i) {
            this.E = i;
            if (i == 0) {
                this.D = getContext();
            } else {
                this.D = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setPresenter(u5 u5Var) {
        this.F = u5Var;
        u5Var.t = this;
        this.C = u5Var.p;
    }

    @Override // defpackage.m32, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return i(layoutParams);
    }

    public void setOverflowReserved(boolean z) {
    }
}
