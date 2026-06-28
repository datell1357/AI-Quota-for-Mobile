package defpackage;

import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i4 implements df1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ y84 o;

    public /* synthetic */ i4(y84 y84Var, int i) {
        this.n = 0;
        this.o = y84Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.n;
        t64 t64Var = t64.a;
        y84 y84Var = this.o;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                ix.e(y84Var, (ag1) obj, qj0.f0(1));
                break;
            case 1:
                ag1 ag1Var = (ag1) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (!ag1Var.N(iIntValue & 1, (iIntValue & 3) != 2)) {
                    ag1Var.Q();
                } else {
                    String strP = on4.P(R.string.settings_calendar_sync_description, new Object[]{y84Var.n}, ag1Var);
                    is3 is3Var = wa2.a;
                    lx3.b(strP, null, ((ua2) ag1Var.j(is3Var)).a.s, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, ((ua2) ag1Var.j(is3Var)).b.k, ag1Var, 0, 0, 131066);
                }
                break;
            default:
                ag1 ag1Var2 = (ag1) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (!ag1Var2.N(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    ag1Var2.Q();
                } else {
                    lx3.b(y84Var.n, null, 0L, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ag1Var2, 0, 0, 262142);
                }
                break;
        }
        return t64Var;
    }

    public /* synthetic */ i4(y84 y84Var, int i, byte b) {
        this.n = i;
        this.o = y84Var;
    }
}
