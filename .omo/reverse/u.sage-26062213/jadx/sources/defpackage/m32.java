package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class m32 extends ViewGroup {
    public int A;
    public int B;
    public boolean n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public float t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f198u;
    public int[] v;
    public int[] w;
    public Drawable x;
    public int y;
    public int z;

    public m32(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.n = true;
        this.o = -1;
        this.p = 0;
        this.r = 8388659;
        int[] iArr = i13.j;
        ui3 ui3VarH = ui3.h(context, attributeSet, iArr, 0);
        lb4.d(this, context, iArr, attributeSet, (TypedArray) ui3VarH.p, 0);
        TypedArray typedArray = (TypedArray) ui3VarH.p;
        int i = typedArray.getInt(1, -1);
        if (i >= 0) {
            setOrientation(i);
        }
        int i2 = typedArray.getInt(0, -1);
        if (i2 >= 0) {
            setGravity(i2);
        }
        boolean z = typedArray.getBoolean(2, true);
        if (!z) {
            setBaselineAligned(z);
        }
        this.t = typedArray.getFloat(4, -1.0f);
        this.o = typedArray.getInt(3, -1);
        this.f198u = typedArray.getBoolean(7, false);
        setDividerDrawable(ui3VarH.e(5));
        this.A = typedArray.getInt(8, 0);
        this.B = typedArray.getDimensionPixelSize(6, 0);
        ui3VarH.j();
    }

    public final void b(Canvas canvas, int i) {
        this.x.setBounds(getPaddingLeft() + this.B, i, (getWidth() - getPaddingRight()) - this.B, this.z + i);
        this.x.draw(canvas);
    }

    public final void c(Canvas canvas, int i) {
        this.x.setBounds(i, getPaddingTop() + this.B, this.y + i, (getHeight() - getPaddingBottom()) - this.B);
        this.x.draw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof l32;
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public l32 generateDefaultLayoutParams() {
        int i = this.q;
        if (i == 0) {
            return new l32(-2, -2);
        }
        if (i == 1) {
            return new l32(-1, -2);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public l32 generateLayoutParams(AttributeSet attributeSet) {
        return new l32(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public l32 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof l32 ? new l32((l32) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new l32((ViewGroup.MarginLayoutParams) layoutParams) : new l32(layoutParams);
    }

    public final boolean g(int i) {
        if (i == 0) {
            return (this.A & 1) != 0;
        }
        int childCount = getChildCount();
        int i2 = this.A;
        if (i == childCount) {
            return (i2 & 4) != 0;
        }
        if ((i2 & 2) != 0) {
            for (int i3 = i - 1; i3 >= 0; i3--) {
                if (getChildAt(i3).getVisibility() != 8) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.View
    public int getBaseline() {
        int i;
        if (this.o < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i2 = this.o;
        if (childCount <= i2) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i2);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.o == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int bottom = this.p;
        if (this.q == 1 && (i = this.r & 112) != 48) {
            if (i == 16) {
                bottom += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.s) / 2;
            } else if (i == 80) {
                bottom = ((getBottom() - getTop()) - getPaddingBottom()) - this.s;
            }
        }
        return bottom + ((LinearLayout.LayoutParams) ((l32) childAt.getLayoutParams())).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.o;
    }

    public Drawable getDividerDrawable() {
        return this.x;
    }

    public int getDividerPadding() {
        return this.B;
    }

    public int getDividerWidth() {
        return this.y;
    }

    public int getGravity() {
        return this.r;
    }

    public int getOrientation() {
        return this.q;
    }

    public int getShowDividers() {
        return this.A;
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.t;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int right;
        int left;
        int i;
        if (this.x == null) {
            return;
        }
        int i2 = 0;
        if (this.q == 1) {
            int virtualChildCount = getVirtualChildCount();
            while (i2 < virtualChildCount) {
                View childAt = getChildAt(i2);
                if (childAt != null && childAt.getVisibility() != 8 && g(i2)) {
                    b(canvas, (childAt.getTop() - ((LinearLayout.LayoutParams) ((l32) childAt.getLayoutParams())).topMargin) - this.z);
                }
                i2++;
            }
            if (g(virtualChildCount)) {
                View childAt2 = getChildAt(virtualChildCount - 1);
                b(canvas, childAt2 == null ? (getHeight() - getPaddingBottom()) - this.z : childAt2.getBottom() + ((LinearLayout.LayoutParams) ((l32) childAt2.getLayoutParams())).bottomMargin);
                return;
            }
            return;
        }
        int virtualChildCount2 = getVirtualChildCount();
        boolean z = fc4.a;
        boolean z2 = getLayoutDirection() == 1;
        while (i2 < virtualChildCount2) {
            View childAt3 = getChildAt(i2);
            if (childAt3 != null && childAt3.getVisibility() != 8 && g(i2)) {
                l32 l32Var = (l32) childAt3.getLayoutParams();
                c(canvas, z2 ? childAt3.getRight() + ((LinearLayout.LayoutParams) l32Var).rightMargin : (childAt3.getLeft() - ((LinearLayout.LayoutParams) l32Var).leftMargin) - this.y);
            }
            i2++;
        }
        if (g(virtualChildCount2)) {
            View childAt4 = getChildAt(virtualChildCount2 - 1);
            if (childAt4 != null) {
                l32 l32Var2 = (l32) childAt4.getLayoutParams();
                if (z2) {
                    left = childAt4.getLeft() - ((LinearLayout.LayoutParams) l32Var2).leftMargin;
                    i = this.y;
                    right = left - i;
                } else {
                    right = childAt4.getRight() + ((LinearLayout.LayoutParams) l32Var2).rightMargin;
                }
            } else if (z2) {
                right = getPaddingLeft();
            } else {
                left = getWidth() - getPaddingRight();
                i = this.y;
                right = left - i;
            }
            c(canvas, right);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01a9  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r23, int r24, int r25, int r26, int r27) {
        /*
            Method dump skipped, instruction units count: 461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.m32.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:229:0x04de  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x04f3  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0521  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0531  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0538  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x0542  */
    /* JADX WARN: Removed duplicated region for block: B:368:0x0793  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0148  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r39, int r40) {
        /*
            Method dump skipped, instruction units count: 2141
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.m32.onMeasure(int, int):void");
    }

    public void setBaselineAligned(boolean z) {
        this.n = z;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i >= 0 && i < getChildCount()) {
            this.o = i;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.x) {
            return;
        }
        this.x = drawable;
        if (drawable != null) {
            this.y = drawable.getIntrinsicWidth();
            this.z = drawable.getIntrinsicHeight();
        } else {
            this.y = 0;
            this.z = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i) {
        this.B = i;
    }

    public void setGravity(int i) {
        if (this.r != i) {
            if ((8388615 & i) == 0) {
                i |= 8388611;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.r = i;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & 8388615;
        int i3 = this.r;
        if ((8388615 & i3) != i2) {
            this.r = i2 | ((-8388616) & i3);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.f198u = z;
    }

    public void setOrientation(int i) {
        if (this.q != i) {
            this.q = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i) {
        if (i != this.A) {
            requestLayout();
        }
        this.A = i;
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        int i3 = this.r;
        if ((i3 & 112) != i2) {
            this.r = i2 | (i3 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.t = Math.max(0.0f, f);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }
}
