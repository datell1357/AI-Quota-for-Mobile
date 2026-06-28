package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class k95 extends rn4 {
    private static final k95 zzf;
    private static volatile xo4 zzg;
    private int zzb;
    private boolean zze;

    static {
        k95 k95Var = new k95();
        zzf = k95Var;
        rn4.o(k95.class, k95Var);
    }

    public static k95 u() {
        return zzf;
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zzf, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဇ\u0000", new Object[]{"zzb", "zze"});
        }
        if (i2 == 3) {
            return new k95();
        }
        if (i2 == 4) {
            return new pz4(zzf);
        }
        if (i2 == 5) {
            return zzf;
        }
        if (i2 != 6) {
            throw null;
        }
        xo4 xo4Var = zzg;
        if (xo4Var != null) {
            return xo4Var;
        }
        synchronized (k95.class) {
            try {
                qn4Var = zzg;
                if (qn4Var == null) {
                    qn4Var = new qn4(zzf);
                    zzg = qn4Var;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return qn4Var;
    }

    public final boolean t() {
        return this.zze;
    }
}
