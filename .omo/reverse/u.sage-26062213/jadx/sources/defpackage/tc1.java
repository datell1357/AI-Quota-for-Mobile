package defpackage;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import java.lang.reflect.Field;
import java.util.ArrayList;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tc1 extends FrameLayout {
    public final ArrayList n;
    public final ArrayList o;
    public View.OnApplyWindowInsetsListener p;
    public boolean q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tc1(Context context, AttributeSet attributeSet, hd1 hd1Var) {
        View view;
        super(context, attributeSet);
        context.getClass();
        attributeSet.getClass();
        this.n = new ArrayList();
        this.o = new ArrayList();
        this.q = true;
        String classAttribute = attributeSet.getClassAttribute();
        int i = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, g13.b, 0, 0);
        classAttribute = classAttribute == null ? typedArrayObtainStyledAttributes.getString(0) : classAttribute;
        String string = typedArrayObtainStyledAttributes.getString(1);
        typedArrayObtainStyledAttributes.recycle();
        int id = getId();
        lc1 lc1VarA = hd1Var.A(id);
        if (classAttribute != null && lc1VarA == null) {
            if (id == -1) {
                k21.n(di0.v("FragmentContainerView must have an android:id to add Fragment ", classAttribute, string != null ? " with tag ".concat(string) : ""));
                throw null;
            }
            bd1 bd1VarD = hd1Var.D();
            context.getClassLoader();
            lc1 lc1VarInstantiate = lc1.instantiate(bd1VarD.a.t.o, classAttribute, null);
            lc1VarInstantiate.getClass();
            lc1VarInstantiate.onInflate(context, attributeSet, (Bundle) null);
            cq cqVar = new cq(hd1Var);
            cqVar.o = true;
            lc1VarInstantiate.mContainer = this;
            cqVar.c(getId(), lc1VarInstantiate, string);
            if (cqVar.g) {
                k21.n("This transaction is already being added to the back stack");
                throw null;
            }
            cqVar.p.y(cqVar, true);
        }
        ArrayList arrayListV = hd1Var.c.v();
        int size = arrayListV.size();
        while (i < size) {
            Object obj = arrayListV.get(i);
            i++;
            pd1 pd1Var = (pd1) obj;
            lc1 lc1Var = pd1Var.c;
            if (lc1Var.mContainerId == getId() && (view = lc1Var.mView) != null && view.getParent() == null) {
                lc1Var.mContainer = this;
                pd1Var.a();
            }
        }
    }

    public final void a(View view) {
        if (this.o.contains(view)) {
            this.n.add(view);
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        view.getClass();
        Object tag = view.getTag(R.id.fragment_container_view_tag);
        if ((tag instanceof lc1 ? (lc1) tag : null) != null) {
            super.addView(view, i, layoutParams);
        } else {
            k21.m(view, " is not associated with a Fragment.", "Views added to a FragmentContainerView must be associated with a Fragment. View ");
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        ke4 ke4VarC;
        windowInsets.getClass();
        ke4 ke4VarC2 = ke4.c(null, windowInsets);
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.p;
        if (onApplyWindowInsetsListener != null) {
            WindowInsets windowInsetsOnApplyWindowInsets = onApplyWindowInsetsListener.onApplyWindowInsets(this, windowInsets);
            windowInsetsOnApplyWindowInsets.getClass();
            ke4VarC = ke4.c(null, windowInsetsOnApplyWindowInsets);
        } else {
            Field field = lb4.a;
            WindowInsets windowInsetsB = ke4VarC2.b();
            if (windowInsetsB != null && !windowInsetsB.equals(windowInsetsB)) {
                ke4VarC2 = ke4.c(this, windowInsetsB);
            }
            ke4VarC = ke4VarC2;
        }
        if (!ke4VarC.a.s()) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                lb4.a(getChildAt(i), ke4VarC);
            }
        }
        return windowInsets;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        canvas.getClass();
        if (this.q) {
            ArrayList arrayList = this.n;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                super.drawChild(canvas, (View) obj, getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        canvas.getClass();
        view.getClass();
        if (this.q) {
            ArrayList arrayList = this.n;
            if (!arrayList.isEmpty() && arrayList.contains(view)) {
                return false;
            }
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.ViewGroup
    public final void endViewTransition(View view) {
        view.getClass();
        this.o.remove(view);
        if (this.n.remove(view)) {
            this.q = true;
        }
        super.endViewTransition(view);
    }

    public final <F extends lc1> F getFragment() {
        lc1 lc1Var;
        qc1 qc1Var;
        hd1 supportFragmentManager;
        View view = this;
        while (true) {
            if (view == null) {
                lc1Var = null;
                break;
            }
            Object tag = view.getTag(R.id.fragment_container_view_tag);
            lc1Var = tag instanceof lc1 ? (lc1) tag : null;
            if (lc1Var != null) {
                break;
            }
            Object parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        if (lc1Var == null) {
            Context context = getContext();
            while (true) {
                if (!(context instanceof ContextWrapper)) {
                    qc1Var = null;
                    break;
                }
                if (context instanceof qc1) {
                    qc1Var = (qc1) context;
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            }
            if (qc1Var == null) {
                mk0.f(this, " is not within a subclass of FragmentActivity.", "View ");
                return null;
            }
            supportFragmentManager = qc1Var.getSupportFragmentManager();
        } else {
            if (!lc1Var.isAdded()) {
                throw new IllegalStateException("The Fragment " + lc1Var + " that owns View " + this + " has already been destroyed. Nested fragments should always use the child FragmentManager.");
            }
            supportFragmentManager = lc1Var.getChildFragmentManager();
        }
        return (F) supportFragmentManager.A(getId());
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        windowInsets.getClass();
        return windowInsets;
    }

    @Override // android.view.ViewGroup
    public final void removeAllViewsInLayout() {
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (-1 >= childCount) {
                super.removeAllViewsInLayout();
                return;
            } else {
                View childAt = getChildAt(childCount);
                childAt.getClass();
                a(childAt);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        view.getClass();
        a(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViewAt(int i) {
        View childAt = getChildAt(i);
        childAt.getClass();
        a(childAt);
        super.removeViewAt(i);
    }

    @Override // android.view.ViewGroup
    public final void removeViewInLayout(View view) {
        view.getClass();
        a(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViews(int i, int i2) {
        int i3 = i + i2;
        for (int i4 = i; i4 < i3; i4++) {
            View childAt = getChildAt(i4);
            childAt.getClass();
            a(childAt);
        }
        super.removeViews(i, i2);
    }

    @Override // android.view.ViewGroup
    public final void removeViewsInLayout(int i, int i2) {
        int i3 = i + i2;
        for (int i4 = i; i4 < i3; i4++) {
            View childAt = getChildAt(i4);
            childAt.getClass();
            a(childAt);
        }
        super.removeViewsInLayout(i, i2);
    }

    public final void setDrawDisappearingViewsLast(boolean z) {
        this.q = z;
    }

    @Override // android.view.ViewGroup
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
    }

    @Override // android.view.View
    public void setOnApplyWindowInsetsListener(View.OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        onApplyWindowInsetsListener.getClass();
        this.p = onApplyWindowInsetsListener;
    }

    @Override // android.view.ViewGroup
    public final void startViewTransition(View view) {
        view.getClass();
        if (view.getParent() == this) {
            this.o.add(view);
        }
        super.startViewTransition(view);
    }
}
