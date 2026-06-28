package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rc5 extends rn4 {
    private static final rc5 zzj;
    private static volatile xo4 zzk;
    private int zzb;
    private long zzh;
    private String zze = "";
    private zm4 zzf = zm4.o;
    private String zzg = "";
    private do4 zzi = ap4.r;

    static {
        rc5 rc5Var = new rc5();
        zzj = rc5Var;
        rn4.o(rc5.class, rc5Var);
    }

    public static rc5 A() {
        return zzj;
    }

    public static qc5 z() {
        return (qc5) zzj.j();
    }

    public final /* synthetic */ void B(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zze = str;
    }

    public final /* synthetic */ void C(zm4 zm4Var) {
        zm4Var.getClass();
        this.zzb |= 2;
        this.zzf = zm4Var;
    }

    public final /* synthetic */ void D(String str) {
        str.getClass();
        this.zzb |= 4;
        this.zzg = str;
    }

    public final /* synthetic */ void E(long j) {
        this.zzb |= 8;
        this.zzh = j;
    }

    public final void F(tc5 tc5Var) {
        do4 do4Var = this.zzi;
        if (!((tm4) do4Var).n) {
            this.zzi = to4.d(do4Var);
        }
        this.zzi.add(tc5Var);
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zzj, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001ဈ\u0000\u0002ည\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005\u001b", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", tc5.class});
        }
        if (i2 == 3) {
            return new rc5();
        }
        if (i2 == 4) {
            return new qc5(zzj);
        }
        if (i2 == 5) {
            return zzj;
        }
        if (i2 != 6) {
            throw null;
        }
        xo4 xo4Var = zzk;
        if (xo4Var != null) {
            return xo4Var;
        }
        synchronized (rc5.class) {
            try {
                qn4Var = zzk;
                if (qn4Var == null) {
                    qn4Var = new qn4(zzj);
                    zzk = qn4Var;
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

    public final zm4 u() {
        return this.zzf;
    }

    public final String v() {
        return this.zzg;
    }

    public final long w() {
        return this.zzh;
    }

    public final do4 x() {
        return this.zzi;
    }

    public final int y() {
        return this.zzi.size();
    }
}
