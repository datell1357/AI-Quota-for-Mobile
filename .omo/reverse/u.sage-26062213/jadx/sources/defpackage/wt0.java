package defpackage;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wt0 extends ViewOutlineProvider {
    public final /* synthetic */ int a;

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        tb4 tb4Var;
        Outline outline2;
        switch (this.a) {
            case 0:
                outline.setRect(0, 0, view.getWidth(), view.getHeight());
                outline.setAlpha(0.0f);
                return;
            case 1:
                if (!(view instanceof tb4) || (outline2 = (tb4Var = (tb4) view).r) == null) {
                    return;
                }
                outline.set(outline2);
                float f = tb4Var.x;
                if (f == 0.0f && tb4Var.y == 0.0f) {
                    return;
                }
                outline.offset((int) f, (int) tb4Var.y);
                return;
            default:
                view.getClass();
                throw new ClassCastException();
        }
    }
}
