package defpackage;

import android.graphics.Rect;
import android.view.WindowInsets;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ge4 extends fe4 {
    public ge4(ke4 ke4Var, WindowInsets windowInsets) {
        super(ke4Var, windowInsets);
    }

    @Override // defpackage.zd4, defpackage.he4
    public List<Rect> f(int i) {
        return this.c.getBoundingRects(je4.a(i));
    }

    @Override // defpackage.zd4, defpackage.he4
    public List<Rect> g(int i) {
        return this.c.getBoundingRectsIgnoringVisibility(je4.a(i));
    }

    public ge4(ke4 ke4Var, ge4 ge4Var) {
        super(ke4Var, ge4Var);
    }

    @Override // defpackage.zd4, defpackage.he4
    public void q() {
    }
}
