package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.Trace;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class a0 extends ViewGroup {
    public WeakReference n;
    public IBinder o;
    public mh4 p;
    public zb0 q;
    public pb0 r;
    public h82 s;
    public boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f0u;
    public boolean v;

    public a0(Context context) {
        super(context, null, 0);
        setClipChildren(false);
        setClipToPadding(false);
        setImportantForAccessibility(1);
        eb ebVar = new eb(4, this);
        addOnAttachStateChangeListener(ebVar);
        q73 q73Var = new q73(18);
        nt1.B(this).a.add(q73Var);
        this.s = new h82(this, ebVar, q73Var, 1);
    }

    private final void setParentContext(zb0 zb0Var) {
        if (this.q != zb0Var) {
            this.q = zb0Var;
            if (zb0Var != null) {
                this.n = null;
            }
            mh4 mh4Var = this.p;
            if (mh4Var != null) {
                mh4Var.a();
                this.p = null;
                if (isAttachedToWindow()) {
                    f();
                }
            }
        }
    }

    private final void setPreviousAttachedWindowToken(IBinder iBinder) {
        if (this.o != iBinder) {
            this.o = iBinder;
            this.n = null;
        }
    }

    public abstract void a(int i, ag1 ag1Var);

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        c();
        super.addView(view);
    }

    @Override // android.view.ViewGroup
    public final boolean addViewInLayout(View view, int i, ViewGroup.LayoutParams layoutParams) {
        c();
        return super.addViewInLayout(view, i, layoutParams);
    }

    public final void b() {
        if (isAttachedToWindow()) {
            setPreviousAttachedWindowToken(getWindowToken());
            if (this.r == null) {
                q9 q9Var = null;
                if (getChildCount() != 0) {
                    View childAt = getChildAt(0);
                    if (childAt instanceof q9) {
                        q9Var = (q9) childAt;
                    }
                }
                if (q9Var != null) {
                    q9Var.setComposeViewContext(l(nt1.w(this), q9Var.getComposeViewContext()));
                }
            }
            if (getShouldCreateCompositionOnAttachedToWindow()) {
                f();
            }
        }
    }

    public final void c() {
        if (this.f0u) {
            return;
        }
        p61.s(di0.v("Cannot add views to ", getClass().getSimpleName(), "; only Compose content is supported"));
    }

    public final void d() {
        pb0 pb0Var;
        View view;
        if (this.q == null && !isAttachedToWindow() && ((pb0Var = this.r) == null || (view = pb0Var.a) == null || !view.isAttachedToWindow())) {
            k21.n("createComposition requires a previous call to createComposition(ComposeViewContext), a parent reference, or the View to be attached to a window. Attach the View or call setParentCompositionReference.");
        } else {
            f();
        }
    }

    public final void e() {
        View childAt = getChildAt(0);
        q9 q9Var = childAt instanceof q9 ? (q9) childAt : null;
        if (q9Var != null && q9Var.P0) {
            q9Var.n.b();
            q9Var.P0 = false;
        }
        mh4 mh4Var = this.p;
        if (mh4Var != null) {
            mh4Var.a();
        }
        this.p = null;
        requestLayout();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void f() {
        if (this.p == null) {
            boolean z = false;
            Object[] objArr = 0;
            try {
                this.f0u = true;
                Trace.beginSection("Compose:initializeView");
                try {
                    pb0 pb0VarJ = this.r;
                    if (pb0VarJ == null) {
                        pb0VarJ = j();
                    }
                    this.p = ph4.a(this, pb0VarJ, new ka0(1003123809, true, new z(objArr == true ? 1 : 0, this)));
                    Trace.endSection();
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            } finally {
                this.f0u = false;
            }
        }
    }

    /* JADX INFO: renamed from: getAutoClearFocusBehavior-4UtRPd4, reason: not valid java name */
    public final int m0getAutoClearFocusBehavior4UtRPd4() {
        Object tag = getTag(R.id.auto_clear_focus_behavior_tag);
        pk pkVar = tag instanceof pk ? (pk) tag : null;
        if (pkVar != null) {
            return pkVar.a;
        }
        return 1;
    }

    public final pb0 getComposeViewContext$ui() {
        return this.r;
    }

    public final boolean getHasComposition() {
        return this.p != null;
    }

    public boolean getShouldCreateCompositionOnAttachedToWindow() {
        return true;
    }

    public final boolean getShowLayoutBounds() {
        return this.t;
    }

    public void h(boolean z, int i, int i2, int i3, int i4) {
        View childAt = getChildAt(0);
        if (childAt != null) {
            childAt.layout(getPaddingLeft(), getPaddingTop(), (i3 - i) - getPaddingRight(), (i4 - i2) - getPaddingBottom());
        }
    }

    public void i(int i, int i2) {
        View childAt = getChildAt(0);
        if (childAt == null) {
            super.onMeasure(i, i2);
            return;
        }
        childAt.measure(View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - getPaddingLeft()) - getPaddingRight()), View.MeasureSpec.getMode(i)), View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i2) - getPaddingTop()) - getPaddingBottom()), View.MeasureSpec.getMode(i2)));
        setMeasuredDimension(getPaddingRight() + getPaddingLeft() + childAt.getMeasuredWidth(), getPaddingBottom() + getPaddingTop() + childAt.getMeasuredHeight());
    }

    @Override // android.view.ViewGroup
    public final boolean isTransitionGroup() {
        return !this.v || super.isTransitionGroup();
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0007  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.pb0 j() {
        /*
            r9 = this;
            int r0 = r9.getChildCount()
            r1 = 0
            if (r0 != 0) goto L9
        L7:
            r0 = r1
            goto L1c
        L9:
            r0 = 0
            android.view.View r0 = r9.getChildAt(r0)
            boolean r2 = r0 instanceof defpackage.q9
            if (r2 == 0) goto L15
            q9 r0 = (defpackage.q9) r0
            goto L16
        L15:
            r0 = r1
        L16:
            if (r0 == 0) goto L7
            pb0 r0 = r0.getComposeViewContext()
        L1c:
            android.view.View r4 = defpackage.nt1.w(r9)
            pb0 r2 = defpackage.nt1.z(r4)
            if (r2 != 0) goto L87
            zb0 r5 = r9.k()
            p22 r9 = defpackage.on4.u(r4)
            if (r9 != 0) goto L3a
            if (r0 == 0) goto L37
            p22 r9 = r0.c()
            goto L38
        L37:
            r9 = r1
        L38:
            if (r9 == 0) goto L3c
        L3a:
            r6 = r9
            goto L42
        L3c:
            java.lang.String r9 = "Composed into the View which doesn't propagate ViewTreeLifecycleOwner!"
            defpackage.k21.n(r9)
            return r1
        L42:
            yc3 r9 = defpackage.ht4.r(r4)
            if (r9 != 0) goto L56
            if (r0 == 0) goto L53
            r0.f()
            yc3 r9 = r0.e
            r9.getClass()
            goto L54
        L53:
            r9 = r1
        L54:
            if (r9 == 0) goto L58
        L56:
            r7 = r9
            goto L5e
        L58:
            java.lang.String r9 = "Composed into the View which doesn't propagate ViewTreeSavedStateRegistryOwner!"
            defpackage.k21.n(r9)
            return r1
        L5e:
            cc4 r9 = defpackage.kt4.y(r4)
            if (r9 != 0) goto L6d
            if (r0 == 0) goto L6b
            r0.f()
            cc4 r1 = r0.f
        L6b:
            r8 = r1
            goto L6e
        L6d:
            r8 = r9
        L6e:
            pb0 r2 = new pb0
            android.view.View r9 = defpackage.nt1.w(r4)
            pb0 r3 = defpackage.nt1.z(r9)
            r2.<init>(r3, r4, r5, r6, r7, r8)
            java.lang.ref.WeakReference r9 = new java.lang.ref.WeakReference
            r9.<init>(r2)
            r0 = 2131296322(0x7f090042, float:1.8210557E38)
            r4.setTag(r0, r9)
            return r2
        L87:
            pb0 r9 = r9.l(r4, r2)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.a0.j():pb0");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0070  */
    /* JADX WARN: Type inference failed for: r0v0, types: [zb0] */
    /* JADX WARN: Type inference failed for: r0v1, types: [zb0] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v2, types: [zb0] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9, types: [h33] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.zb0 k() {
        /*
            r5 = this;
            zb0 r0 = r5.q
            if (r0 != 0) goto L8c
            zb0 r0 = defpackage.jf4.a(r5)
            if (r0 == 0) goto Lb
            goto L20
        Lb:
            android.view.ViewParent r1 = r5.getParent()
        Lf:
            if (r0 != 0) goto L20
            boolean r2 = r1 instanceof android.view.View
            if (r2 == 0) goto L20
            android.view.View r1 = (android.view.View) r1
            zb0 r0 = defpackage.jf4.a(r1)
            android.view.ViewParent r1 = defpackage.fl4.q(r1)
            goto Lf
        L20:
            f33 r1 = defpackage.f33.o
            r2 = 0
            if (r0 == 0) goto L48
            boolean r3 = r0 instanceof defpackage.h33
            if (r3 == 0) goto L3d
            r3 = r0
            h33 r3 = (defpackage.h33) r3
            wr3 r3 = r3.f119u
            java.lang.Object r3 = r3.getValue()
            f33 r3 = (defpackage.f33) r3
            int r3 = r3.compareTo(r1)
            if (r3 <= 0) goto L3b
            goto L3d
        L3b:
            r3 = r2
            goto L3e
        L3d:
            r3 = r0
        L3e:
            if (r3 == 0) goto L49
            java.lang.ref.WeakReference r4 = new java.lang.ref.WeakReference
            r4.<init>(r3)
            r5.n = r4
            goto L49
        L48:
            r0 = r2
        L49:
            if (r0 != 0) goto L8c
            java.lang.ref.WeakReference r0 = r5.n
            if (r0 == 0) goto L6d
            java.lang.Object r0 = r0.get()
            zb0 r0 = (defpackage.zb0) r0
            if (r0 == 0) goto L6d
            boolean r3 = r0 instanceof defpackage.h33
            if (r3 == 0) goto L6e
            r3 = r0
            h33 r3 = (defpackage.h33) r3
            wr3 r3 = r3.f119u
            java.lang.Object r3 = r3.getValue()
            f33 r3 = (defpackage.f33) r3
            int r3 = r3.compareTo(r1)
            if (r3 <= 0) goto L6d
            goto L6e
        L6d:
            r0 = r2
        L6e:
            if (r0 != 0) goto L8c
            h33 r0 = defpackage.jf4.b(r5)
            wr3 r3 = r0.f119u
            java.lang.Object r3 = r3.getValue()
            f33 r3 = (defpackage.f33) r3
            int r1 = r3.compareTo(r1)
            if (r1 <= 0) goto L83
            r2 = r0
        L83:
            if (r2 == 0) goto L8c
            java.lang.ref.WeakReference r1 = new java.lang.ref.WeakReference
            r1.<init>(r2)
            r5.n = r1
        L8c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.a0.k():zb0");
    }

    public final pb0 l(View view, pb0 pb0Var) {
        zb0 zb0VarK = k();
        p22 p22VarU = on4.u(view);
        cc4 cc4VarY = kt4.y(view);
        yc3 yc3VarR = ht4.r(view);
        pb0Var.f();
        zb0 zb0Var = pb0Var.c;
        zb0Var.getClass();
        if (zb0VarK == zb0Var && p22VarU == pb0Var.c()) {
            pb0Var.f();
            if (cc4VarY == pb0Var.f) {
                pb0Var.f();
                yc3 yc3Var = pb0Var.e;
                yc3Var.getClass();
                if (yc3VarR == yc3Var) {
                    return pb0Var;
                }
            }
        }
        hi0 hi0VarJ = zb0VarK.j();
        pb0Var.f();
        zb0 zb0Var2 = pb0Var.c;
        zb0Var2.getClass();
        if (hi0VarJ != zb0Var2.j()) {
            e();
        }
        if (p22VarU == null) {
            p22VarU = pb0Var.c();
        }
        p22 p22Var = p22VarU;
        if (yc3VarR == null) {
            pb0Var.f();
            yc3VarR = pb0Var.e;
            yc3VarR.getClass();
        }
        pb0 pb0Var2 = new pb0(pb0Var, view, zb0VarK, p22Var, yc3VarR, cc4VarY);
        view.setTag(R.id.androidx_compose_ui_view_compose_view_context, new WeakReference(pb0Var2));
        return pb0Var2;
    }

    public final void m(pb0 pb0Var) {
        mh4 mh4Var = this.p;
        boolean z = (mh4Var == null || mh4Var.o.v()) ? false : true;
        e();
        View childAt = getChildAt(0);
        q9 q9Var = childAt instanceof q9 ? (q9) childAt : null;
        if (pb0Var != null) {
            if (q9Var != null) {
                q9Var.setComposeViewContext(pb0Var);
            }
            if (z) {
                f();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        kg2 kg2Var = jf4.a;
        Object objQ = fl4.q(this);
        View view = this;
        while (objQ instanceof View) {
            View view2 = (View) objQ;
            if (view2.getId() == 16908290) {
                break;
            }
            view = view2;
            objQ = view2.getParent();
        }
        if (view.getParent() == null) {
            getHandler().postAtFrontOfQueue(new y(0, this));
        } else {
            b();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        h(z, i, i2, i3, i4);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        f();
        i(i, i2);
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
        View childAt = getChildAt(0);
        if (childAt != null) {
            childAt.setLayoutDirection(i);
        }
    }

    /* JADX INFO: renamed from: setAutoClearFocusBehavior-17tfJxM, reason: not valid java name */
    public final void m1setAutoClearFocusBehavior17tfJxM(int i) {
        setTag(R.id.auto_clear_focus_behavior_tag, new pk(i));
    }

    public final void setComposeViewContext$ui(pb0 pb0Var) {
        if (this.r == pb0Var) {
            return;
        }
        this.r = pb0Var;
        m(pb0Var);
    }

    public final void setParentCompositionContext(zb0 zb0Var) {
        setParentContext(zb0Var);
    }

    public final void setShowLayoutBounds(boolean z) {
        this.t = z;
        KeyEvent.Callback childAt = getChildAt(0);
        if (childAt != null) {
            ((q9) ((sr2) childAt)).setShowLayoutBounds(z);
        }
    }

    @Override // android.view.ViewGroup
    public void setTransitionGroup(boolean z) {
        super.setTransitionGroup(z);
        this.v = true;
    }

    public final void setViewCompositionStrategy(mb4 mb4Var) {
        h82 h82Var = this.s;
        if (h82Var != null) {
            h82Var.a();
        }
        ((bi4) mb4Var).getClass();
        eb ebVar = new eb(4, this);
        addOnAttachStateChangeListener(ebVar);
        q73 q73Var = new q73(18);
        nt1.B(this).a.add(q73Var);
        this.s = new h82(this, ebVar, q73Var, 1);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i) {
        c();
        super.addView(view, i);
    }

    @Override // android.view.ViewGroup
    public final boolean addViewInLayout(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        c();
        return super.addViewInLayout(view, i, layoutParams, z);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, int i2) {
        c();
        super.addView(view, i, i2);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        c();
        super.addView(view, layoutParams);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        c();
        super.addView(view, i, layoutParams);
    }

    private static /* synthetic */ void getDisposeViewCompositionStrategy$annotations() {
    }

    public static /* synthetic */ void getShowLayoutBounds$annotations() {
    }
}
