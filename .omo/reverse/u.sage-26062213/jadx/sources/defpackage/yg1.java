package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class yg1 implements pe1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ pe1 o;

    public /* synthetic */ yg1(pe1 pe1Var, int i) {
        this.n = i;
        this.o = pe1Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.n;
        pe1 pe1Var = this.o;
        switch (i) {
            case 0:
                b24 b24Var = (b24) obj;
                if (!(b24Var instanceof xg1)) {
                    k21.n("Node is not a GestureNode instance");
                    return null;
                }
                wg1 wg1Var = ((xg1) b24Var).B;
                wg1 wg1Var2 = wg1Var != null ? wg1Var : null;
                return Boolean.valueOf(wg1Var2 == null ? true : ((Boolean) pe1Var.k(wg1Var2)).booleanValue());
            case 1:
                po3 po3Var = (po3) pe1Var.k((uo3) obj);
                synchronized (wo3.c) {
                    wo3.d = wo3.d.g(po3Var.g());
                }
                return po3Var;
            default:
                Long l = (Long) obj;
                l.getClass();
                return pe1Var.k(l);
        }
    }
}
