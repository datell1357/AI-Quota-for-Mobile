package defpackage;

import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class d85 extends f95 {
    public final /* synthetic */ int o = 1;
    public final /* synthetic */ pw3 p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ Object r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d85(wc5 wc5Var, pw3 pw3Var, String str, pw3 pw3Var2) {
        super(pw3Var);
        this.r = wc5Var;
        this.q = str;
        this.p = pw3Var2;
    }

    @Override // defpackage.f95
    public final void a() {
        switch (this.o) {
            case 0:
                pw3 pw3Var = this.p;
                wc5 wc5Var = (wc5) this.r;
                String str = (String) this.q;
                try {
                    wc5Var.a.m.f(wc5Var.b, wc5.a(wc5Var, str), new gc5(wc5Var, pw3Var, str));
                    return;
                } catch (RemoteException e) {
                    sg0 sg0Var = wc5.e;
                    Object[] objArr = {str};
                    sg0Var.getClass();
                    if (Log.isLoggable("PlayCore", 6)) {
                        Log.e("PlayCore", sg0.c(sg0Var.o, "requestUpdateInfo(%s)", objArr), e);
                    }
                    pw3Var.c(new RuntimeException(e));
                    return;
                }
            default:
                synchronized (((tf5) this.r).f) {
                    try {
                        tf5 tf5Var = (tf5) this.r;
                        pw3 pw3Var2 = this.p;
                        tf5Var.e.add(pw3Var2);
                        pw3Var2.a.m(new pc4(21, tf5Var, pw3Var2));
                        if (((tf5) this.r).k.getAndIncrement() > 0) {
                            ((tf5) this.r).b.a("Already connected to the service.", new Object[0]);
                        }
                        tf5.b((tf5) this.r, (d85) this.q);
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d85(tf5 tf5Var, pw3 pw3Var, pw3 pw3Var2, d85 d85Var) {
        super(pw3Var);
        this.r = tf5Var;
        this.p = pw3Var2;
        this.q = d85Var;
    }
}
