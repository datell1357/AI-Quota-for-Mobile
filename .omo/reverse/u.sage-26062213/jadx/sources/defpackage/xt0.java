package defpackage;

import android.os.Build;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import java.util.UUID;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xt0 extends y90 {
    public ne1 r;
    public vt0 s;
    public final View t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final st0 f413u;
    public boolean v;

    public xt0(ne1 ne1Var, vt0 vt0Var, View view, hy1 hy1Var, as0 as0Var, UUID uuid) {
        super(new ContextThemeWrapper(view.getContext(), vt0Var.e ? R.style.DialogWindowTheme : R.style.FloatingDialogWindowTheme), 0);
        this.r = ne1Var;
        this.s = vt0Var;
        this.t = view;
        Window window = getWindow();
        if (window == null) {
            k21.n("Dialog has no window");
            throw null;
        }
        vt0 vt0Var2 = this.s;
        Window window2 = getWindow();
        if (window2 != null) {
            WindowManager.LayoutParams attributes = window2.getAttributes();
            attributes.type = vt0Var2.g;
            window2.setAttributes(attributes);
        }
        int i = 1;
        window.requestFeature(1);
        window.setBackgroundDrawableResource(android.R.color.transparent);
        k75.M(window, this.s.e);
        window.setGravity(17);
        if (!this.s.e) {
            window.addFlags(65792);
            WindowManager.LayoutParams attributes2 = window.getAttributes();
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 28) {
                uf.a.a(attributes2);
            }
            if (i2 >= 30) {
                wf wfVar = wf.a;
                wfVar.b(attributes2, 0);
                wfVar.c(attributes2, 0);
            }
            window.setAttributes(attributes2);
        }
        st0 st0Var = new st0(getContext(), window);
        setTitle(this.s.f);
        st0Var.setTag(R.id.compose_view_saveable_id_tag, "Dialog:" + uuid);
        st0Var.setClipChildren(false);
        st0Var.setElevation(as0Var.v(8.0f));
        st0Var.setOutlineProvider(new wt0(0));
        this.f413u = st0Var;
        View decorView = window.getDecorView();
        ViewGroup viewGroup = decorView instanceof ViewGroup ? (ViewGroup) decorView : null;
        if (viewGroup != null) {
            d(viewGroup);
        }
        setContentView(st0Var);
        st0Var.setTag(R.id.view_tree_lifecycle_owner, on4.u(view));
        st0Var.setTag(R.id.view_tree_view_model_store_owner, kt4.y(view));
        st0Var.setTag(R.id.view_tree_saved_state_registry_owner, ht4.r(view));
        e(this.r, this.s, hy1Var);
        uo2 onBackPressedDispatcher = getOnBackPressedDispatcher();
        ka kaVar = new ka(this, i);
        onBackPressedDispatcher.getClass();
        onBackPressedDispatcher.a(new up(kaVar), this);
    }

    public static final void d(ViewGroup viewGroup) {
        viewGroup.setClipChildren(false);
        if (viewGroup instanceof st0) {
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            ViewGroup viewGroup2 = childAt instanceof ViewGroup ? (ViewGroup) childAt : null;
            if (viewGroup2 != null) {
                d(viewGroup2);
            }
        }
    }

    public final void e(ne1 ne1Var, vt0 vt0Var, hy1 hy1Var) {
        int i;
        this.r = ne1Var;
        this.s = vt0Var;
        gg3 gg3Var = vt0Var.c;
        boolean zA = xb.a(this.t);
        int iOrdinal = gg3Var.ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal == 1) {
                zA = true;
            } else {
                if (iOrdinal != 2) {
                    p61.x();
                    return;
                }
                zA = false;
            }
        }
        Window window = getWindow();
        window.getClass();
        window.setFlags(zA ? 8192 : -8193, 8192);
        int iOrdinal2 = hy1Var.ordinal();
        if (iOrdinal2 == 0) {
            i = 0;
        } else {
            if (iOrdinal2 != 1) {
                p61.x();
                return;
            }
            i = 1;
        }
        st0 st0Var = this.f413u;
        st0Var.setLayoutDirection(i);
        boolean z = vt0Var.e;
        boolean z2 = vt0Var.d;
        Window window2 = st0Var.w;
        boolean z3 = (st0Var.A && z2 == st0Var.y && z == st0Var.z) ? false : true;
        st0Var.y = z2;
        st0Var.z = z;
        if (z3) {
            WindowManager.LayoutParams attributes = window2.getAttributes();
            int i2 = z2 ? -2 : -1;
            if (i2 != attributes.width || !st0Var.A) {
                window2.setLayout(i2, -2);
                st0Var.A = true;
            }
        }
        setCanceledOnTouchOutside(vt0Var.b);
        Window window3 = getWindow();
        if (window3 != null) {
            window3.setSoftInputMode(z ? 0 : Build.VERSION.SDK_INT < 31 ? 16 : 48);
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (!this.s.a || !keyEvent.isTracking() || keyEvent.isCanceled() || i != 111) {
            return super.onKeyUp(i, keyEvent);
        }
        this.r.a();
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0086  */
    @Override // android.app.Dialog
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r10) {
        /*
            r9 = this;
            boolean r0 = super.onTouchEvent(r10)
            vt0 r1 = r9.s
            boolean r1 = r1.b
            r2 = 3
            r3 = 0
            r4 = 1
            if (r1 == 0) goto L86
            st0 r1 = r9.f413u
            r1.getClass()
            float r5 = r10.getX()
            float r5 = java.lang.Math.abs(r5)
            r6 = 2139095039(0x7f7fffff, float:3.4028235E38)
            int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r5 > 0) goto L69
            float r5 = r10.getY()
            float r5 = java.lang.Math.abs(r5)
            int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r5 > 0) goto L69
            android.view.View r5 = r1.getChildAt(r3)
            if (r5 != 0) goto L34
            goto L69
        L34:
            int r6 = r1.getLeft()
            int r7 = r5.getLeft()
            int r7 = r7 + r6
            int r6 = r5.getWidth()
            int r6 = r6 + r7
            int r1 = r1.getTop()
            int r8 = r5.getTop()
            int r8 = r8 + r1
            int r1 = r5.getHeight()
            int r1 = r1 + r8
            float r5 = r10.getX()
            int r5 = defpackage.is0.V(r5)
            if (r7 > r5) goto L69
            if (r5 > r6) goto L69
            float r5 = r10.getY()
            int r5 = defpackage.is0.V(r5)
            if (r8 > r5) goto L69
            if (r5 > r1) goto L69
            goto L86
        L69:
            int r10 = r10.getActionMasked()
            if (r10 == 0) goto L83
            if (r10 == r4) goto L77
            if (r10 == r2) goto L74
            goto L90
        L74:
            r9.v = r3
            return r0
        L77:
            boolean r10 = r9.v
            if (r10 == 0) goto L90
            ne1 r10 = r9.r
            r10.a()
            r9.v = r3
            return r4
        L83:
            r9.v = r4
            return r4
        L86:
            int r10 = r10.getActionMasked()
            if (r10 == 0) goto L91
            if (r10 == r4) goto L91
            if (r10 == r2) goto L91
        L90:
            return r0
        L91:
            r9.v = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xt0.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
    }
}
