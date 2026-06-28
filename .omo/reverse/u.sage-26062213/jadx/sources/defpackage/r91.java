package defpackage;

import android.graphics.Rect;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class r91 extends xx1 implements pe1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ s91 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ r91(s91 s91Var, int i) {
        super(1);
        this.o = i;
        this.p = s91Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.o;
        t64 t64Var = t64.a;
        s91 s91Var = this.p;
        switch (i) {
            case 0:
                k20 k20Var = (k20) obj;
                View viewI = is0.i(s91Var);
                if (!viewI.isFocused() && !viewI.hasFocus()) {
                    y91 focusOwner = ((q9) w80.S(s91Var)).getFocusOwner();
                    View viewF = ca.F(s91Var);
                    Integer numC = v91.c(k20Var.a);
                    int[] iArr = new int[2];
                    viewF.getLocationOnScreen(iArr);
                    int[] iArr2 = new int[2];
                    viewI.getLocationOnScreen(iArr2);
                    ka1 ka1VarU = gg4.u((ka1) ((dh) focusOwner).c);
                    Rect rect = null;
                    l33 l33VarV = ka1VarU != null ? gg4.v(ka1VarU) : null;
                    if (l33VarV != null) {
                        int i2 = (int) l33VarV.a;
                        int i3 = iArr[0];
                        int i4 = iArr2[0];
                        int i5 = (int) l33VarV.b;
                        int i6 = iArr[1];
                        int i7 = iArr2[1];
                        rect = new Rect((i2 + i3) - i4, (i5 + i6) - i7, (((int) l33VarV.c) + i3) - i4, (((int) l33VarV.d) + i6) - i7);
                    }
                    if (!v91.b(viewI, numC, rect)) {
                        k20Var.b = true;
                    }
                }
                break;
            default:
                is0.i(s91Var);
                break;
        }
        return t64Var;
    }
}
