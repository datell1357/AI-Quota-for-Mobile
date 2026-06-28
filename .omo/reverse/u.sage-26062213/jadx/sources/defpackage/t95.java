package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t95 extends rn4 {
    private static final t95 zzg;
    private static volatile xo4 zzh;
    private int zzb;
    private m95 zze;
    private n95 zzf;

    static {
        t95 t95Var = new t95();
        zzg = t95Var;
        rn4.o(t95.class, t95Var);
    }

    public static t95 v(byte[] bArr, kn4 kn4Var) {
        return (t95) rn4.e(zzg, bArr, kn4Var);
    }

    public static s95 w() {
        return (s95) zzg.j();
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zzg, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001", new Object[]{"zzb", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new t95();
        }
        if (i2 == 4) {
            return new s95(zzg);
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
        synchronized (t95.class) {
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

    public final m95 t() {
        m95 m95Var = this.zze;
        return m95Var == null ? m95.H() : m95Var;
    }

    public final n95 u() {
        n95 n95Var = this.zzf;
        return n95Var == null ? n95.t() : n95Var;
    }

    public final /* synthetic */ void x(m95 m95Var) {
        this.zze = m95Var;
        this.zzb |= 1;
    }
}
