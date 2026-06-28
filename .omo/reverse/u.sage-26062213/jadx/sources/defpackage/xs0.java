package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xs0 implements df1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Context o;

    public /* synthetic */ xs0(Context context, int i, int i2) {
        this.n = i2;
        this.o = context;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.n;
        t64 t64Var = t64.a;
        Context context = this.o;
        ag1 ag1Var = (ag1) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                on4.f(context, ag1Var, qj0.f0(1));
                break;
            default:
                on4.h(context, ag1Var, qj0.f0(1));
                break;
        }
        return t64Var;
    }
}
