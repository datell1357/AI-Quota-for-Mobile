package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m11 extends xx1 implements pe1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ n11 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ m11(n11 n11Var, int i) {
        super(1);
        this.o = i;
        this.p = n11Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.o;
        b11 b11Var = b11.p;
        b11 b11Var2 = b11.o;
        b11 b11Var3 = b11.n;
        n11 n11Var = this.p;
        switch (i) {
            case 0:
                k14 k14Var = (k14) obj;
                boolean zA = k14Var.a(b11Var3, b11Var2);
                Object obj2 = null;
                if (zA) {
                    l30 l30Var = n11Var.F.a.c;
                    if (l30Var != null) {
                        obj2 = l30Var.c;
                    }
                } else if (k14Var.a(b11Var2, b11Var)) {
                    l30 l30Var2 = n11Var.G.a.c;
                    if (l30Var2 != null) {
                        obj2 = l30Var2.c;
                    }
                } else {
                    obj2 = j11.e;
                }
                return obj2 == null ? j11.e : obj2;
            default:
                k14 k14Var2 = (k14) obj;
                if (k14Var2.a(b11Var3, b11Var2)) {
                    sn3 sn3Var = n11Var.F.a.b;
                    return sn3Var != null ? sn3Var.b : j11.d;
                }
                if (!k14Var2.a(b11Var2, b11Var)) {
                    return j11.d;
                }
                sn3 sn3Var2 = n11Var.G.a.b;
                return sn3Var2 != null ? sn3Var2.b : j11.d;
        }
    }
}
