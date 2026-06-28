package defpackage;

import android.content.Context;
import com.google.firebase.remoteconfig.RemoteConfigRegistrar;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class wo0 implements aa0 {
    public final /* synthetic */ int n;
    public final /* synthetic */ z03 o;

    public /* synthetic */ wo0(z03 z03Var, int i) {
        this.n = i;
        this.o = z03Var;
    }

    @Override // defpackage.aa0
    public final Object j(hg hgVar) {
        int i = this.n;
        z03 z03Var = this.o;
        switch (i) {
            case 0:
                return new yo0((Context) hgVar.a(Context.class), ((e61) hgVar.a(e61.class)).c(), hgVar.d(z03.a(mj1.class)), hgVar.g(tq0.class), (Executor) hgVar.l(z03Var));
            default:
                return RemoteConfigRegistrar.lambda$getComponents$0(z03Var, hgVar);
        }
    }
}
