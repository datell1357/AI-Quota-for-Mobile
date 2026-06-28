package defpackage;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class y90 extends Dialog implements p22, vo2, dk2, yc3 {
    public r22 n;
    public final wc3 o;
    public final nv3 p;
    public final nv3 q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y90(Context context, int i) {
        super(context, i);
        context.getClass();
        final int i2 = 0;
        this.o = new wc3(new xc3(this, new vc3(i2, this)));
        this.p = new nv3(new ne1(this) { // from class: x90
            public final /* synthetic */ y90 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() {
                int i3 = i2;
                y90 y90Var = this.o;
                switch (i3) {
                    case 0:
                        iu0 iu0Var = new iu0();
                        y90Var.getNavigationEventDispatcher().b(iu0Var);
                        return iu0Var;
                    default:
                        return new uo2(new y(3, y90Var));
                }
            }
        });
        final int i3 = 1;
        this.q = new nv3(new ne1(this) { // from class: x90
            public final /* synthetic */ y90 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() {
                int i32 = i3;
                y90 y90Var = this.o;
                switch (i32) {
                    case 0:
                        iu0 iu0Var = new iu0();
                        y90Var.getNavigationEventDispatcher().b(iu0Var);
                        return iu0Var;
                    default:
                        return new uo2(new y(3, y90Var));
                }
            }
        });
    }

    public static void a(y90 y90Var) {
        super.onBackPressed();
    }

    @Override // android.app.Dialog
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        view.getClass();
        c();
        super.addContentView(view, layoutParams);
    }

    public final r22 b() {
        r22 r22Var = this.n;
        if (r22Var != null) {
            return r22Var;
        }
        r22 r22Var2 = new r22(this, true);
        this.n = r22Var2;
        return r22Var2;
    }

    public final void c() {
        Window window = getWindow();
        window.getClass();
        View decorView = window.getDecorView();
        decorView.getClass();
        decorView.setTag(R.id.view_tree_lifecycle_owner, this);
        Window window2 = getWindow();
        window2.getClass();
        View decorView2 = window2.getDecorView();
        decorView2.getClass();
        decorView2.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, this);
        Window window3 = getWindow();
        window3.getClass();
        View decorView3 = window3.getDecorView();
        decorView3.getClass();
        decorView3.setTag(R.id.view_tree_saved_state_registry_owner, this);
        Window window4 = getWindow();
        window4.getClass();
        View decorView4 = window4.getDecorView();
        decorView4.getClass();
        decorView4.setTag(R.id.view_tree_navigation_event_dispatcher_owner, this);
    }

    @Override // defpackage.p22
    public final h22 getLifecycle() {
        return b();
    }

    @Override // defpackage.dk2
    public final ck2 getNavigationEventDispatcher() {
        return getOnBackPressedDispatcher().b().c;
    }

    @Override // defpackage.vo2
    public final uo2 getOnBackPressedDispatcher() {
        return (uo2) this.q.getValue();
    }

    @Override // defpackage.yc3
    public final uc3 getSavedStateRegistry() {
        return this.o.b;
    }

    @Override // android.app.Dialog
    public final void onBackPressed() {
        ((iu0) this.p.getValue()).a();
    }

    @Override // android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 33) {
            uo2 onBackPressedDispatcher = getOnBackPressedDispatcher();
            OnBackInvokedDispatcher onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            onBackInvokedDispatcher.getClass();
            onBackPressedDispatcher.c(onBackInvokedDispatcher);
        }
        this.o.b(bundle);
        b().e(f22.ON_CREATE);
    }

    @Override // android.app.Dialog
    public final Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        bundleOnSaveInstanceState.getClass();
        this.o.c(bundleOnSaveInstanceState);
        return bundleOnSaveInstanceState;
    }

    @Override // android.app.Dialog
    public final void onStart() {
        super.onStart();
        b().e(f22.ON_RESUME);
    }

    @Override // android.app.Dialog
    public final void onStop() {
        b().e(f22.ON_DESTROY);
        this.n = null;
        super.onStop();
    }

    @Override // android.app.Dialog
    public final void setContentView(View view) {
        view.getClass();
        c();
        super.setContentView(view);
    }

    @Override // android.app.Dialog
    public final void setContentView(int i) {
        c();
        super.setContentView(i);
    }

    @Override // android.app.Dialog
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        view.getClass();
        c();
        super.setContentView(view, layoutParams);
    }
}
