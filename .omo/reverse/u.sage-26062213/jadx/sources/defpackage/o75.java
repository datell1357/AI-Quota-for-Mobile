package defpackage;

import android.content.Context;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o75 {
    public static final Object j = new Object();
    public static final AtomicReference k = new AtomicReference();
    public static volatile o75 l = null;
    public static final cu3 m = c75.M(ny4.G);
    public final ui3 a = new ui3(14);
    public final Context b;
    public final cu3 c;
    public final cu3 d;
    public final cu3 e;
    public final cu3 f;
    public final yc5 g;
    public final cu3 h;
    public final lc5 i;

    public o75(Context context, cu3 cu3Var, cu3 cu3Var2, cu3 cu3Var3, cu3 cu3Var4, cu3 cu3Var5) {
        Context applicationContext = context.getApplicationContext();
        applicationContext.getClass();
        cu3Var.getClass();
        cu3Var2.getClass();
        cu3Var3.getClass();
        cu3Var4.getClass();
        cu3Var5.getClass();
        cu3 cu3VarM = c75.M(cu3Var);
        cu3 cu3VarM2 = c75.M(cu3Var2);
        cu3 cu3VarM3 = c75.M(new t75(cu3Var3, 0));
        cu3 cu3VarM4 = c75.M(cu3Var4);
        cu3 cu3VarM5 = c75.M(cu3Var5);
        this.b = applicationContext;
        this.c = cu3VarM;
        this.d = cu3VarM2;
        this.e = cu3VarM3;
        this.f = cu3VarM4;
        this.g = new yc5(applicationContext, cu3VarM, cu3VarM4, cu3VarM2);
        this.h = cu3VarM5;
        this.i = new lc5(applicationContext, cu3VarM, cu3VarM3, cu3VarM2);
    }

    public static void b() {
        synchronized (qj0.h) {
        }
        if (k.get() == null && qj0.i == null) {
            qj0.i = new qo3(2);
        }
    }

    public final wd2 a() {
        return (wd2) this.c.get();
    }
}
