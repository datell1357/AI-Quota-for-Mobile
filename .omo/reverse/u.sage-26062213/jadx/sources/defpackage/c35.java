package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class c35 extends rn4 {
    private static final c35 zzi;
    private static volatile xo4 zzj;
    private int zzb;
    private int zze;
    private z45 zzf;
    private z45 zzg;
    private boolean zzh;

    static {
        c35 c35Var = new c35();
        zzi = c35Var;
        rn4.o(c35.class, c35Var);
    }

    public static a35 A() {
        return (a35) zzi.j();
    }

    public final /* synthetic */ void B(int i) {
        this.zzb |= 1;
        this.zze = i;
    }

    public final /* synthetic */ void C(z45 z45Var) {
        this.zzf = z45Var;
        this.zzb |= 2;
    }

    public final /* synthetic */ void D(z45 z45Var) {
        this.zzg = z45Var;
        this.zzb |= 4;
    }

    public final /* synthetic */ void E(boolean z) {
        this.zzb |= 8;
        this.zzh = z;
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zzi, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001င\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဇ\u0003", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new c35();
        }
        if (i2 == 4) {
            return new a35(zzi);
        }
        if (i2 == 5) {
            return zzi;
        }
        if (i2 != 6) {
            throw null;
        }
        xo4 xo4Var = zzj;
        if (xo4Var != null) {
            return xo4Var;
        }
        synchronized (c35.class) {
            try {
                qn4Var = zzj;
                if (qn4Var == null) {
                    qn4Var = new qn4(zzi);
                    zzj = qn4Var;
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

    public final z45 v() {
        z45 z45Var = this.zzf;
        return z45Var == null ? z45.C() : z45Var;
    }

    public final boolean w() {
        return (this.zzb & 4) != 0;
    }

    public final z45 x() {
        z45 z45Var = this.zzg;
        return z45Var == null ? z45.C() : z45Var;
    }

    public final boolean y() {
        return (this.zzb & 8) != 0;
    }

    public final boolean z() {
        return this.zzh;
    }
}
