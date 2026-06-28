package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class sz implements df1 {
    public final /* synthetic */ int n = 0;
    public final /* synthetic */ long o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;

    public /* synthetic */ sz(long j, zr2 zr2Var, ka0 ka0Var) {
        this.o = j;
        this.p = zr2Var;
        this.q = ka0Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.n;
        t64 t64Var = t64.a;
        Object obj3 = this.q;
        Object obj4 = this.p;
        switch (i) {
            case 0:
                zr2 zr2Var = (zr2) obj4;
                ka0 ka0Var = (ka0) obj3;
                ag1 ag1Var = (ag1) obj;
                int iIntValue = ((Integer) obj2).intValue();
                int i2 = 2;
                if (!ag1Var.N(iIntValue & 1, (iIntValue & 3) != 2)) {
                    ag1Var.Q();
                } else {
                    w80.a(this.o, ((ua2) ag1Var.j(wa2.a)).b.m, qj0.U(417635459, new l4(i2, zr2Var, ka0Var), ag1Var), ag1Var, 384);
                }
                break;
            default:
                ((Integer) obj2).getClass();
                zf5.e((nd2) obj4, this.o, (List) obj3, (ag1) obj, qj0.f0(1));
                break;
        }
        return t64Var;
    }

    public /* synthetic */ sz(nd2 nd2Var, long j, List list, int i) {
        this.p = nd2Var;
        this.o = j;
        this.q = list;
    }
}
