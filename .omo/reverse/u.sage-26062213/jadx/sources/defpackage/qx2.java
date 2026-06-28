package defpackage;

import android.content.Context;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qx2 {
    public final String a;
    public final dd1 b;
    public final pe1 c;
    public final qi0 d;
    public final Object e = new Object();
    public volatile px2 f;

    public qx2(String str, dd1 dd1Var, pe1 pe1Var, qi0 qi0Var) {
        this.a = str;
        this.b = dd1Var;
        this.c = pe1Var;
        this.d = qi0Var;
    }

    public final px2 a(Object obj, kx1 kx1Var) {
        px2 px2Var;
        Context context = (Context) obj;
        context.getClass();
        kx1Var.getClass();
        px2 px2Var2 = this.f;
        if (px2Var2 != null) {
            return px2Var2;
        }
        synchronized (this.e) {
            try {
                if (this.f == null) {
                    Context applicationContext = context.getApplicationContext();
                    yi0 qz0Var = this.b;
                    pe1 pe1Var = this.c;
                    applicationContext.getClass();
                    List list = (List) pe1Var.k(applicationContext);
                    qi0 qi0Var = this.d;
                    h4 h4Var = new h4(25, applicationContext, this);
                    list.getClass();
                    k51 k51Var = new k51(mj1.d0, new t3(21), new cc(24, h4Var));
                    int i = 15;
                    if (qz0Var == null) {
                        qz0Var = new qz0(i);
                    }
                    this.f = new px2(new px2(new fn0(k51Var, tv4.E(new n(list, null, i)), qz0Var, qi0Var)));
                }
                px2Var = this.f;
                px2Var.getClass();
            } catch (Throwable th) {
                throw th;
            }
        }
        return px2Var;
    }
}
