package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nz4 extends rn4 {
    private static final nz4 zzi;
    private static volatile xo4 zzj;
    private int zzb;
    private wz4 zze;
    private rz4 zzf;
    private boolean zzg;
    private String zzh = "";

    static {
        nz4 nz4Var = new nz4();
        zzi = nz4Var;
        rn4.o(nz4.class, nz4Var);
    }

    public static nz4 B() {
        return zzi;
    }

    public final String A() {
        return this.zzh;
    }

    public final /* synthetic */ void C(String str) {
        this.zzb |= 8;
        this.zzh = str;
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zzi, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဇ\u0002\u0004ဈ\u0003", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new nz4();
        }
        if (i2 == 4) {
            return new mz4(zzi);
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
        synchronized (nz4.class) {
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

    public final wz4 u() {
        wz4 wz4Var = this.zze;
        return wz4Var == null ? wz4.A() : wz4Var;
    }

    public final boolean v() {
        return (this.zzb & 2) != 0;
    }

    public final rz4 w() {
        rz4 rz4Var = this.zzf;
        return rz4Var == null ? rz4.C() : rz4Var;
    }

    public final boolean x() {
        return (this.zzb & 4) != 0;
    }

    public final boolean y() {
        return this.zzg;
    }

    public final boolean z() {
        return (this.zzb & 8) != 0;
    }
}
