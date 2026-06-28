package defpackage;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ma1 extends md2 implements da1 {
    @Override // defpackage.da1
    public final void Q(ba1 ba1Var) {
        View viewI = is0.i(this);
        ba1Var.d(this.n.A && is0.i(this).hasFocusable());
        View viewFindFocus = viewI.findFocus();
        if (viewFindFocus != null) {
            ba1Var.e(v91.a(viewFindFocus, viewI));
        }
    }
}
