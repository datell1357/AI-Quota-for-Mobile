package defpackage;

import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qi3 implements xo2 {
    public final /* synthetic */ int n;
    public final /* synthetic */ ri3 o;

    public /* synthetic */ qi3(ri3 ri3Var, int i) {
        this.n = i;
        this.o = ri3Var;
    }

    @Override // defpackage.xo2
    public final void onComplete(ow3 ow3Var) {
        int i = this.n;
        ri3 ri3Var = this.o;
        switch (i) {
            case 0:
                ow3Var.getClass();
                if (ow3Var.j()) {
                    ra3 ra3Var = ez3.a;
                    Objects.toString(ow3Var.g());
                    ra3Var.getClass();
                    ra3.h(new Object[0]);
                } else {
                    ra3 ra3Var2 = ez3.a;
                    ow3Var.f();
                    ra3Var2.getClass();
                    ra3.n(new Object[0]);
                }
                ri3Var.a();
                break;
            default:
                ow3Var.getClass();
                ra3 ra3Var3 = ez3.a;
                ow3Var.j();
                ra3Var3.getClass();
                ra3.h(new Object[0]);
                Set set = ri3.e;
                ri3Var.a();
                break;
        }
    }
}
