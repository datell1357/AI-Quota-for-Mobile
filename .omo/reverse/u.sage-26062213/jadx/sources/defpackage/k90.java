package defpackage;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k90 implements ne1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ u90 o;

    public /* synthetic */ k90(u90 u90Var, int i) {
        this.n = i;
        this.o = u90Var;
    }

    @Override // defpackage.ne1
    public final Object a() {
        int i = this.n;
        u90 u90Var = this.o;
        switch (i) {
            case 0:
                u90Var.reportFullyDrawn();
                return t64.a;
            case 1:
                return u90.c(u90Var);
            case 2:
                iu0 iu0Var = new iu0();
                u90Var.getNavigationEventDispatcher().b(iu0Var);
                return iu0Var;
            case 3:
                return new zc3(u90Var.getApplication(), u90Var, u90Var.getIntent() != null ? u90Var.getIntent().getExtras() : null);
            default:
                int i2 = 0;
                uo2 uo2Var = new uo2(new j90(u90Var, 0));
                if (Build.VERSION.SDK_INT >= 33) {
                    if (nt1.g(Looper.myLooper(), Looper.getMainLooper())) {
                        u90Var.getLifecycle().a(new l90(i2, uo2Var, u90Var));
                    } else {
                        new Handler(Looper.getMainLooper()).post(new h7(5, u90Var, uo2Var));
                    }
                }
                return uo2Var;
        }
    }
}
