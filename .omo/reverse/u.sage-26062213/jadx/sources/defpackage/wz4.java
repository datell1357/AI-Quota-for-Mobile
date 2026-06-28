package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wz4 extends rn4 {
    private static final wz4 zzi;
    private static volatile xo4 zzj;
    private int zzb;
    private int zze;
    private boolean zzg;
    private String zzf = "";
    private do4 zzh = ap4.r;

    static {
        wz4 wz4Var = new wz4();
        zzi = wz4Var;
        rn4.o(wz4.class, wz4Var);
    }

    public static wz4 A() {
        return zzi;
    }

    public final int B() {
        int i;
        switch (this.zze) {
            case 0:
                i = 1;
                break;
            case 1:
                i = 2;
                break;
            case 2:
                i = 3;
                break;
            case 3:
                i = 4;
                break;
            case 4:
                i = 5;
                break;
            case 5:
                i = 6;
                break;
            case 6:
                i = 7;
                break;
            default:
                i = 0;
                break;
        }
        if (i == 0) {
            return 1;
        }
        return i;
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zzi, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001᠌\u0000\u0002ဈ\u0001\u0003ဇ\u0002\u0004\u001a", new Object[]{"zzb", "zze", mm4.d, "zzf", "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new wz4();
        }
        if (i2 == 4) {
            return new pz4(zzi);
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
        synchronized (wz4.class) {
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

    public final boolean u() {
        return (this.zzb & 2) != 0;
    }

    public final String v() {
        return this.zzf;
    }

    public final boolean w() {
        return (this.zzb & 4) != 0;
    }

    public final boolean x() {
        return this.zzg;
    }

    public final do4 y() {
        return this.zzh;
    }

    public final int z() {
        return this.zzh.size();
    }
}
