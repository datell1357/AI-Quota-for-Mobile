package defpackage;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.StrictMode;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.IOException;
import java.io.InputStream;
import java.util.Set;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yc5 {
    public static final Object j = new Object();
    public static final Object k = new Object();
    public final Context a;
    public final cu3 b;
    public final cu3 c;
    public final cu3 d;
    public final cu3 e;
    public final cu3 f;
    public final Uri g;
    public volatile m95 h;
    public final Uri i;

    public yc5(Context context, cu3 cu3Var, cu3 cu3Var2, cu3 cu3Var3) {
        this.a = context;
        this.c = cu3Var;
        this.b = cu3Var3;
        this.d = cu3Var2;
        Pattern pattern = ld5.a;
        hg hgVar = new hg(context);
        hgVar.v("phenotype_storage_info");
        hgVar.w("storage-info.pb");
        this.g = hgVar.x();
        hg hgVar2 = new hg(context);
        hgVar2.v("phenotype_storage_info");
        hgVar2.w("device-encrypted-storage-info.pb");
        Set set = ld5.d;
        qt4.a(set.contains("directboot-files"), "The only supported locations are %s: %s", set, "directboot-files");
        hgVar2.b = "directboot-files";
        this.i = hgVar2.x();
        this.e = c75.M(new gt4(12, this));
        this.f = c75.M(new t75(cu3Var, 1));
    }

    public final void a() {
        if (!c75.W(this.a) || c().x() + 86400000 >= System.currentTimeMillis()) {
            ap1 ap1Var = ap1.o;
            return;
        }
        wd2 wd2Var = (wd2) this.c.get();
        wd2Var.getClass();
        ListenableFuture listenableFutureD = tf1.d((ListenableFuture) this.f.get());
        int i = o91.f240u;
        tf1.f(listenableFutureD instanceof o91 ? (o91) listenableFutureD : new zb1(listenableFutureD), new bb5(2, this), wd2Var);
    }

    public final pc5 b() {
        m95 m95VarC = c();
        return new pc5(m95VarC.v(), lp1.l(m95VarC.A()), m95VarC.u(), m95VarC.w(), (m95VarC.B() && m95VarC.C().u() == ((long) Build.VERSION.SDK_INT)) ? m95VarC.C().t() : "", lp1.l(m95VarC.y()), lp1.l(m95VarC.z()), m95VarC.t(), m95VarC.E(), m95VarC.D(), m95VarC.F());
    }

    public final m95 c() {
        m95 m95VarH;
        m95 m95Var = this.h;
        if (m95Var != null) {
            return m95Var;
        }
        synchronized (j) {
            m95VarH = this.h;
            if (m95VarH == null) {
                m95VarH = m95.H();
                if (c75.W(this.a)) {
                    xo4 xo4Var = (xo4) m95VarH.s(7);
                    kn4 kn4Var = kn4.a;
                    int i = um4.a;
                    kn4 kn4Var2 = kn4.b;
                    StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
                    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().build());
                    try {
                        InputStream inputStreamC = hu4.c(((gd5) this.d.get()).b(this.g));
                        try {
                            rn4 rn4VarA = ((qn4) xo4Var).a(inputStreamC, kn4Var2);
                            if (inputStreamC != null) {
                                inputStreamC.close();
                            }
                            m95VarH = (m95) rn4VarA;
                        } catch (Throwable th) {
                            if (inputStreamC != null) {
                                try {
                                    inputStreamC.close();
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                            }
                            throw th;
                        }
                    } catch (IOException unused) {
                    } finally {
                        StrictMode.setThreadPolicy(threadPolicy);
                    }
                    this.h = m95VarH;
                }
            }
        }
        return m95VarH;
    }
}
