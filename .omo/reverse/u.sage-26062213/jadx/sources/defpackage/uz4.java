package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class uz4 extends rn4 {
    private static final uz4 zzk;
    private static volatile xo4 zzl;
    private int zzb;
    private int zze;
    private String zzf = "";
    private nz4 zzg;
    private boolean zzh;
    private boolean zzi;
    private boolean zzj;

    static {
        uz4 uz4Var = new uz4();
        zzk = uz4Var;
        rn4.o(uz4.class, uz4Var);
    }

    public static tz4 B() {
        return (tz4) zzk.j();
    }

    public final boolean A() {
        return this.zzj;
    }

    public final /* synthetic */ void C(String str) {
        this.zzb |= 2;
        this.zzf = str;
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zzk, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0003ဉ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        if (i2 == 3) {
            return new uz4();
        }
        if (i2 == 4) {
            return new tz4(zzk);
        }
        if (i2 == 5) {
            return zzk;
        }
        if (i2 != 6) {
            throw null;
        }
        xo4 xo4Var = zzl;
        if (xo4Var != null) {
            return xo4Var;
        }
        synchronized (uz4.class) {
            try {
                qn4Var = zzl;
                if (qn4Var == null) {
                    qn4Var = new qn4(zzk);
                    zzl = qn4Var;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return qn4Var;
    }

    public final boolean t() {
        return (this.zzb & 1) != 0;
    }

    public final int u() {
        return this.zze;
    }

    public final String v() {
        return this.zzf;
    }

    public final nz4 w() {
        nz4 nz4Var = this.zzg;
        return nz4Var == null ? nz4.B() : nz4Var;
    }

    public final boolean x() {
        return this.zzh;
    }

    public final boolean y() {
        return this.zzi;
    }

    public final boolean z() {
        return (this.zzb & 32) != 0;
    }
}
