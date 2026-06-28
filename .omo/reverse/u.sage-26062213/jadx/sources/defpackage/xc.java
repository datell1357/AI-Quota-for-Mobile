package defpackage;

import android.view.View;
import android.view.ViewGroup;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xc implements db2 {
    public final /* synthetic */ pb4 a;
    public final /* synthetic */ xy1 b;

    public xc(pb4 pb4Var, xy1 xy1Var) {
        this.a = pb4Var;
        this.b = xy1Var;
    }

    @Override // defpackage.db2
    public final int a(jt1 jt1Var, List list, int i) {
        pb4 pb4Var = this.a;
        ViewGroup.LayoutParams layoutParams = pb4Var.getLayoutParams();
        layoutParams.getClass();
        pb4Var.measure(bd.k(pb4Var, 0, i, layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
        return pb4Var.getMeasuredHeight();
    }

    @Override // defpackage.db2
    public final int c(jt1 jt1Var, List list, int i) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        pb4 pb4Var = this.a;
        ViewGroup.LayoutParams layoutParams = pb4Var.getLayoutParams();
        layoutParams.getClass();
        pb4Var.measure(iMakeMeasureSpec, bd.k(pb4Var, 0, i, layoutParams.height));
        return pb4Var.getMeasuredWidth();
    }

    @Override // defpackage.db2
    public final eb2 f(gb2 gb2Var, List list, long j) {
        pb4 pb4Var = this.a;
        int childCount = pb4Var.getChildCount();
        h01 h01Var = h01.n;
        if (childCount == 0) {
            return gb2Var.e0(mf0.j(j), mf0.i(j), h01Var, l9.v);
        }
        if (mf0.j(j) != 0) {
            pb4Var.getChildAt(0).setMinimumWidth(mf0.j(j));
        }
        if (mf0.i(j) != 0) {
            pb4Var.getChildAt(0).setMinimumHeight(mf0.i(j));
        }
        int iJ = mf0.j(j);
        int iH = mf0.h(j);
        ViewGroup.LayoutParams layoutParams = pb4Var.getLayoutParams();
        layoutParams.getClass();
        int iK = bd.k(pb4Var, iJ, iH, layoutParams.width);
        int i = mf0.i(j);
        int iG = mf0.g(j);
        ViewGroup.LayoutParams layoutParams2 = pb4Var.getLayoutParams();
        layoutParams2.getClass();
        pb4Var.measure(iK, bd.k(pb4Var, i, iG, layoutParams2.height));
        return gb2Var.e0(pb4Var.getMeasuredWidth(), pb4Var.getMeasuredHeight(), h01Var, new vc(pb4Var, this.b, 1));
    }

    @Override // defpackage.db2
    public final int g(jt1 jt1Var, List list, int i) {
        pb4 pb4Var = this.a;
        ViewGroup.LayoutParams layoutParams = pb4Var.getLayoutParams();
        layoutParams.getClass();
        pb4Var.measure(bd.k(pb4Var, 0, i, layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
        return pb4Var.getMeasuredHeight();
    }

    @Override // defpackage.db2
    public final int i(jt1 jt1Var, List list, int i) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        pb4 pb4Var = this.a;
        ViewGroup.LayoutParams layoutParams = pb4Var.getLayoutParams();
        layoutParams.getClass();
        pb4Var.measure(iMakeMeasureSpec, bd.k(pb4Var, 0, i, layoutParams.height));
        return pb4Var.getMeasuredWidth();
    }
}
