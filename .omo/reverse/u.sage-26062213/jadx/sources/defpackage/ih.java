package defpackage;

import android.content.Context;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ih implements gz0 {
    public Context a;

    public ih(Context context, int i) {
        switch (i) {
            case 2:
                this.a = context.getApplicationContext();
                break;
            default:
                this.a = context;
                break;
        }
    }

    @Override // defpackage.gz0
    public void a(ix ixVar) {
        nc0 nc0Var = new nc0("EmojiCompatInitializer");
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), nc0Var);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        threadPoolExecutor.execute(new l20(this, ixVar, threadPoolExecutor, 2));
    }

    public xl0 b() {
        Context context = this.a;
        if (context == null) {
            throw new IllegalStateException(Context.class.getCanonicalName() + " must be set");
        }
        xl0 xl0Var = new xl0();
        xl0Var.n = xv0.a(ca.e);
        int i = 1;
        sk0 sk0Var = new sk0(i, context);
        xl0Var.o = sk0Var;
        int i2 = 0;
        xl0Var.p = xv0.a(new wc2(sk0Var, new sk0(i2, sk0Var), i2));
        sk0 sk0Var2 = xl0Var.o;
        xl0Var.q = new t21(sk0Var2, 1);
        m03 m03VarA = xv0.a(new wc2(xl0Var.q, xv0.a(new t21(sk0Var2, 0)), i));
        xl0Var.r = m03VarA;
        g31 g31Var = new g31(i);
        sk0 sk0Var3 = xl0Var.o;
        ae3 ae3Var = new ae3(sk0Var3, m03VarA, g31Var, i2);
        m03 m03Var = xl0Var.n;
        m03 m03Var2 = xl0Var.p;
        xl0Var.s = xv0.a(new ae3(new bq0(m03Var, m03Var2, ae3Var, m03VarA, m03VarA), new z74(sk0Var3, m03Var2, m03VarA, ae3Var, m03Var, m03VarA, m03VarA), new dg4(m03Var, m03VarA, ae3Var, m03VarA), i));
        return xl0Var;
    }
}
