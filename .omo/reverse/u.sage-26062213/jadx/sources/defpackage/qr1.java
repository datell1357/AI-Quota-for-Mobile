package defpackage;

import android.os.Build;
import android.view.View;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qr1 extends b70 implements Runnable, lo2, View.OnAttachStateChangeListener {
    public final qe4 p;
    public boolean q;
    public boolean r;
    public ke4 s;

    public qr1(qe4 qe4Var) {
        super(!qe4Var.s ? 1 : 0);
        this.p = qe4Var;
    }

    @Override // defpackage.lo2
    public final ke4 g(View view, ke4 ke4Var) {
        this.s = ke4Var;
        qe4 qe4Var = this.p;
        y94 y94Var = qe4Var.q;
        he4 he4Var = ke4Var.a;
        y94Var.f(ye4.a(he4Var.i(8)));
        if (this.q) {
            if (Build.VERSION.SDK_INT == 30) {
                view.post(this);
            }
        } else if (!this.r) {
            qe4Var.r.f(ye4.a(he4Var.i(8)));
            qe4.a(qe4Var, ke4Var);
        }
        return qe4Var.s ? ke4.b : ke4Var;
    }

    @Override // defpackage.b70
    public final void k(qd4 qd4Var) {
        this.q = false;
        this.r = false;
        ke4 ke4Var = this.s;
        if (qd4Var.a.a() > 0 && ke4Var != null) {
            he4 he4Var = ke4Var.a;
            qe4 qe4Var = this.p;
            qe4Var.r.f(ye4.a(he4Var.i(8)));
            qe4Var.q.f(ye4.a(he4Var.i(8)));
            qe4.a(qe4Var, ke4Var);
        }
        this.s = null;
    }

    @Override // defpackage.b70
    public final void l(qd4 qd4Var) {
        this.q = true;
        this.r = true;
    }

    @Override // defpackage.b70
    public final ke4 m(ke4 ke4Var, List list) {
        qe4 qe4Var = this.p;
        qe4.a(qe4Var, ke4Var);
        return qe4Var.s ? ke4.b : ke4Var;
    }

    @Override // defpackage.b70
    public final pc4 n(qd4 qd4Var, pc4 pc4Var) {
        this.q = false;
        return pc4Var;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        view.requestApplyInsets();
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.q) {
            this.q = false;
            this.r = false;
            ke4 ke4Var = this.s;
            if (ke4Var != null) {
                qe4 qe4Var = this.p;
                qe4Var.r.f(ye4.a(ke4Var.a.i(8)));
                qe4.a(qe4Var, ke4Var);
                this.s = null;
            }
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
