package defpackage;

import java.io.IOException;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class z85 extends rn4 {
    private static final z85 zzj;
    private static volatile xo4 zzk;
    private int zzb;
    private long zzh;
    private lo4 zzi = lo4.o;
    private String zze = "";
    private zm4 zzf = zm4.o;
    private String zzg = "";

    static {
        z85 z85Var = new z85();
        zzj = z85Var;
        rn4.o(z85.class, z85Var);
    }

    public static z85 A() {
        return zzj;
    }

    public static z85 z(cn4 cn4Var, kn4 kn4Var) throws fo4 {
        rn4 rn4VarI = zzj.i();
        try {
            cp4 cp4VarA = zo4.c.a(rn4VarI.getClass());
            e50 e50Var = cn4Var.c;
            if (e50Var == null) {
                e50Var = new e50(cn4Var);
            }
            cp4VarA.f(rn4VarI, e50Var, kn4Var);
            cp4VarA.h(rn4VarI);
            rn4.r(rn4VarI);
            return (z85) rn4VarI;
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
            return new bp4(zzj, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0001\u0000\u0000\u0001ဈ\u0000\u0002ည\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u00052", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", y85.a});
        }
        if (i2 == 3) {
            return new z85();
        }
        if (i2 == 4) {
            return new pz4(zzj);
        }
        if (i2 == 5) {
            return zzj;
        }
        if (i2 != 6) {
            throw null;
        }
        xo4 xo4Var = zzk;
        if (xo4Var != null) {
            return xo4Var;
        }
        synchronized (z85.class) {
            try {
                qn4Var = zzk;
                if (qn4Var == null) {
                    qn4Var = new qn4(zzj);
                    zzk = qn4Var;
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

    public final zm4 u() {
        return this.zzf;
    }

    public final String v() {
        return this.zzg;
    }

    public final long w() {
        return this.zzh;
    }

    public final int x() {
        return this.zzi.size();
    }

    public final Map y() {
        return Collections.unmodifiableMap(this.zzi);
    }
}
