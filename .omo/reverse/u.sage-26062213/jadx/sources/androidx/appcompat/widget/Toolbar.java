package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import defpackage.a04;
import defpackage.ad1;
import defpackage.b04;
import defpackage.c04;
import defpackage.ca;
import defpackage.d04;
import defpackage.dd1;
import defpackage.e04;
import defpackage.f04;
import defpackage.fb3;
import defpackage.fc4;
import defpackage.i13;
import defpackage.iu3;
import defpackage.jc2;
import defpackage.kg;
import defpackage.lb4;
import defpackage.lg;
import defpackage.o9;
import defpackage.r5;
import defpackage.ra3;
import defpackage.u5;
import defpackage.ub2;
import defpackage.ui3;
import defpackage.vb2;
import defpackage.xb2;
import defpackage.xg;
import defpackage.xz3;
import defpackage.yn0;
import defpackage.yz3;
import defpackage.zb2;
import defpackage.zf5;
import defpackage.zz3;
import java.util.ArrayList;
import java.util.Iterator;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class Toolbar extends ViewGroup implements vb2 {
    public final int A;
    public final int B;
    public int C;
    public int D;
    public int E;
    public int F;
    public fb3 G;
    public int H;
    public int I;
    public final int J;
    public CharSequence K;
    public CharSequence L;
    public ColorStateList M;
    public ColorStateList N;
    public boolean O;
    public boolean P;
    public final ArrayList Q;
    public final ArrayList R;
    public final int[] S;
    public final xb2 T;
    public ArrayList U;
    public final dd1 V;
    public f04 W;
    public a04 a0;
    public boolean b0;
    public OnBackInvokedCallback c0;
    public OnBackInvokedDispatcher d0;
    public boolean e0;
    public final o9 f0;
    public ActionMenuView n;
    public xg o;
    public xg p;
    public kg q;
    public lg r;
    public final Drawable s;
    public final CharSequence t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public kg f16u;
    public View v;
    public Context w;
    public int x;
    public int y;
    public int z;

    public Toolbar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.toolbarStyle);
        this.J = 8388627;
        this.Q = new ArrayList();
        this.R = new ArrayList();
        this.S = new int[2];
        this.T = new xb2(new xz3(this, 1));
        this.U = new ArrayList();
        this.V = new dd1(21, this);
        this.f0 = new o9(12, this);
        Context context2 = getContext();
        int[] iArr = i13.r;
        ui3 ui3VarH = ui3.h(context2, attributeSet, iArr, R.attr.toolbarStyle);
        lb4.d(this, context, iArr, attributeSet, (TypedArray) ui3VarH.p, R.attr.toolbarStyle);
        TypedArray typedArray = (TypedArray) ui3VarH.p;
        this.y = typedArray.getResourceId(28, 0);
        this.z = typedArray.getResourceId(19, 0);
        this.J = typedArray.getInteger(0, 8388627);
        this.A = typedArray.getInteger(2, 48);
        int dimensionPixelOffset = typedArray.getDimensionPixelOffset(22, 0);
        dimensionPixelOffset = typedArray.hasValue(27) ? typedArray.getDimensionPixelOffset(27, dimensionPixelOffset) : dimensionPixelOffset;
        this.F = dimensionPixelOffset;
        this.E = dimensionPixelOffset;
        this.D = dimensionPixelOffset;
        this.C = dimensionPixelOffset;
        int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(25, -1);
        if (dimensionPixelOffset2 >= 0) {
            this.C = dimensionPixelOffset2;
        }
        int dimensionPixelOffset3 = typedArray.getDimensionPixelOffset(24, -1);
        if (dimensionPixelOffset3 >= 0) {
            this.D = dimensionPixelOffset3;
        }
        int dimensionPixelOffset4 = typedArray.getDimensionPixelOffset(26, -1);
        if (dimensionPixelOffset4 >= 0) {
            this.E = dimensionPixelOffset4;
        }
        int dimensionPixelOffset5 = typedArray.getDimensionPixelOffset(23, -1);
        if (dimensionPixelOffset5 >= 0) {
            this.F = dimensionPixelOffset5;
        }
        this.B = typedArray.getDimensionPixelSize(13, -1);
        int dimensionPixelOffset6 = typedArray.getDimensionPixelOffset(9, Integer.MIN_VALUE);
        int dimensionPixelOffset7 = typedArray.getDimensionPixelOffset(5, Integer.MIN_VALUE);
        int dimensionPixelSize = typedArray.getDimensionPixelSize(7, 0);
        int dimensionPixelSize2 = typedArray.getDimensionPixelSize(8, 0);
        d();
        fb3 fb3Var = this.G;
        fb3Var.h = false;
        if (dimensionPixelSize != Integer.MIN_VALUE) {
            fb3Var.e = dimensionPixelSize;
            fb3Var.a = dimensionPixelSize;
        }
        if (dimensionPixelSize2 != Integer.MIN_VALUE) {
            fb3Var.f = dimensionPixelSize2;
            fb3Var.b = dimensionPixelSize2;
        }
        if (dimensionPixelOffset6 != Integer.MIN_VALUE || dimensionPixelOffset7 != Integer.MIN_VALUE) {
            fb3Var.a(dimensionPixelOffset6, dimensionPixelOffset7);
        }
        this.H = typedArray.getDimensionPixelOffset(10, Integer.MIN_VALUE);
        this.I = typedArray.getDimensionPixelOffset(6, Integer.MIN_VALUE);
        this.s = ui3VarH.e(4);
        this.t = typedArray.getText(3);
        CharSequence text = typedArray.getText(21);
        if (!TextUtils.isEmpty(text)) {
            setTitle(text);
        }
        CharSequence text2 = typedArray.getText(18);
        if (!TextUtils.isEmpty(text2)) {
            setSubtitle(text2);
        }
        this.w = getContext();
        setPopupTheme(typedArray.getResourceId(17, 0));
        Drawable drawableE = ui3VarH.e(16);
        if (drawableE != null) {
            setNavigationIcon(drawableE);
        }
        CharSequence text3 = typedArray.getText(15);
        if (!TextUtils.isEmpty(text3)) {
            setNavigationContentDescription(text3);
        }
        Drawable drawableE2 = ui3VarH.e(11);
        if (drawableE2 != null) {
            setLogo(drawableE2);
        }
        CharSequence text4 = typedArray.getText(12);
        if (!TextUtils.isEmpty(text4)) {
            setLogoDescription(text4);
        }
        if (typedArray.hasValue(29)) {
            setTitleTextColor(ui3VarH.d(29));
        }
        if (typedArray.hasValue(20)) {
            setSubtitleTextColor(ui3VarH.d(20));
        }
        if (typedArray.hasValue(14)) {
            getMenuInflater().inflate(typedArray.getResourceId(14, 0), getMenu());
        }
        ui3VarH.j();
    }

    public static b04 g() {
        b04 b04Var = new b04(-2, -2);
        b04Var.b = 0;
        b04Var.a = 8388627;
        return b04Var;
    }

    private ArrayList<MenuItem> getCurrentMenuItems() {
        ArrayList<MenuItem> arrayList = new ArrayList<>();
        Menu menu = getMenu();
        for (int i = 0; i < menu.size(); i++) {
            arrayList.add(menu.getItem(i));
        }
        return arrayList;
    }

    private MenuInflater getMenuInflater() {
        return new iu3(getContext());
    }

    public static b04 h(ViewGroup.LayoutParams layoutParams) {
        boolean z = layoutParams instanceof b04;
        if (z) {
            b04 b04Var = (b04) layoutParams;
            b04 b04Var2 = new b04(b04Var);
            b04Var2.b = 0;
            b04Var2.b = b04Var.b;
            return b04Var2;
        }
        if (z) {
            b04 b04Var3 = new b04((b04) layoutParams);
            b04Var3.b = 0;
            return b04Var3;
        }
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            b04 b04Var4 = new b04(layoutParams);
            b04Var4.b = 0;
            return b04Var4;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        b04 b04Var5 = new b04(marginLayoutParams);
        b04Var5.b = 0;
        ((ViewGroup.MarginLayoutParams) b04Var5).leftMargin = marginLayoutParams.leftMargin;
        ((ViewGroup.MarginLayoutParams) b04Var5).topMargin = marginLayoutParams.topMargin;
        ((ViewGroup.MarginLayoutParams) b04Var5).rightMargin = marginLayoutParams.rightMargin;
        ((ViewGroup.MarginLayoutParams) b04Var5).bottomMargin = marginLayoutParams.bottomMargin;
        return b04Var5;
    }

    public static int j(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.getMarginEnd() + marginLayoutParams.getMarginStart();
    }

    public static int k(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public final void a(int i, ArrayList arrayList) {
        boolean z = getLayoutDirection() == 1;
        int childCount = getChildCount();
        int absoluteGravity = Gravity.getAbsoluteGravity(i, getLayoutDirection());
        arrayList.clear();
        if (!z) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                b04 b04Var = (b04) childAt.getLayoutParams();
                if (b04Var.b == 0 && r(childAt)) {
                    int i3 = b04Var.a;
                    int layoutDirection = getLayoutDirection();
                    int absoluteGravity2 = Gravity.getAbsoluteGravity(i3, layoutDirection) & 7;
                    if (absoluteGravity2 != 1 && absoluteGravity2 != 3 && absoluteGravity2 != 5) {
                        absoluteGravity2 = layoutDirection == 1 ? 5 : 3;
                    }
                    if (absoluteGravity2 == absoluteGravity) {
                        arrayList.add(childAt);
                    }
                }
            }
            return;
        }
        for (int i4 = childCount - 1; i4 >= 0; i4--) {
            View childAt2 = getChildAt(i4);
            b04 b04Var2 = (b04) childAt2.getLayoutParams();
            if (b04Var2.b == 0 && r(childAt2)) {
                int i5 = b04Var2.a;
                int layoutDirection2 = getLayoutDirection();
                int absoluteGravity3 = Gravity.getAbsoluteGravity(i5, layoutDirection2) & 7;
                if (absoluteGravity3 != 1 && absoluteGravity3 != 3 && absoluteGravity3 != 5) {
                    absoluteGravity3 = layoutDirection2 == 1 ? 5 : 3;
                }
                if (absoluteGravity3 == absoluteGravity) {
                    arrayList.add(childAt2);
                }
            }
        }
    }

    @Override // defpackage.vb2
    public final void addMenuProvider(jc2 jc2Var) {
        xb2 xb2Var = this.T;
        xb2Var.b.add(jc2Var);
        xb2Var.a.run();
    }

    public final void b(View view, boolean z) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        b04 b04VarG = layoutParams == null ? g() : !checkLayoutParams(layoutParams) ? h(layoutParams) : (b04) layoutParams;
        b04VarG.b = 1;
        if (!z || this.v == null) {
            addView(view, b04VarG);
        } else {
            view.setLayoutParams(b04VarG);
            this.R.add(view);
        }
    }

    public final void c() {
        if (this.f16u == null) {
            kg kgVar = new kg(getContext());
            this.f16u = kgVar;
            kgVar.setImageDrawable(this.s);
            this.f16u.setContentDescription(this.t);
            b04 b04VarG = g();
            b04VarG.a = (this.A & 112) | 8388611;
            b04VarG.b = 2;
            this.f16u.setLayoutParams(b04VarG);
            this.f16u.setOnClickListener(new yz3(this));
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof b04);
    }

    public final void d() {
        if (this.G == null) {
            fb3 fb3Var = new fb3();
            fb3Var.a = 0;
            fb3Var.b = 0;
            fb3Var.c = Integer.MIN_VALUE;
            fb3Var.d = Integer.MIN_VALUE;
            fb3Var.e = 0;
            fb3Var.f = 0;
            fb3Var.g = false;
            fb3Var.h = false;
            this.G = fb3Var;
        }
    }

    public final void e() {
        if (this.n == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext(), null);
            this.n = actionMenuView;
            actionMenuView.setPopupTheme(this.x);
            this.n.setOnMenuItemClickListener(this.V);
            ActionMenuView actionMenuView2 = this.n;
            ra3 ra3Var = new ra3(8, this);
            actionMenuView2.getClass();
            actionMenuView2.G = ra3Var;
            b04 b04VarG = g();
            b04VarG.a = (this.A & 112) | 8388613;
            this.n.setLayoutParams(b04VarG);
            b(this.n, false);
        }
        ActionMenuView actionMenuView3 = this.n;
        if (actionMenuView3.C == null) {
            ub2 ub2Var = (ub2) actionMenuView3.getMenu();
            if (this.a0 == null) {
                this.a0 = new a04(this);
            }
            this.n.setExpandedActionViewsExclusive(true);
            ub2Var.b(this.a0, this.w);
            s();
        }
    }

    public final void f() {
        if (this.q == null) {
            this.q = new kg(getContext());
            b04 b04VarG = g();
            b04VarG.a = (this.A & 112) | 8388611;
            this.q.setLayoutParams(b04VarG);
        }
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return g();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        b04 b04Var = new b04(context, attributeSet);
        b04Var.a = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, i13.b);
        b04Var.a = typedArrayObtainStyledAttributes.getInt(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        b04Var.b = 0;
        return b04Var;
    }

    public CharSequence getCollapseContentDescription() {
        kg kgVar = this.f16u;
        if (kgVar != null) {
            return kgVar.getContentDescription();
        }
        return null;
    }

    public Drawable getCollapseIcon() {
        kg kgVar = this.f16u;
        if (kgVar != null) {
            return kgVar.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        fb3 fb3Var = this.G;
        if (fb3Var != null) {
            return fb3Var.g ? fb3Var.a : fb3Var.b;
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i = this.I;
        return i != Integer.MIN_VALUE ? i : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        fb3 fb3Var = this.G;
        if (fb3Var != null) {
            return fb3Var.a;
        }
        return 0;
    }

    public int getContentInsetRight() {
        fb3 fb3Var = this.G;
        if (fb3Var != null) {
            return fb3Var.b;
        }
        return 0;
    }

    public int getContentInsetStart() {
        fb3 fb3Var = this.G;
        if (fb3Var != null) {
            return fb3Var.g ? fb3Var.b : fb3Var.a;
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i = this.H;
        return i != Integer.MIN_VALUE ? i : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        ub2 ub2Var;
        ActionMenuView actionMenuView = this.n;
        return (actionMenuView == null || (ub2Var = actionMenuView.C) == null || !ub2Var.hasVisibleItems()) ? getContentInsetEnd() : Math.max(getContentInsetEnd(), Math.max(this.I, 0));
    }

    public int getCurrentContentInsetLeft() {
        return getLayoutDirection() == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        return getLayoutDirection() == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.H, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        lg lgVar = this.r;
        if (lgVar != null) {
            return lgVar.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        lg lgVar = this.r;
        if (lgVar != null) {
            return lgVar.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        e();
        return this.n.getMenu();
    }

    public View getNavButtonView() {
        return this.q;
    }

    public CharSequence getNavigationContentDescription() {
        kg kgVar = this.q;
        if (kgVar != null) {
            return kgVar.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        kg kgVar = this.q;
        if (kgVar != null) {
            return kgVar.getDrawable();
        }
        return null;
    }

    public u5 getOuterActionMenuPresenter() {
        return null;
    }

    public Drawable getOverflowIcon() {
        e();
        return this.n.getOverflowIcon();
    }

    public Context getPopupContext() {
        return this.w;
    }

    public int getPopupTheme() {
        return this.x;
    }

    public CharSequence getSubtitle() {
        return this.L;
    }

    public final TextView getSubtitleTextView() {
        return this.p;
    }

    public CharSequence getTitle() {
        return this.K;
    }

    public int getTitleMarginBottom() {
        return this.F;
    }

    public int getTitleMarginEnd() {
        return this.D;
    }

    public int getTitleMarginStart() {
        return this.C;
    }

    public int getTitleMarginTop() {
        return this.E;
    }

    public final TextView getTitleTextView() {
        return this.o;
    }

    public yn0 getWrapper() {
        Drawable drawable;
        if (this.W == null) {
            f04 f04Var = new f04();
            f04Var.k = 0;
            f04Var.a = this;
            f04Var.h = getTitle();
            f04Var.i = getSubtitle();
            f04Var.g = f04Var.h != null;
            f04Var.f = getNavigationIcon();
            ui3 ui3VarH = ui3.h(getContext(), null, i13.a, R.attr.actionBarStyle);
            TypedArray typedArray = (TypedArray) ui3VarH.p;
            f04Var.l = ui3VarH.e(15);
            CharSequence text = typedArray.getText(27);
            if (!TextUtils.isEmpty(text)) {
                f04Var.g = true;
                f04Var.h = text;
                if ((f04Var.b & 8) != 0) {
                    setTitle(text);
                    if (f04Var.g) {
                        lb4.f(getRootView(), text);
                    }
                }
            }
            CharSequence text2 = typedArray.getText(25);
            if (!TextUtils.isEmpty(text2)) {
                f04Var.i = text2;
                if ((f04Var.b & 8) != 0) {
                    setSubtitle(text2);
                }
            }
            Drawable drawableE = ui3VarH.e(20);
            if (drawableE != null) {
                f04Var.e = drawableE;
                f04Var.c();
            }
            Drawable drawableE2 = ui3VarH.e(17);
            if (drawableE2 != null) {
                f04Var.d = drawableE2;
                f04Var.c();
            }
            if (f04Var.f == null && (drawable = f04Var.l) != null) {
                f04Var.f = drawable;
                if ((f04Var.b & 4) != 0) {
                    setNavigationIcon(drawable);
                } else {
                    setNavigationIcon((Drawable) null);
                }
            }
            f04Var.a(typedArray.getInt(10, 0));
            int resourceId = typedArray.getResourceId(9, 0);
            if (resourceId != 0) {
                View viewInflate = LayoutInflater.from(getContext()).inflate(resourceId, (ViewGroup) this, false);
                View view = f04Var.c;
                if (view != null && (f04Var.b & 16) != 0) {
                    removeView(view);
                }
                f04Var.c = viewInflate;
                if (viewInflate != null && (f04Var.b & 16) != 0) {
                    addView(viewInflate);
                }
                f04Var.a(f04Var.b | 16);
            }
            int layoutDimension = typedArray.getLayoutDimension(13, 0);
            if (layoutDimension > 0) {
                ViewGroup.LayoutParams layoutParams = getLayoutParams();
                layoutParams.height = layoutDimension;
                setLayoutParams(layoutParams);
            }
            int dimensionPixelOffset = typedArray.getDimensionPixelOffset(7, -1);
            int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(3, -1);
            if (dimensionPixelOffset >= 0 || dimensionPixelOffset2 >= 0) {
                int iMax = Math.max(dimensionPixelOffset, 0);
                int iMax2 = Math.max(dimensionPixelOffset2, 0);
                d();
                this.G.a(iMax, iMax2);
            }
            int resourceId2 = typedArray.getResourceId(28, 0);
            if (resourceId2 != 0) {
                Context context = getContext();
                this.y = resourceId2;
                xg xgVar = this.o;
                if (xgVar != null) {
                    xgVar.setTextAppearance(context, resourceId2);
                }
            }
            int resourceId3 = typedArray.getResourceId(26, 0);
            if (resourceId3 != 0) {
                Context context2 = getContext();
                this.z = resourceId3;
                xg xgVar2 = this.p;
                if (xgVar2 != null) {
                    xgVar2.setTextAppearance(context2, resourceId3);
                }
            }
            int resourceId4 = typedArray.getResourceId(22, 0);
            if (resourceId4 != 0) {
                setPopupTheme(resourceId4);
            }
            ui3VarH.j();
            if (R.string.abc_action_bar_up_description != f04Var.k) {
                f04Var.k = R.string.abc_action_bar_up_description;
                if (TextUtils.isEmpty(getNavigationContentDescription())) {
                    int i = f04Var.k;
                    f04Var.j = i != 0 ? getContext().getString(i) : null;
                    f04Var.b();
                }
            }
            f04Var.j = getNavigationContentDescription();
            e04 e04Var = new e04();
            f04Var.a.getContext();
            setNavigationOnClickListener(e04Var);
            this.W = f04Var;
        }
        return this.W;
    }

    public final int i(View view, int i) {
        b04 b04Var = (b04) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = i > 0 ? (measuredHeight - i) / 2 : 0;
        int i3 = b04Var.a & 112;
        if (i3 != 16 && i3 != 48 && i3 != 80) {
            i3 = this.J & 112;
        }
        if (i3 == 48) {
            return getPaddingTop() - i2;
        }
        if (i3 == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) b04Var).bottomMargin) - i2;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int iMax = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i4 = ((ViewGroup.MarginLayoutParams) b04Var).topMargin;
        if (iMax < i4) {
            iMax = i4;
        } else {
            int i5 = (((height - paddingBottom) - measuredHeight) - iMax) - paddingTop;
            int i6 = ((ViewGroup.MarginLayoutParams) b04Var).bottomMargin;
            if (i5 < i6) {
                iMax = Math.max(0, iMax - (i6 - i5));
            }
        }
        return paddingTop + iMax;
    }

    public final void l() {
        ArrayList arrayList = this.U;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            getMenu().removeItem(((MenuItem) obj).getItemId());
        }
        Menu menu = getMenu();
        ArrayList<MenuItem> currentMenuItems = getCurrentMenuItems();
        MenuInflater menuInflater = getMenuInflater();
        Iterator it = this.T.b.iterator();
        while (it.hasNext()) {
            ((ad1) ((jc2) it.next())).a.j(menu, menuInflater);
        }
        ArrayList<MenuItem> currentMenuItems2 = getCurrentMenuItems();
        currentMenuItems2.removeAll(currentMenuItems);
        this.U = currentMenuItems2;
    }

    public final boolean m(View view) {
        return view.getParent() == this || this.R.contains(view);
    }

    public final int n(View view, int i, int i2, int[] iArr) {
        b04 b04Var = (b04) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) b04Var).leftMargin - iArr[0];
        int iMax = Math.max(0, i3) + i;
        iArr[0] = Math.max(0, -i3);
        int i4 = i(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax, i4, iMax + measuredWidth, view.getMeasuredHeight() + i4);
        return measuredWidth + ((ViewGroup.MarginLayoutParams) b04Var).rightMargin + iMax;
    }

    public final int o(View view, int i, int i2, int[] iArr) {
        b04 b04Var = (b04) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) b04Var).rightMargin - iArr[1];
        int iMax = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int i4 = i(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax - measuredWidth, i4, iMax, view.getMeasuredHeight() + i4);
        return iMax - (measuredWidth + ((ViewGroup.MarginLayoutParams) b04Var).leftMargin);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        s();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f0);
        s();
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.P = false;
        }
        if (!this.P) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.P = true;
            }
        }
        if (actionMasked != 10 && actionMasked != 3) {
            return true;
        }
        this.P = false;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x0285 A[LOOP:0: B:107:0x0283->B:108:0x0285, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x029d A[LOOP:1: B:110:0x029b->B:111:0x029d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02bd A[LOOP:2: B:113:0x02bb->B:114:0x02bd, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0310 A[LOOP:3: B:122:0x030e->B:123:0x0310, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x020e  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onLayout(boolean r20, int r21, int r22, int r23, int r24) {
        /*
            Method dump skipped, instruction units count: 801
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        char c;
        Object[] objArr;
        int iJ;
        int iMax;
        int iCombineMeasuredStates;
        int iJ2;
        int iK;
        int iCombineMeasuredStates2;
        int iMax2;
        boolean z = fc4.a;
        int i3 = 0;
        if (getLayoutDirection() == 1) {
            objArr = true;
            c = 0;
        } else {
            c = 1;
            objArr = false;
        }
        if (r(this.q)) {
            q(this.q, i, 0, i2, this.B);
            iJ = j(this.q) + this.q.getMeasuredWidth();
            iMax = Math.max(0, k(this.q) + this.q.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(0, this.q.getMeasuredState());
        } else {
            iJ = 0;
            iMax = 0;
            iCombineMeasuredStates = 0;
        }
        if (r(this.f16u)) {
            q(this.f16u, i, 0, i2, this.B);
            iJ = j(this.f16u) + this.f16u.getMeasuredWidth();
            iMax = Math.max(iMax, k(this.f16u) + this.f16u.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f16u.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int iMax3 = Math.max(currentContentInsetStart, iJ);
        int iMax4 = Math.max(0, currentContentInsetStart - iJ);
        Object[] objArr2 = objArr;
        int[] iArr = this.S;
        iArr[objArr2 == true ? 1 : 0] = iMax4;
        if (r(this.n)) {
            q(this.n, i, iMax3, i2, this.B);
            iJ2 = j(this.n) + this.n.getMeasuredWidth();
            iMax = Math.max(iMax, k(this.n) + this.n.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.n.getMeasuredState());
        } else {
            iJ2 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int iMax5 = iMax3 + Math.max(currentContentInsetEnd, iJ2);
        iArr[c] = Math.max(0, currentContentInsetEnd - iJ2);
        if (r(this.v)) {
            iMax5 += p(this.v, i, iMax5, i2, 0, iArr);
            iMax = Math.max(iMax, k(this.v) + this.v.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.v.getMeasuredState());
        }
        if (r(this.r)) {
            iMax5 += p(this.r, i, iMax5, i2, 0, iArr);
            iMax = Math.max(iMax, k(this.r) + this.r.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.r.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (((b04) childAt.getLayoutParams()).b == 0 && r(childAt)) {
                iMax5 += p(childAt, i, iMax5, i2, 0, iArr);
                int iMax6 = Math.max(iMax, k(childAt) + childAt.getMeasuredHeight());
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState());
                iMax = iMax6;
            } else {
                iMax5 = iMax5;
            }
        }
        int i5 = iMax5;
        int i6 = this.E + this.F;
        int i7 = this.C + this.D;
        if (r(this.o)) {
            p(this.o, i, i5 + i7, i2, i6, iArr);
            int iJ3 = j(this.o) + this.o.getMeasuredWidth();
            iK = k(this.o) + this.o.getMeasuredHeight();
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.o.getMeasuredState());
            iMax2 = iJ3;
        } else {
            iK = 0;
            iCombineMeasuredStates2 = iCombineMeasuredStates;
            iMax2 = 0;
        }
        if (r(this.p)) {
            iMax2 = Math.max(iMax2, p(this.p, i, i5 + i7, i2, i6 + iK, iArr));
            iK += k(this.p) + this.p.getMeasuredHeight();
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, this.p.getMeasuredState());
        }
        int iMax7 = Math.max(iMax, iK);
        int paddingRight = getPaddingRight() + getPaddingLeft() + i5 + iMax2;
        int paddingBottom = getPaddingBottom() + getPaddingTop() + iMax7;
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i, (-16777216) & iCombineMeasuredStates2);
        int iResolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i2, iCombineMeasuredStates2 << 16);
        if (!this.b0) {
            i3 = iResolveSizeAndState2;
            break;
        }
        int childCount2 = getChildCount();
        for (int i8 = 0; i8 < childCount2; i8++) {
            View childAt2 = getChildAt(i8);
            if (r(childAt2) && childAt2.getMeasuredWidth() > 0 && childAt2.getMeasuredHeight() > 0) {
                i3 = iResolveSizeAndState2;
                break;
            }
        }
        setMeasuredDimension(iResolveSizeAndState, i3);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem menuItemFindItem;
        if (!(parcelable instanceof d04)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        d04 d04Var = (d04) parcelable;
        super.onRestoreInstanceState(d04Var.n);
        ActionMenuView actionMenuView = this.n;
        ub2 ub2Var = actionMenuView != null ? actionMenuView.C : null;
        int i = d04Var.p;
        if (i != 0 && this.a0 != null && ub2Var != null && (menuItemFindItem = ub2Var.findItem(i)) != null) {
            menuItemFindItem.expandActionView();
        }
        if (d04Var.q) {
            o9 o9Var = this.f0;
            removeCallbacks(o9Var);
            post(o9Var);
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        d();
        fb3 fb3Var = this.G;
        boolean z = i == 1;
        if (z == fb3Var.g) {
            return;
        }
        fb3Var.g = z;
        if (!fb3Var.h) {
            fb3Var.a = fb3Var.e;
            fb3Var.b = fb3Var.f;
            return;
        }
        if (z) {
            int i2 = fb3Var.d;
            if (i2 == Integer.MIN_VALUE) {
                i2 = fb3Var.e;
            }
            fb3Var.a = i2;
            int i3 = fb3Var.c;
            if (i3 == Integer.MIN_VALUE) {
                i3 = fb3Var.f;
            }
            fb3Var.b = i3;
            return;
        }
        int i4 = fb3Var.c;
        if (i4 == Integer.MIN_VALUE) {
            i4 = fb3Var.e;
        }
        fb3Var.a = i4;
        int i5 = fb3Var.d;
        if (i5 == Integer.MIN_VALUE) {
            i5 = fb3Var.f;
        }
        fb3Var.b = i5;
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        u5 u5Var;
        r5 r5Var;
        zb2 zb2Var;
        d04 d04Var = new d04(super.onSaveInstanceState());
        a04 a04Var = this.a0;
        if (a04Var != null && (zb2Var = a04Var.o) != null) {
            d04Var.p = zb2Var.a;
        }
        ActionMenuView actionMenuView = this.n;
        d04Var.q = (actionMenuView == null || (u5Var = actionMenuView.F) == null || (r5Var = u5Var.E) == null || !r5Var.b()) ? false : true;
        return d04Var;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.O = false;
        }
        if (!this.O) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.O = true;
            }
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        this.O = false;
        return true;
    }

    public final int p(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int iMax = Math.max(0, i6) + Math.max(0, i5);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + iMax + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + iMax;
    }

    public final void q(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i4 >= 0) {
            if (mode != 0) {
                i4 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i4);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    public final boolean r(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    @Override // defpackage.vb2
    public final void removeMenuProvider(jc2 jc2Var) {
        this.T.b(jc2Var);
    }

    public final void s() {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher onBackInvokedDispatcherA = zz3.a(this);
            a04 a04Var = this.a0;
            int i = 0;
            boolean z = (a04Var == null || a04Var.o == null || onBackInvokedDispatcherA == null || !isAttachedToWindow() || !this.e0) ? false : true;
            if (z && this.d0 == null) {
                if (this.c0 == null) {
                    this.c0 = zz3.b(new xz3(this, i));
                }
                zz3.c(onBackInvokedDispatcherA, this.c0);
                this.d0 = onBackInvokedDispatcherA;
                return;
            }
            if (z || (onBackInvokedDispatcher = this.d0) == null) {
                return;
            }
            zz3.d(onBackInvokedDispatcher, this.c0);
            this.d0 = null;
        }
    }

    public void setBackInvokedCallbackEnabled(boolean z) {
        if (this.e0 != z) {
            this.e0 = z;
            s();
        }
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            c();
        }
        kg kgVar = this.f16u;
        if (kgVar != null) {
            kgVar.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            c();
            this.f16u.setImageDrawable(drawable);
        } else {
            kg kgVar = this.f16u;
            if (kgVar != null) {
                kgVar.setImageDrawable(this.s);
            }
        }
    }

    public void setCollapsible(boolean z) {
        this.b0 = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.I) {
            this.I = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.H) {
            this.H = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(Drawable drawable) {
        lg lgVar = this.r;
        if (drawable != null) {
            if (lgVar == null) {
                this.r = new lg(getContext(), 0);
            }
            if (!m(this.r)) {
                b(this.r, true);
            }
        } else if (lgVar != null && m(lgVar)) {
            removeView(this.r);
            this.R.remove(this.r);
        }
        lg lgVar2 = this.r;
        if (lgVar2 != null) {
            lgVar2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence) && this.r == null) {
            this.r = new lg(getContext(), 0);
        }
        lg lgVar = this.r;
        if (lgVar != null) {
            lgVar.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            f();
        }
        kg kgVar = this.q;
        if (kgVar != null) {
            kgVar.setContentDescription(charSequence);
            ca.L(this.q, charSequence);
        }
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            f();
            if (!m(this.q)) {
                b(this.q, true);
            }
        } else {
            kg kgVar = this.q;
            if (kgVar != null && m(kgVar)) {
                removeView(this.q);
                this.R.remove(this.q);
            }
        }
        kg kgVar2 = this.q;
        if (kgVar2 != null) {
            kgVar2.setImageDrawable(drawable);
        }
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        f();
        this.q.setOnClickListener(onClickListener);
    }

    public void setOverflowIcon(Drawable drawable) {
        e();
        this.n.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i) {
        if (this.x != i) {
            this.x = i;
            if (i == 0) {
                this.w = getContext();
            } else {
                this.w = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        boolean zIsEmpty = TextUtils.isEmpty(charSequence);
        xg xgVar = this.p;
        if (!zIsEmpty) {
            if (xgVar == null) {
                Context context = getContext();
                xg xgVar2 = new xg(context, null);
                this.p = xgVar2;
                xgVar2.setSingleLine();
                this.p.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.z;
                if (i != 0) {
                    this.p.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.N;
                if (colorStateList != null) {
                    this.p.setTextColor(colorStateList);
                }
            }
            if (!m(this.p)) {
                b(this.p, true);
            }
        } else if (xgVar != null && m(xgVar)) {
            removeView(this.p);
            this.R.remove(this.p);
        }
        xg xgVar3 = this.p;
        if (xgVar3 != null) {
            xgVar3.setText(charSequence);
        }
        this.L = charSequence;
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.N = colorStateList;
        xg xgVar = this.p;
        if (xgVar != null) {
            xgVar.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        boolean zIsEmpty = TextUtils.isEmpty(charSequence);
        xg xgVar = this.o;
        if (!zIsEmpty) {
            if (xgVar == null) {
                Context context = getContext();
                xg xgVar2 = new xg(context, null);
                this.o = xgVar2;
                xgVar2.setSingleLine();
                this.o.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.y;
                if (i != 0) {
                    this.o.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.M;
                if (colorStateList != null) {
                    this.o.setTextColor(colorStateList);
                }
            }
            if (!m(this.o)) {
                b(this.o, true);
            }
        } else if (xgVar != null && m(xgVar)) {
            removeView(this.o);
            this.R.remove(this.o);
        }
        xg xgVar3 = this.o;
        if (xgVar3 != null) {
            xgVar3.setText(charSequence);
        }
        this.K = charSequence;
    }

    public void setTitleMarginBottom(int i) {
        this.F = i;
        requestLayout();
    }

    public void setTitleMarginEnd(int i) {
        this.D = i;
        requestLayout();
    }

    public void setTitleMarginStart(int i) {
        this.C = i;
        requestLayout();
    }

    public void setTitleMarginTop(int i) {
        this.E = i;
        requestLayout();
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.M = colorStateList;
        xg xgVar = this.o;
        if (xgVar != null) {
            xgVar.setTextColor(colorStateList);
        }
    }

    public void setSubtitleTextColor(int i) {
        setSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setTitleTextColor(int i) {
        setTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setCollapseContentDescription(int i) {
        setCollapseContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setCollapseIcon(int i) {
        setCollapseIcon(zf5.H(getContext(), i));
    }

    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return h(layoutParams);
    }

    public void setLogoDescription(int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setOnMenuItemClickListener(c04 c04Var) {
    }

    public void setNavigationIcon(int i) {
        setNavigationIcon(zf5.H(getContext(), i));
    }

    public void setLogo(int i) {
        setLogo(zf5.H(getContext(), i));
    }

    public void setSubtitle(int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setTitle(int i) {
        setTitle(getContext().getText(i));
    }
}
