package defpackage;

import android.view.View;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class g64 implements kh {
    public final Object n;
    public final ArrayList o = new ArrayList();
    public Object p;

    public g64(xy1 xy1Var) {
        this.n = xy1Var;
        this.p = xy1Var;
    }

    public final void a() {
        this.o.clear();
        this.p = this.n;
        ((xy1) this.n).R();
    }

    @Override // defpackage.kh
    public final void b(int i, Object obj) {
        ((xy1) this.p).B(i, (xy1) obj);
    }

    @Override // defpackage.kh
    public final void d(Object obj) {
        this.o.add(this.p);
        this.p = obj;
    }

    @Override // defpackage.kh
    public final void e() {
        n33 rectManager;
        w8 autofillManager;
        n33 rectManager2;
        xy1 xy1Var = (xy1) this.p;
        bo boVar = xy1Var.S;
        if (!xy1Var.H()) {
            ar1.a("onReuse is only expected on attached node");
        }
        pb4 pb4Var = xy1Var.B;
        if (pb4Var != null) {
            View view = pb4Var.o;
            if (view.getParent() != pb4Var) {
                pb4Var.addView(view);
            } else {
                pb4Var.s.a();
            }
        }
        lz1 lz1Var = xy1Var.U;
        if (lz1Var != null) {
            lz1Var.i(false);
        }
        xy1Var.G = false;
        if (xy1Var.d0) {
            xy1Var.d0 = false;
        } else {
            md2 md2Var = (gw3) xy1Var.S.f;
            for (md2 md2Var2 = md2Var; md2Var2 != null; md2Var2 = md2Var2.r) {
                if (md2Var2.A) {
                    md2Var2.B0();
                }
            }
            for (md2 md2Var3 = md2Var; md2Var3 != null; md2Var3 = md2Var3.r) {
                if (md2Var3.A) {
                    md2Var3.D0();
                }
            }
            while (md2Var != null) {
                if (md2Var.A) {
                    md2Var.x0();
                }
                md2Var = md2Var.r;
            }
        }
        int i = xy1Var.o;
        sr2 sr2Var = xy1Var.A;
        if (sr2Var != null && (rectManager2 = ((q9) sr2Var).getRectManager()) != null) {
            rectManager2.i(xy1Var);
        }
        xy1Var.o = dh3.a.addAndGet(1);
        sr2 sr2Var2 = xy1Var.A;
        if (sr2Var2 != null) {
            q9 q9Var = (q9) sr2Var2;
            q9Var.getLayoutNodes().g(i);
            q9Var.getLayoutNodes().h(xy1Var.o, xy1Var);
        }
        for (md2 md2Var4 = (md2) boVar.g; md2Var4 != null; md2Var4 = md2Var4.s) {
            md2Var4.w0();
        }
        boVar.g();
        if (boVar.f(8)) {
            xy1Var.F();
        }
        xy1.Y(xy1Var);
        sr2 sr2Var3 = xy1Var.A;
        if (sr2Var3 != null) {
            q9 q9Var2 = (q9) sr2Var3;
            if (q9.d() && (autofillManager = q9Var2.getAutofillManager()) != null) {
                q9 q9Var3 = autofillManager.p;
                xh1 xh1Var = autofillManager.n;
                uf2 uf2Var = autofillManager.t;
                if (uf2Var.e(i)) {
                    xh1Var.u(q9Var3, i, false);
                }
                bh3 bh3VarX = xy1Var.x();
                if (bh3VarX != null && bh3VarX.n.b(lh3.r)) {
                    uf2Var.a(xy1Var.o);
                    xh1Var.u(q9Var3, xy1Var.o, true);
                }
            }
        }
        sr2 sr2Var4 = xy1Var.A;
        if (sr2Var4 == null || (rectManager = ((q9) sr2Var4).getRectManager()) == null) {
            return;
        }
        rectManager.h(xy1Var);
    }

    @Override // defpackage.kh
    public final /* bridge */ /* synthetic */ void f(int i, Object obj) {
    }

    @Override // defpackage.kh
    public final void g() {
        sr2 sr2Var = ((xy1) this.n).A;
        if (sr2Var != null) {
            ((q9) sr2Var).u();
        }
    }

    @Override // defpackage.kh
    public final void h(int i, int i2, int i3) {
        ((xy1) this.p).L(i, i2, i3);
    }

    @Override // defpackage.kh
    public final Object i() {
        return this.p;
    }

    @Override // defpackage.kh
    public final void j(int i, int i2) {
        ((xy1) this.p).S(i, i2);
    }

    @Override // defpackage.kh
    public final void n() {
        this.p = this.o.remove(r0.size() - 1);
    }
}
