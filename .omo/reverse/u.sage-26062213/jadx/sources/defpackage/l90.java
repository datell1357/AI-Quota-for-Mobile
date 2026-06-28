package defpackage;

import android.window.OnBackInvokedDispatcher;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l90 implements n22 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;

    public /* synthetic */ l90(int i, Object obj, Object obj2) {
        this.n = i;
        this.o = obj;
        this.p = obj2;
    }

    @Override // defpackage.n22
    public final void B(p22 p22Var, f22 f22Var) {
        int i = this.n;
        Object obj = this.p;
        Object obj2 = this.o;
        switch (i) {
            case 0:
                uo2 uo2Var = (uo2) obj2;
                u90 u90Var = (u90) obj;
                if (f22Var == f22.ON_CREATE) {
                    OnBackInvokedDispatcher onBackInvokedDispatcher = u90Var.getOnBackInvokedDispatcher();
                    onBackInvokedDispatcher.getClass();
                    uo2Var.c(onBackInvokedDispatcher);
                }
                break;
            default:
                xb2 xb2Var = (xb2) obj2;
                jc2 jc2Var = (jc2) obj;
                xb2Var.getClass();
                if (f22Var == f22.ON_DESTROY) {
                    xb2Var.b(jc2Var);
                }
                break;
        }
    }
}
