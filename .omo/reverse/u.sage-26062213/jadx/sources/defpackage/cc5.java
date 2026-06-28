package defpackage;

import com.google.android.gms.auth.blockstore.BlockstoreClient;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cc5 extends rn4 {
    private static final cc5 zzl;
    private static volatile xo4 zzm;
    private int zzb;
    private boolean zzf;
    private int zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;
    private String zze = "";
    private do4 zzg = ap4.r;

    static {
        cc5 cc5Var = new cc5();
        zzl = cc5Var;
        rn4.o(cc5.class, cc5Var);
    }

    public static cc5 v(InputStream inputStream, kn4 kn4Var) throws fo4 {
        cc5 cc5Var = zzl;
        cn4 cn4VarH = cn4.h(inputStream, BlockstoreClient.MAX_SIZE);
        rn4 rn4VarI = cc5Var.i();
        try {
            cp4 cp4VarA = zo4.c.a(rn4VarI.getClass());
            e50 e50Var = cn4VarH.c;
            if (e50Var == null) {
                e50Var = new e50(cn4VarH);
            }
            cp4VarA.f(rn4VarI, e50Var, kn4Var);
            cp4VarA.h(rn4VarI);
            rn4.r(rn4VarI);
            return (cc5) rn4VarI;
        } catch (fo4 e) {
            if (e.n) {
                throw new fo4(e.getMessage(), e);
            }
            throw e;
        } catch (hp4 e2) {
            throw e2.a();
        } catch (IOException e3) {
            if (e3.getCause() instanceof fo4) {
                throw ((fo4) e3.getCause());
            }
            throw new fo4(e3.getMessage(), e3);
        } catch (RuntimeException e4) {
            if (e4.getCause() instanceof fo4) {
                throw ((fo4) e4.getCause());
            }
            throw e4;
        }
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zzl, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0003\u001a\u0004᠌\u0002\u0005ဇ\u0003\u0006ဇ\u0005\u0007ဇ\u0004", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", mm4.b, "zzi", "zzk", "zzj"});
        }
        if (i2 == 3) {
            return new cc5();
        }
        if (i2 == 4) {
            return new pz4(zzl);
        }
        if (i2 == 5) {
            return zzl;
        }
        if (i2 != 6) {
            throw null;
        }
        xo4 xo4Var = zzm;
        if (xo4Var != null) {
            return xo4Var;
        }
        synchronized (cc5.class) {
            try {
                qn4Var = zzm;
                if (qn4Var == null) {
                    qn4Var = new qn4(zzl);
                    zzm = qn4Var;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return qn4Var;
    }

    public final String t() {
        return this.zze;
    }

    public final boolean u() {
        return this.zzf;
    }
}
