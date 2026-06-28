package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class j55 extends rn4 {
    private static final j55 zze;
    private static volatile xo4 zzf;
    private do4 zzb = ap4.r;

    static {
        j55 j55Var = new j55();
        zze = j55Var;
        rn4.o(j55.class, j55Var);
    }

    public static j55 v() {
        return zze;
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zze, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzb", l55.class});
        }
        if (i2 == 3) {
            return new j55();
        }
        if (i2 == 4) {
            return new pz4(zze);
        }
        if (i2 == 5) {
            return zze;
        }
        if (i2 != 6) {
            throw null;
        }
        xo4 xo4Var = zzf;
        if (xo4Var != null) {
            return xo4Var;
        }
        synchronized (j55.class) {
            try {
                qn4Var = zzf;
                if (qn4Var == null) {
                    qn4Var = new qn4(zze);
                    zzf = qn4Var;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return qn4Var;
    }

    public final List t() {
        return this.zzb;
    }

    public final int u() {
        return this.zzb.size();
    }
}
