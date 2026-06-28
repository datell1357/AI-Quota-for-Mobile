package defpackage;

import com.google.android.gms.auth.api.signin.internal.SignInHubActivity;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class oc1 implements ap2 {
    public final /* synthetic */ int a;
    public final /* synthetic */ u90 b;

    public /* synthetic */ oc1(u90 u90Var, int i) {
        this.a = i;
        this.b = u90Var;
    }

    @Override // defpackage.ap2
    public final void a(u90 u90Var) {
        int i = this.a;
        u90 u90Var2 = this.b;
        switch (i) {
            case 0:
                pc1 pc1Var = ((SignInHubActivity) u90Var2).mFragments.a;
                pc1Var.q.b(pc1Var, pc1Var, null);
                break;
            default:
                u90.f(u90Var2, u90Var);
                break;
        }
    }
}
