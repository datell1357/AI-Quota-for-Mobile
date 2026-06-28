package defpackage;

import android.widget.AbsListView;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class k42 implements AbsListView.OnScrollListener {
    public final /* synthetic */ m42 a;

    public k42(m42 m42Var) {
        this.a = m42Var;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i) {
        m42 m42Var = this.a;
        i42 i42Var = m42Var.A;
        mg mgVar = m42Var.I;
        if (i != 1 || mgVar.getInputMethodMode() == 2 || mgVar.getContentView() == null) {
            return;
        }
        m42Var.E.removeCallbacks(i42Var);
        i42Var.run();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }
}
