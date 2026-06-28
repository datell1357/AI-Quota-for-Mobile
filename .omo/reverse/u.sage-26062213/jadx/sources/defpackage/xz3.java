package defpackage;

import androidx.appcompat.widget.Toolbar;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xz3 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ Toolbar o;

    public /* synthetic */ xz3(Toolbar toolbar, int i) {
        this.n = i;
        this.o = toolbar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.n;
        Toolbar toolbar = this.o;
        switch (i) {
            case 0:
                a04 a04Var = toolbar.a0;
                zb2 zb2Var = a04Var == null ? null : a04Var.o;
                if (zb2Var != null) {
                    zb2Var.collapseActionView();
                }
                break;
            default:
                toolbar.l();
                break;
        }
    }
}
