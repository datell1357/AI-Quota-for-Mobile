package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class h45 extends rn4 {
    private static final h45 zzh;
    private static volatile xo4 zzi;
    private int zzb;
    private String zze = "";
    private String zzf = "";
    private t25 zzg;

    static {
        h45 h45Var = new h45();
        zzh = h45Var;
        rn4.o(h45.class, h45Var);
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zzh, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဉ\u0002", new Object[]{"zzb", "zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new h45();
        }
        if (i2 == 4) {
            return new pz4(zzh);
        }
        if (i2 == 5) {
            return zzh;
        }
        if (i2 != 6) {
            throw null;
        }
        xo4 xo4Var = zzi;
        if (xo4Var != null) {
            return xo4Var;
        }
        synchronized (h45.class) {
            try {
                qn4Var = zzi;
                if (qn4Var == null) {
                    qn4Var = new qn4(zzh);
                    zzi = qn4Var;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return qn4Var;
    }
}
