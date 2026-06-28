package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class c25 extends rn4 {
    private static final c25 zzj;
    private static volatile xo4 zzk;
    private int zzb;
    private int zzh;
    private String zze = "";
    private String zzf = "";
    private String zzg = "";
    private String zzi = "";

    static {
        c25 c25Var = new c25();
        zzj = c25Var;
        rn4.o(c25.class, c25Var);
    }

    public static c25 v() {
        return zzj;
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zzj, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004င\u0003\u0005ဈ\u0004", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new c25();
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
        synchronized (c25.class) {
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

    public final int t() {
        return this.zzh;
    }

    public final String u() {
        return this.zzi;
    }
}
