package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class m8 implements ne1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ n8 o;

    public /* synthetic */ m8(n8 n8Var, int i) {
        this.n = i;
        this.o = n8Var;
    }

    @Override // defpackage.ne1
    public final Object a() {
        int i = this.n;
        n8 n8Var = this.o;
        switch (i) {
            case 0:
                return FirebaseAnalytics.getInstance(n8Var.a);
            default:
                wr3 wr3Var = n8Var.c;
                wr3Var.getClass();
                wr3Var.i(null, g01.n);
                ez3.a.getClass();
                ra3.c(new Object[0]);
                return t64.a;
        }
    }
}
