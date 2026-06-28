package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class n95 extends rn4 {
    private static final n95 zzo;
    private static volatile xo4 zzp;
    private int zzb;
    private boolean zzf;
    private do4 zzh;
    private do4 zzi;
    private yn4 zzj;
    private q95 zzk;
    private boolean zzl;
    private boolean zzm;
    private k95 zzn;
    private zm4 zze = zm4.o;
    private String zzg = "";

    static {
        n95 n95Var = new n95();
        zzo = n95Var;
        rn4.o(n95.class, n95Var);
    }

    public n95() {
        ap4 ap4Var = ap4.r;
        this.zzh = ap4Var;
        this.zzi = ap4Var;
        this.zzj = sn4.r;
    }

    public static n95 t() {
        return zzo;
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zzo, "\u0004\n\u0000\u0001\u0001\f\n\u0000\u0003\u0000\u0001ည\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004\u001a\u0005\u001a\u0007ࠬ\bဉ\u0003\nဇ\u0004\u000bဇ\u0005\fဉ\u0006", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", mm4.b, "zzk", "zzl", "zzm", "zzn"});
        }
        if (i2 == 3) {
            return new n95();
        }
        if (i2 == 4) {
            return new pz4(zzo);
        }
        if (i2 == 5) {
            return zzo;
        }
        if (i2 != 6) {
            throw null;
        }
        xo4 xo4Var = zzp;
        if (xo4Var != null) {
            return xo4Var;
        }
        synchronized (n95.class) {
            try {
                qn4Var = zzp;
                if (qn4Var == null) {
                    qn4Var = new qn4(zzo);
                    zzp = qn4Var;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return qn4Var;
    }
}
