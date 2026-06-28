package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import defpackage.ca;
import defpackage.i13;
import defpackage.kc2;
import defpackage.p5;
import defpackage.q5;
import defpackage.tb2;
import defpackage.ub2;
import defpackage.v5;
import defpackage.xg;
import defpackage.zb2;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class ActionMenuItemView extends xg implements kc2, View.OnClickListener, v5 {
    public boolean A;
    public boolean B;
    public final int C;
    public int D;
    public final int E;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public zb2 f11u;
    public CharSequence v;
    public Drawable w;
    public tb2 x;
    public p5 y;
    public q5 z;

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        Resources resources = context.getResources();
        this.A = g();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, i13.c, 0, 0);
        this.C = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.E = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.D = -1;
        setSaveEnabled(false);
    }

    @Override // defpackage.kc2
    public final void a(zb2 zb2Var) {
        this.f11u = zb2Var;
        setIcon(zb2Var.getIcon());
        setTitle(zb2Var.getTitleCondensed());
        setId(zb2Var.a);
        setVisibility(zb2Var.isVisible() ? 0 : 8);
        setEnabled(zb2Var.isEnabled());
        if (zb2Var.hasSubMenu() && this.y == null) {
            this.y = new p5(this);
        }
    }

    @Override // defpackage.v5
    public final boolean b() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // defpackage.v5
    public final boolean c() {
        return !TextUtils.isEmpty(getText()) && this.f11u.getIcon() == null;
    }

    public final boolean g() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        int i2 = configuration.screenHeightDp;
        if (i < 480) {
            return (i >= 640 && i2 >= 480) || configuration.orientation == 2;
        }
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return Button.class.getName();
    }

    @Override // defpackage.kc2
    public zb2 getItemData() {
        return this.f11u;
    }

    public final void h() {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.v);
        if (this.w != null && ((this.f11u.y & 4) != 4 || (!this.A && !this.B))) {
            z = false;
        }
        boolean z3 = z2 & z;
        setText(z3 ? this.v : null);
        CharSequence charSequence = this.f11u.q;
        if (TextUtils.isEmpty(charSequence)) {
            setContentDescription(z3 ? null : this.f11u.e);
        } else {
            setContentDescription(charSequence);
        }
        CharSequence charSequence2 = this.f11u.r;
        if (TextUtils.isEmpty(charSequence2)) {
            ca.L(this, z3 ? null : this.f11u.e);
        } else {
            ca.L(this, charSequence2);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        tb2 tb2Var = this.x;
        if (tb2Var != null) {
            tb2Var.a(this.f11u);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.A = g();
        h();
    }

    @Override // defpackage.xg, android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        boolean zIsEmpty = TextUtils.isEmpty(getText());
        if (!zIsEmpty && (i3 = this.D) >= 0) {
            super.setPadding(i3, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        int i4 = this.C;
        int iMin = mode == Integer.MIN_VALUE ? Math.min(size, i4) : i4;
        if (mode != 1073741824 && i4 > 0 && measuredWidth < iMin) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(iMin, 1073741824), i2);
        }
        if (!zIsEmpty || this.w == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.w.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        p5 p5Var;
        if (this.f11u.hasSubMenu() && (p5Var = this.y) != null && p5Var.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setExpandedFormat(boolean z) {
        if (this.B != z) {
            this.B = z;
            zb2 zb2Var = this.f11u;
            if (zb2Var != null) {
                ub2 ub2Var = zb2Var.n;
                ub2Var.k = true;
                ub2Var.o(true);
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.w = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i = this.E;
            if (intrinsicWidth > i) {
                intrinsicHeight = (int) (intrinsicHeight * (i / intrinsicWidth));
                intrinsicWidth = i;
            }
            if (intrinsicHeight > i) {
                intrinsicWidth = (int) (intrinsicWidth * (i / intrinsicHeight));
            } else {
                i = intrinsicHeight;
            }
            drawable.setBounds(0, 0, intrinsicWidth, i);
        }
        setCompoundDrawables(drawable, null, null, null);
        h();
    }

    public void setItemInvoker(tb2 tb2Var) {
        this.x = tb2Var;
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
        this.D = i;
        super.setPadding(i, i2, i3, i4);
    }

    public void setPopupCallback(q5 q5Var) {
        this.z = q5Var;
    }

    public void setTitle(CharSequence charSequence) {
        this.v = charSequence;
        h();
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }
}
