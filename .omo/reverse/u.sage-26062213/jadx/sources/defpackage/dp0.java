package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dp0 extends n1 {
    public final /* synthetic */ int d = 1;

    public /* synthetic */ dp0(zj3 zj3Var) {
        super(zj3Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.n1
    public final void i(e1 e1Var) {
        int i = this.d;
        Object obj = this.a;
        Serializable serializable = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                b40 b40Var = (b40) serializable;
                d73 requestLine = ((om1) e1Var).getRequestLine();
                ((mj1) obj2).getClass();
                mj1.q(b40Var, requestLine);
                ((zj3) obj).e(b40Var);
                break;
            default:
                b40 b40Var2 = (b40) serializable;
                d73 requestLine2 = ((om1) e1Var).getRequestLine();
                ((mj1) obj2).getClass();
                mj1.q(b40Var2, requestLine2);
                ((zj3) obj).e(b40Var2);
                break;
        }
    }

    public /* synthetic */ dp0(zj3 zj3Var, int i) {
        super(zj3Var, i);
    }
}
