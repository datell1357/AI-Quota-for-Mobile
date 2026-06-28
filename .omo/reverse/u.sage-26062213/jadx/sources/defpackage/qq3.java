package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qq3 implements ViewTreeObserver.OnPreDrawListener {
    public final /* synthetic */ int n;
    public final /* synthetic */ View o;
    public final /* synthetic */ xh1 p;

    public /* synthetic */ qq3(xh1 xh1Var, View view, int i) {
        this.n = i;
        this.p = xh1Var;
        this.o = view;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        int i = this.n;
        View view = this.o;
        xh1 xh1Var = this.p;
        switch (i) {
            case 0:
                if (!((tq3) xh1Var.o).c()) {
                    view.getViewTreeObserver().removeOnPreDrawListener(this);
                }
                break;
            default:
                if (!((tq3) ((sq3) xh1Var).o).c()) {
                    view.getViewTreeObserver().removeOnPreDrawListener(this);
                }
                break;
        }
        return true;
    }
}
