package defpackage;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mt0 extends sc1 {
    public final /* synthetic */ sc1 n;
    public final /* synthetic */ nt0 o;

    public mt0(nt0 nt0Var, sc1 sc1Var) {
        this.o = nt0Var;
        this.n = sc1Var;
    }

    @Override // defpackage.sc1
    public final View b(int i) {
        sc1 sc1Var = this.n;
        return sc1Var.c() ? sc1Var.b(i) : this.o.onFindViewById(i);
    }

    @Override // defpackage.sc1
    public final boolean c() {
        return this.n.c() || this.o.onHasView();
    }
}
