package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class l85 extends rn4 {
    private static final l85 zzh;
    private static volatile xo4 zzi;
    private int zzb;
    private j85 zzf;
    private String zze = "";
    private String zzg = "";

    static {
        l85 l85Var = new l85();
        zzh = l85Var;
        rn4.o(l85.class, l85Var);
    }

    public static g85 u() {
        return (g85) zzh.j();
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zzh, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဉ\u0001\u0003ဈ\u0002", new Object[]{"zzb", "zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new l85();
        }
        if (i2 == 4) {
            return new g85(zzh);
        }
        if (i2 == 5) {
            return zzh;
        }
        if (i2 != 6) {
            throw null;
        }
        xo4 xo4Var = zzi;
        if (xo4Var != null) {
            return xo4Var;
        }
        synchronized (l85.class) {
            try {
                qn4Var = zzi;
                if (qn4Var == null) {
                    qn4Var = new qn4(zzh);
                    zzi = qn4Var;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return qn4Var;
    }

    public final String t() {
        return this.zze;
    }

    public final /* synthetic */ void v(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zze = str;
    }

    public final /* synthetic */ void w(j85 j85Var) {
        this.zzf = j85Var;
        this.zzb |= 2;
    }

    public final /* synthetic */ void x(String str) {
        str.getClass();
        this.zzb |= 4;
        this.zzg = str;
    }
}
