package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;
import java.net.MalformedURLException;
import java.net.URL;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i30 implements v14 {
    public final dd1 a;
    public final ConnectivityManager b;
    public final Context c;
    public final URL d;
    public final pr3 e;
    public final pr3 f;
    public final int g;

    public i30(Context context, pr3 pr3Var, pr3 pr3Var2) {
        tv1 tv1Var = new tv1();
        gk gkVar = gk.a;
        tv1Var.a(sv.class, gkVar);
        tv1Var.a(jm.class, gkVar);
        nk nkVar = nk.a;
        tv1Var.a(q72.class, nkVar);
        tv1Var.a(oo.class, nkVar);
        hk hkVar = hk.a;
        tv1Var.a(l60.class, hkVar);
        tv1Var.a(km.class, hkVar);
        fk fkVar = fk.a;
        tv1Var.a(b9.class, fkVar);
        tv1Var.a(hm.class, fkVar);
        mk mkVar = mk.a;
        tv1Var.a(n72.class, mkVar);
        tv1Var.a(no.class, mkVar);
        ik ikVar = ik.a;
        tv1Var.a(f90.class, ikVar);
        tv1Var.a(lm.class, ikVar);
        lk lkVar = lk.a;
        tv1Var.a(f41.class, lkVar);
        tv1Var.a(ho.class, lkVar);
        kk kkVar = kk.a;
        tv1Var.a(e41.class, kkVar);
        tv1Var.a(go.class, kkVar);
        ok okVar = ok.a;
        tv1Var.a(il2.class, okVar);
        tv1Var.a(qo.class, okVar);
        jk jkVar = jk.a;
        tv1Var.a(z31.class, jkVar);
        tv1Var.a(fo.class, jkVar);
        tv1Var.d = true;
        this.a = new dd1(3, tv1Var);
        this.c = context;
        this.b = (ConnectivityManager) context.getSystemService("connectivity");
        this.d = b(h00.c);
        this.e = pr3Var2;
        this.f = pr3Var;
        this.g = 130000;
    }

    public static URL b(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(di0.u("Invalid url: ", str), e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0110  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.co a(defpackage.co r8) {
        /*
            Method dump skipped, instruction units count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.i30.a(co):co");
    }
}
