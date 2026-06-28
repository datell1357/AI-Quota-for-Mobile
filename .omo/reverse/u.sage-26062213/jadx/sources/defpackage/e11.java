package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class e11 extends xx1 implements pe1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ o11 p;
    public final /* synthetic */ y31 q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ e11(o11 o11Var, y31 y31Var, int i) {
        super(1);
        this.o = i;
        this.p = o11Var;
        this.q = y31Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.o;
        y31 y31Var = this.q;
        b11 b11Var = b11.p;
        b11 b11Var2 = b11.o;
        b11 b11Var3 = b11.n;
        switch (i) {
            case 0:
                k14 k14Var = (k14) obj;
                if (k14Var.a(b11Var3, b11Var2)) {
                    k41 k41Var = this.p.a.a;
                    if (k41Var == null || (r5 = k41Var.a) == null) {
                    }
                } else if (k14Var.a(b11Var2, b11Var)) {
                    k41 k41Var2 = y31Var.a.a;
                    if (k41Var2 == null || (r5 = k41Var2.a) == null) {
                    }
                }
                break;
            default:
                k14 k14Var2 = (k14) obj;
                if (!k14Var2.a(b11Var3, b11Var2)) {
                    if (k14Var2.a(b11Var2, b11Var)) {
                        o14 o14Var = y31Var.a;
                    }
                }
                break;
        }
        return j11.b;
    }
}
