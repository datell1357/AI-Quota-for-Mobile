package defpackage;

import android.widget.PopupWindow;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bc2 implements PopupWindow.OnDismissListener {
    public final /* synthetic */ cc2 n;

    public bc2(cc2 cc2Var) {
        this.n = cc2Var;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.n.c();
    }
}
