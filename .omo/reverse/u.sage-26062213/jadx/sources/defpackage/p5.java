package defpackage;

import android.view.View;
import android.view.ViewConfiguration;
import androidx.appcompat.view.menu.ActionMenuItemView;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class p5 implements View.OnTouchListener, View.OnAttachStateChangeListener {
    public final float n;
    public final int o;
    public final int p;
    public final View q;
    public ac1 r;
    public ac1 s;
    public boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f256u;
    public final int[] v;
    public final /* synthetic */ int w;
    public final /* synthetic */ View x;

    public p5(View view) {
        this.v = new int[2];
        this.q = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.n = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.o = tapTimeout;
        this.p = (ViewConfiguration.getLongPressTimeout() + tapTimeout) / 2;
    }

    public final void a() {
        ac1 ac1Var = this.s;
        View view = this.q;
        if (ac1Var != null) {
            view.removeCallbacks(ac1Var);
        }
        ac1 ac1Var2 = this.r;
        if (ac1Var2 != null) {
            view.removeCallbacks(ac1Var2);
        }
    }

    public final ac2 b() {
        r5 r5Var;
        int i = this.w;
        View view = this.x;
        switch (i) {
            case 0:
                q5 q5Var = ((ActionMenuItemView) view).z;
                if (q5Var == null || (r5Var = ((s5) q5Var).a.F) == null) {
                    return null;
                }
                return r5Var.a();
            default:
                r5 r5Var2 = ((t5) view).q.E;
                if (r5Var2 == null) {
                    return null;
                }
                return r5Var2.a();
        }
    }

    public final boolean c() {
        ac2 ac2VarB;
        int i = this.w;
        View view = this.x;
        switch (i) {
            case 0:
                ActionMenuItemView actionMenuItemView = (ActionMenuItemView) view;
                tb2 tb2Var = actionMenuItemView.x;
                if (tb2Var == null || !tb2Var.a(actionMenuItemView.f11u) || (ac2VarB = b()) == null || !ac2VarB.k()) {
                }
                break;
            default:
                ((t5) view).q.k();
                break;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0122  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouch(android.view.View r13, android.view.MotionEvent r14) {
        /*
            Method dump skipped, instruction units count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.p5.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.t = false;
        this.f256u = -1;
        ac1 ac1Var = this.r;
        if (ac1Var != null) {
            this.q.removeCallbacks(ac1Var);
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public p5(ActionMenuItemView actionMenuItemView) {
        this((View) actionMenuItemView);
        this.w = 0;
        this.x = actionMenuItemView;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public p5(t5 t5Var, t5 t5Var2) {
        this(t5Var2);
        this.w = 1;
        this.x = t5Var;
    }
}
