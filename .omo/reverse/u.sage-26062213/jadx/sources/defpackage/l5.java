package defpackage;

import androidx.appcompat.widget.ActionBarOverlayLayout;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class l5 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ ActionBarOverlayLayout o;

    public /* synthetic */ l5(ActionBarOverlayLayout actionBarOverlayLayout, int i) {
        this.n = i;
        this.o = actionBarOverlayLayout;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.n;
        ActionBarOverlayLayout actionBarOverlayLayout = this.o;
        switch (i) {
            case 0:
                actionBarOverlayLayout.g();
                actionBarOverlayLayout.G = actionBarOverlayLayout.p.animate().translationY(0.0f).setListener(actionBarOverlayLayout.H);
                break;
            default:
                actionBarOverlayLayout.g();
                actionBarOverlayLayout.G = actionBarOverlayLayout.p.animate().translationY(-actionBarOverlayLayout.p.getHeight()).setListener(actionBarOverlayLayout.H);
                break;
        }
    }
}
