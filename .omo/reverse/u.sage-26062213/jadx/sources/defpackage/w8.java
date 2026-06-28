package defpackage;

import android.graphics.Rect;
import android.view.autofill.AutofillId;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class w8 extends kp implements x91 {
    public final xh1 n;
    public final jh3 o;
    public final q9 p;
    public final n33 q;
    public final String r;
    public final AutofillId s;
    public final uf2 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f394u;

    public w8(xh1 xh1Var, jh3 jh3Var, q9 q9Var, n33 n33Var, String str) {
        this.n = xh1Var;
        this.o = jh3Var;
        this.p = q9Var;
        this.q = n33Var;
        this.r = str;
        new Rect();
        q9Var.setImportantForAutofill(1);
        i3 i3VarC = gg4.C(q9Var);
        AutofillId autofillIdF = i3VarC != null ? y2.f(i3VarC.a) : null;
        if (autofillIdF == null) {
            throw di0.m("Required value was null.");
        }
        this.s = autofillIdF;
        this.t = new uf2();
    }

    @Override // defpackage.x91
    public final void a(ka1 ka1Var, ka1 ka1Var2) {
        xy1 xy1VarR;
        bh3 bh3VarX;
        xy1 xy1VarR2;
        bh3 bh3VarX2;
        q9 q9Var = this.p;
        xh1 xh1Var = this.n;
        if (ka1Var != null && (xy1VarR2 = w80.R(ka1Var)) != null && (bh3VarX2 = xy1VarR2.x()) != null && ix.f(bh3VarX2)) {
            xh1Var.r().notifyViewExited(q9Var, xy1VarR2.o);
        }
        if (ka1Var2 == null || (xy1VarR = w80.R(ka1Var2)) == null || (bh3VarX = xy1VarR.x()) == null || !ix.f(bh3VarX)) {
            return;
        }
        int i = xy1VarR.o;
        n33 n33Var = this.q;
        xy1 xy1Var = (xy1) n33Var.a.b(i);
        if (xy1Var == null || xy1Var.t == -4) {
            return;
        }
        hb hbVar = n33Var.c;
        int iE = n33Var.e(xy1Var);
        long[] jArr = (long[]) hbVar.c;
        long j = jArr[iE];
        long j2 = jArr[iE + 1];
        xh1Var.r().notifyViewEntered(q9Var, i, new Rect((int) (j >> 32), (int) j, (int) (j2 >> 32), (int) j2));
    }
}
