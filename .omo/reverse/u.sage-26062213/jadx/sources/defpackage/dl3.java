package defpackage;

import android.os.Build;
import android.view.SoundEffectConstants;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dl3 implements df1 {
    public final /* synthetic */ int n;
    public final Object o;

    public /* synthetic */ dl3(int i, Object obj) {
        this.n = i;
        this.o = obj;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.n;
        t64 t64Var = t64.a;
        Object obj3 = this.o;
        switch (i) {
            case 0:
                ag1 ag1Var = (ag1) obj;
                int iIntValue = ((Number) obj2).intValue();
                if (!ag1Var.N(iIntValue & 1, (iIntValue & 3) != 2)) {
                    ag1Var.Q();
                } else {
                    String str = ((y84) obj3).n;
                    is3 is3Var = wa2.a;
                    lx3.b(str, null, ((ua2) ag1Var.j(is3Var)).a.q, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, ((ua2) ag1Var.j(is3Var)).b.k, ag1Var, 0, 0, 131066);
                }
                break;
            case 1:
                ag1 ag1Var2 = (ag1) obj;
                int iIntValue2 = ((Number) obj2).intValue();
                if (!ag1Var2.N(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    ag1Var2.Q();
                } else {
                    qn1.b(kt4.W(((y84) obj3).o, ag1Var2), null, on3.c(kd2.b, 18.0f), ((n50) ag1Var2.j(gy3.c)).P, ag1Var2, 440, 0);
                }
                break;
            default:
                int i2 = ((p91) obj).a;
                boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                Integer numC = v91.c(i2);
                if (numC != null) {
                    int iIntValue3 = numC.intValue();
                    ((q9) obj3).playSoundEffect(Build.VERSION.SDK_INT >= 31 ? yf.a.a(iIntValue3, zBooleanValue) : SoundEffectConstants.getContantForFocusDirection(iIntValue3));
                }
                break;
        }
        return t64Var;
    }
}
