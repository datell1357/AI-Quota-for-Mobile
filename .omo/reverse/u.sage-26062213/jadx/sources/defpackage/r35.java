package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class r35 extends rn4 {
    private static final r35 zzg;
    private static volatile xo4 zzh;
    private int zzb;
    private int zze;
    private long zzf;

    static {
        r35 r35Var = new r35();
        zzg = r35Var;
        rn4.o(r35.class, r35Var);
    }

    public static q35 x() {
        return (q35) zzg.j();
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zzg, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002ဂ\u0001", new Object[]{"zzb", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new r35();
        }
        if (i2 == 4) {
            return new q35(zzg);
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
        synchronized (r35.class) {
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

    public final boolean t() {
        return (this.zzb & 1) != 0;
    }

    public final int u() {
        return this.zze;
    }

    public final boolean v() {
        return (this.zzb & 2) != 0;
    }

    public final long w() {
        return this.zzf;
    }

    public final /* synthetic */ void y(int i) {
        this.zzb |= 1;
        this.zze = i;
    }

    public final /* synthetic */ void z(long j) {
        this.zzb |= 2;
        this.zzf = j;
    }
}
