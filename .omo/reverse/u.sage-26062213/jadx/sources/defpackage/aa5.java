package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class aa5 extends rn4 {
    private static final aa5 zze;
    private static volatile xo4 zzf;
    private lo4 zzb = lo4.o;

    static {
        aa5 aa5Var = new aa5();
        zze = aa5Var;
        rn4.o(aa5.class, aa5Var);
    }

    public static aa5 u() {
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
            return new bp4(zze, "\u0004\u0001\u0000\u0000\u0002\u0002\u0001\u0001\u0000\u0000\u00022", new Object[]{"zzb", x95.a});
        }
        if (i2 == 3) {
            return new aa5();
        }
        if (i2 == 4) {
            return new y95(zze);
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
        synchronized (aa5.class) {
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

    public final w95 t(String str, w95 w95Var) {
        str.getClass();
        w95 w95Var2 = (w95) this.zzb.get(str);
        return w95Var2 != null ? w95Var2 : w95Var;
    }

    public final lo4 v() {
        lo4 lo4Var = this.zzb;
        if (!lo4Var.n) {
            this.zzb = lo4Var.a();
        }
        return this.zzb;
    }
}
