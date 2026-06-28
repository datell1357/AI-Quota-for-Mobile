package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o15 extends rn4 {
    private static final o15 zze;
    private static volatile xo4 zzf;
    private do4 zzb = ap4.r;

    static {
        o15 o15Var = new o15();
        zze = o15Var;
        rn4.o(o15.class, o15Var);
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zze, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", new Object[]{"zzb"});
        }
        if (i2 == 3) {
            return new o15();
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
        synchronized (o15.class) {
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
}
