package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class c05 extends rn4 {
    private static final c05 zzg;
    private static volatile xo4 zzh;
    private int zzb;
    private int zze;
    private int zzf;

    static {
        c05 c05Var = new c05();
        zzg = c05Var;
        rn4.o(c05.class, c05Var);
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            mm4 mm4Var = mm4.f;
            return new bp4(zzg, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001", new Object[]{"zzb", "zze", mm4Var, "zzf", mm4Var});
        }
        if (i2 == 3) {
            return new c05();
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
        synchronized (c05.class) {
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

    public final int t() {
        int iB = uf4.b(this.zze);
        if (iB == 0) {
            return 1;
        }
        return iB;
    }

    public final int u() {
        int iB = uf4.b(this.zzf);
        if (iB == 0) {
            return 1;
        }
        return iB;
    }
}
