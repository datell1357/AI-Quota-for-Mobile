package defpackage;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wc1 implements View.OnAttachStateChangeListener {
    public final /* synthetic */ int n = 1;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;

    public wc1(xc1 xc1Var, pd1 pd1Var) {
        this.p = xc1Var;
        this.o = pd1Var;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        switch (this.n) {
            case 0:
                pd1 pd1Var = (pd1) this.o;
                lc1 lc1Var = pd1Var.c;
                pd1Var.j();
                pq0.h((ViewGroup) lc1Var.mView.getParent(), ((xc1) this.p).n.E()).g();
                break;
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        switch (this.n) {
            case 0:
                break;
            default:
                ((View) this.o).removeOnAttachStateChangeListener(this);
                ((h33) this.p).x();
                break;
        }
    }

    public wc1(View view, h33 h33Var) {
        this.o = view;
        this.p = h33Var;
    }

    private final void a(View view) {
    }

    private final void b(View view) {
    }
}
