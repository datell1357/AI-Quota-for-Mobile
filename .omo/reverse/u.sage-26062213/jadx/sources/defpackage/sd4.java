package defpackage;

import android.view.WindowInsets;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class sd4 extends yd4 {
    public final WindowInsets.Builder e;

    public sd4(ke4 ke4Var) {
        super(ke4Var);
        WindowInsets windowInsetsB = ke4Var.b();
        this.e = windowInsetsB != null ? r44.g(windowInsetsB) : fi1.j();
    }

    @Override // defpackage.yd4
    public ke4 b() {
        a();
        ke4 ke4VarC = ke4.c(null, this.e.build());
        nr1[] nr1VarArr = this.b;
        he4 he4Var = ke4VarC.a;
        he4Var.w(nr1VarArr);
        he4Var.v(null);
        he4Var.B(this.c);
        he4Var.C(this.d);
        return ke4VarC;
    }

    @Override // defpackage.yd4
    public void e(nr1 nr1Var) {
        this.e.setMandatorySystemGestureInsets(nr1Var.d());
    }

    @Override // defpackage.yd4
    public void f(nr1 nr1Var) {
        this.e.setStableInsets(nr1Var.d());
    }

    @Override // defpackage.yd4
    public void g(nr1 nr1Var) {
        this.e.setSystemGestureInsets(nr1Var.d());
    }

    @Override // defpackage.yd4
    public void h(nr1 nr1Var) {
        this.e.setSystemWindowInsets(nr1Var.d());
    }

    @Override // defpackage.yd4
    public void i(nr1 nr1Var) {
        this.e.setTappableElementInsets(nr1Var.d());
    }

    public sd4() {
        this.e = fi1.j();
    }
}
