package defpackage;

import javax.net.ssl.SSLPeerUnverifiedException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zi1 implements ne1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ ne1 o;

    public /* synthetic */ zi1(int i, ne1 ne1Var) {
        this.n = i;
        this.o = ne1Var;
    }

    @Override // defpackage.ne1
    public final Object a() {
        int i = this.n;
        t64 t64Var = t64.a;
        ne1 ne1Var = this.o;
        switch (i) {
            case 0:
                try {
                } catch (SSLPeerUnverifiedException unused) {
                    return g01.n;
                }
                break;
            case 1:
                ne1Var.a();
                break;
            case 2:
                if (ne1Var != null) {
                    ne1Var.a();
                }
                break;
            default:
                if (ne1Var != null) {
                    ne1Var.a();
                }
                break;
        }
        return t64Var;
    }
}
