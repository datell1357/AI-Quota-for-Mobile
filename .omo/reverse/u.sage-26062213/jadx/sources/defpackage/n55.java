package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class n55 extends rn4 {
    private static final n55 zzg;
    private static volatile xo4 zzh;
    private int zzb;
    private do4 zze = ap4.r;
    private j55 zzf;

    static {
        n55 n55Var = new n55();
        zzg = n55Var;
        rn4.o(n55.class, n55Var);
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zzg, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002ဉ\u0000", new Object[]{"zzb", "zze", p55.class, "zzf"});
        }
        if (i2 == 3) {
            return new n55();
        }
        if (i2 == 4) {
            return new pz4(zzg);
        }
        if (i2 == 5) {
            return zzg;
        }
        if (i2 != 6) {
            throw null;
        }
        xo4 xo4Var = zzh;
        if (xo4Var != null) {
            return xo4Var;
        }
        synchronized (n55.class) {
            try {
                qn4Var = zzh;
                if (qn4Var == null) {
                    qn4Var = new qn4(zzg);
                    zzh = qn4Var;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return qn4Var;
    }

    public final List t() {
        return this.zze;
    }

    public final j55 u() {
        j55 j55Var = this.zzf;
        return j55Var == null ? j55.v() : j55Var;
    }
}
