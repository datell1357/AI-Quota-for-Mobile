package defpackage;

import android.content.Context;
import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.reflect.Field;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class eb implements View.OnAttachStateChangeListener {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;

    public /* synthetic */ eb(int i, Object obj) {
        this.n = i;
        this.o = obj;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        int i = this.n;
        Object obj = this.o;
        switch (i) {
            case 0:
                fb fbVar = (fb) obj;
                Context context = view.getContext();
                if (!fbVar.d) {
                    context.getApplicationContext().registerComponentCallbacks(fbVar.e);
                    fbVar.d = true;
                }
                break;
            case 2:
                View view2 = (View) obj;
                view2.removeOnAttachStateChangeListener(this);
                Field field = lb4.a;
                view2.requestApplyInsets();
                break;
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        int i = this.n;
        Object obj = this.o;
        switch (i) {
            case 0:
                fb fbVar = (fb) obj;
                Context context = view.getContext();
                if (fbVar.d) {
                    context.getApplicationContext().unregisterComponentCallbacks(fbVar.e);
                    fbVar.d = false;
                }
                break;
            case 1:
                g30 g30Var = (g30) obj;
                ViewTreeObserver viewTreeObserver = g30Var.K;
                if (viewTreeObserver != null) {
                    if (!viewTreeObserver.isAlive()) {
                        g30Var.K = view.getViewTreeObserver();
                    }
                    g30Var.K.removeGlobalOnLayoutListener(g30Var.v);
                }
                view.removeOnAttachStateChangeListener(this);
                break;
            case 2:
                break;
            case 3:
                kr3 kr3Var = (kr3) obj;
                ViewTreeObserver viewTreeObserver2 = kr3Var.B;
                if (viewTreeObserver2 != null) {
                    if (!viewTreeObserver2.isAlive()) {
                        kr3Var.B = view.getViewTreeObserver();
                    }
                    kr3Var.B.removeGlobalOnLayoutListener(kr3Var.v);
                }
                view.removeOnAttachStateChangeListener(this);
                break;
            case 4:
                a0 a0Var = (a0) obj;
                for (Object obj2 : ci3.K(a0Var.getParent(), rb4.f295u)) {
                    if (obj2 instanceof View) {
                        View view2 = (View) obj2;
                        view2.getClass();
                        Object tag = view2.getTag(R.id.is_pooling_container_tag);
                        Boolean bool = tag instanceof Boolean ? (Boolean) tag : null;
                        if (bool != null ? bool.booleanValue() : false) {
                            break;
                        }
                    }
                }
                a0Var.e();
                break;
            default:
                view.removeOnAttachStateChangeListener(this);
                ((ir3) obj).j(null);
                break;
        }
    }

    private final void a(View view) {
    }

    private final void b(View view) {
    }

    private final void c(View view) {
    }

    private final void d(View view) {
    }

    private final void e(View view) {
    }
}
