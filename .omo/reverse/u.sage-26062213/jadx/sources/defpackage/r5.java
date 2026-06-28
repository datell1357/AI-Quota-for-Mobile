package defpackage;

import android.content.Context;
import android.view.View;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class r5 extends cc2 {
    public final /* synthetic */ int l = 0;
    public final /* synthetic */ u5 m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r5(u5 u5Var, Context context, kt3 kt3Var, View view) {
        super(context, kt3Var, view, false, R.attr.actionOverflowMenuStyle, 0);
        this.m = u5Var;
        if ((kt3Var.w.x & 32) != 32) {
            View view2 = u5Var.f354u;
            this.e = view2 == null ? u5Var.t : view2;
        }
        dh1 dh1Var = u5Var.I;
        this.h = dh1Var;
        ac2 ac2Var = this.i;
        if (ac2Var != null) {
            ac2Var.d(dh1Var);
        }
    }

    @Override // defpackage.cc2
    public final void c() {
        int i = this.l;
        u5 u5Var = this.m;
        switch (i) {
            case 0:
                u5Var.F = null;
                super.c();
                break;
            default:
                ub2 ub2Var = u5Var.p;
                if (ub2Var != null) {
                    ub2Var.c(true);
                }
                u5Var.E = null;
                super.c();
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r5(u5 u5Var, Context context, ub2 ub2Var, View view) {
        super(context, ub2Var, view, true, R.attr.actionOverflowMenuStyle, 0);
        this.m = u5Var;
        this.f = 8388613;
        dh1 dh1Var = u5Var.I;
        this.h = dh1Var;
        ac2 ac2Var = this.i;
        if (ac2Var != null) {
            ac2Var.d(dh1Var);
        }
    }
}
