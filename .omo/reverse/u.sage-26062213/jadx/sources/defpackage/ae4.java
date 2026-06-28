package defpackage;

import android.view.WindowInsets;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class ae4 extends zd4 {
    public nr1 s;

    public ae4(ke4 ke4Var, ae4 ae4Var) {
        super(ke4Var, ae4Var);
        this.s = null;
        this.s = ae4Var.s;
    }

    @Override // defpackage.he4
    public ke4 b() {
        return ke4.c(null, this.c.consumeStableInsets());
    }

    @Override // defpackage.he4
    public ke4 c() {
        return ke4.c(null, this.c.consumeSystemWindowInsets());
    }

    @Override // defpackage.he4
    public final nr1 l() {
        if (this.s == null) {
            WindowInsets windowInsets = this.c;
            this.s = nr1.b(windowInsets.getStableInsetLeft(), windowInsets.getStableInsetTop(), windowInsets.getStableInsetRight(), windowInsets.getStableInsetBottom());
        }
        return this.s;
    }

    @Override // defpackage.he4
    public boolean s() {
        return this.c.isConsumed();
    }

    @Override // defpackage.he4
    public void z(nr1 nr1Var) {
        this.s = nr1Var;
    }

    public ae4(ke4 ke4Var, WindowInsets windowInsets) {
        super(ke4Var, windowInsets);
        this.s = null;
    }
}
