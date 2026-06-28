package defpackage;

import android.view.View;
import android.view.ViewGroup;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class uc extends b70 {
    public final /* synthetic */ int p;
    public final /* synthetic */ ViewGroup q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ uc(ViewGroup viewGroup, int i) {
        super(1);
        this.p = i;
        this.q = viewGroup;
    }

    @Override // defpackage.b70
    public final ke4 m(ke4 ke4Var, List list) {
        int i = this.p;
        ViewGroup viewGroup = this.q;
        switch (i) {
            case 0:
                return ((pb4) viewGroup).m(ke4Var);
            default:
                st0 st0Var = (st0) viewGroup;
                if (st0Var.z) {
                    return ke4Var;
                }
                View childAt = st0Var.getChildAt(0);
                int iMax = Math.max(0, childAt.getLeft());
                int iMax2 = Math.max(0, childAt.getTop());
                int iMax3 = Math.max(0, st0Var.getWidth() - childAt.getRight());
                int iMax4 = Math.max(0, st0Var.getHeight() - childAt.getBottom());
                return (iMax == 0 && iMax2 == 0 && iMax3 == 0 && iMax4 == 0) ? ke4Var : ke4Var.a.r(iMax, iMax2, iMax3, iMax4);
        }
    }

    @Override // defpackage.b70
    public final pc4 n(qd4 qd4Var, pc4 pc4Var) {
        int i = this.p;
        ViewGroup viewGroup = this.q;
        switch (i) {
            case 0:
                gr1 gr1Var = (gr1) ((pb4) viewGroup).M.S.d;
                if (!gr1Var.h0.A) {
                    return pc4Var;
                }
                long jG = ca.G(gr1Var.J(0L));
                int i2 = (int) (jG >> 32);
                if (i2 < 0) {
                    i2 = 0;
                }
                int i3 = (int) (jG & 4294967295L);
                if (i3 < 0) {
                    i3 = 0;
                }
                long jI = zf5.D(gr1Var).I();
                int i4 = (int) (jI >> 32);
                int i5 = (int) (jI & 4294967295L);
                long j = gr1Var.p;
                long jG2 = ca.G(gr1Var.J((((long) Float.floatToRawIntBits((int) (j >> 32))) << 32) | (((long) Float.floatToRawIntBits((int) (j & 4294967295L))) & 4294967295L)));
                int i6 = i4 - ((int) (jG2 >> 32));
                if (i6 < 0) {
                    i6 = 0;
                }
                int i7 = i5 - ((int) (jG2 & 4294967295L));
                int i8 = i7 >= 0 ? i7 : 0;
                return (i2 == 0 && i3 == 0 && i6 == 0 && i8 == 0) ? pc4Var : new pc4(1, bd.l((nr1) pc4Var.o, i2, i3, i6, i8), bd.l((nr1) pc4Var.p, i2, i3, i6, i8));
            default:
                st0 st0Var = (st0) viewGroup;
                if (st0Var.z) {
                    return pc4Var;
                }
                View childAt = st0Var.getChildAt(0);
                int iMax = Math.max(0, childAt.getLeft());
                int iMax2 = Math.max(0, childAt.getTop());
                int iMax3 = Math.max(0, st0Var.getWidth() - childAt.getRight());
                int iMax4 = Math.max(0, st0Var.getHeight() - childAt.getBottom());
                if (iMax == 0 && iMax2 == 0 && iMax3 == 0 && iMax4 == 0) {
                    return pc4Var;
                }
                nr1 nr1VarB = nr1.b(iMax, iMax2, iMax3, iMax4);
                int i9 = nr1VarB.a;
                nr1 nr1Var = (nr1) pc4Var.o;
                int i10 = nr1VarB.b;
                int i11 = nr1VarB.c;
                int i12 = nr1VarB.d;
                return new pc4(1, ke4.a(nr1Var, i9, i10, i11, i12), ke4.a((nr1) pc4Var.p, i9, i10, i11, i12));
        }
    }
}
