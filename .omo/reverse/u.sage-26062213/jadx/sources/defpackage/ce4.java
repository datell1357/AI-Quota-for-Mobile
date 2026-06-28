package defpackage;

import android.view.WindowInsets;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class ce4 extends be4 {
    public nr1 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public nr1 f46u;
    public nr1 v;

    public ce4(ke4 ke4Var, WindowInsets windowInsets) {
        super(ke4Var, windowInsets);
        this.t = null;
        this.f46u = null;
        this.v = null;
    }

    @Override // defpackage.he4
    public nr1 k() {
        if (this.f46u == null) {
            this.f46u = nr1.c(this.c.getMandatorySystemGestureInsets());
        }
        return this.f46u;
    }

    @Override // defpackage.he4
    public nr1 m() {
        if (this.t == null) {
            this.t = nr1.c(this.c.getSystemGestureInsets());
        }
        return this.t;
    }

    @Override // defpackage.he4
    public nr1 o() {
        if (this.v == null) {
            this.v = nr1.c(this.c.getTappableElementInsets());
        }
        return this.v;
    }

    @Override // defpackage.zd4, defpackage.he4
    public ke4 r(int i, int i2, int i3, int i4) {
        return ke4.c(null, this.c.inset(i, i2, i3, i4));
    }

    public ce4(ke4 ke4Var, ce4 ce4Var) {
        super(ke4Var, ce4Var);
        this.t = null;
        this.f46u = null;
        this.v = null;
    }

    @Override // defpackage.ae4, defpackage.he4
    public void z(nr1 nr1Var) {
    }
}
