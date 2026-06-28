package defpackage;

import android.app.PendingIntent;
import u.sage.MainActivity;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h92 implements pe1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ MainActivity o;

    public /* synthetic */ h92(MainActivity mainActivity, int i) {
        this.n = i;
        this.o = mainActivity;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.n;
        t64 t64Var = t64.a;
        MainActivity mainActivity = this.o;
        fh fhVar = (fh) obj;
        switch (i) {
            case 0:
                int i2 = MainActivity.C;
                if (!mainActivity.isFinishing() && !mainActivity.isDestroyed() && fhVar.a == 3) {
                    try {
                        k05 k05Var = (k05) mainActivity.q.getValue();
                        i6 i6Var = mainActivity.r;
                        sf5 sf5VarA = sf5.a().a();
                        k05Var.getClass();
                        k05.b(fhVar, i6Var, sf5VarA);
                    } catch (IllegalStateException unused) {
                        ez3.a.getClass();
                        ra3.n(new Object[0]);
                    }
                }
                break;
            default:
                int i3 = MainActivity.C;
                if (!mainActivity.isFinishing() && !mainActivity.isDestroyed() && fhVar.a == 2) {
                    sf5.a().a();
                    PendingIntent pendingIntent = fhVar.b;
                    if (pendingIntent == null) {
                        pendingIntent = null;
                    }
                    if (pendingIntent != null) {
                        try {
                            k05 k05Var2 = (k05) mainActivity.q.getValue();
                            i6 i6Var2 = mainActivity.r;
                            sf5 sf5VarA2 = sf5.a().a();
                            k05Var2.getClass();
                            k05.b(fhVar, i6Var2, sf5VarA2);
                        } catch (IllegalStateException unused2) {
                            ez3.a.getClass();
                            ra3.n(new Object[0]);
                        }
                    }
                }
                break;
        }
        return t64Var;
        return t64Var;
    }
}
