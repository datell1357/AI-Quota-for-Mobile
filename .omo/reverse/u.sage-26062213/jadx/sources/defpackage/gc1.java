package defpackage;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gc1 extends sc1 {
    public final /* synthetic */ lc1 n;

    public gc1(lc1 lc1Var) {
        this.n = lc1Var;
    }

    @Override // defpackage.sc1
    public final View b(int i) {
        lc1 lc1Var = this.n;
        View view = lc1Var.mView;
        if (view != null) {
            return view.findViewById(i);
        }
        k21.n(di0.t("Fragment ", lc1Var, " does not have a view"));
        return null;
    }

    @Override // defpackage.sc1
    public final boolean c() {
        return this.n.mView != null;
    }
}
