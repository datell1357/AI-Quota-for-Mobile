package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class k9 extends xx1 implements pe1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ w33 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ k9(int i, w33 w33Var) {
        super(1);
        this.o = i;
        this.p = w33Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        boolean z;
        int i = this.o;
        w33 w33Var = this.p;
        switch (i) {
            case 0:
                w33Var.n = (ka1) obj;
                return Boolean.TRUE;
            default:
                jr0 jr0Var = (b24) obj;
                if (((md2) jr0Var).n.A) {
                    w33Var.n = jr0Var;
                    z = false;
                } else {
                    z = true;
                }
                return Boolean.valueOf(z);
        }
    }
}
