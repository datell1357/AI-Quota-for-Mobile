package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ez4 extends rn4 {
    private static final ez4 zzi;
    private static volatile xo4 zzj;
    private int zzb;
    private boolean zzf;
    private long zzh;
    private String zze = "";
    private String zzg = "";

    static {
        ez4 ez4Var = new ez4();
        zzi = ez4Var;
        rn4.o(ez4.class, ez4Var);
    }

    public static cz4 t() {
        return (cz4) zzi.j();
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zzi, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဂ\u0003", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new ez4();
        }
        if (i2 == 4) {
            return new cz4(zzi);
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
        synchronized (ez4.class) {
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

    public final /* synthetic */ void u(String str) {
        this.zzb |= 1;
        this.zze = str;
    }

    public final /* synthetic */ void v() {
        this.zzb |= 2;
        this.zzf = true;
    }

    public final /* synthetic */ void w(String str) {
        str.getClass();
        this.zzb |= 4;
        this.zzg = str;
    }

    public final /* synthetic */ void x(long j) {
        this.zzb |= 8;
        this.zzh = j;
    }
}
