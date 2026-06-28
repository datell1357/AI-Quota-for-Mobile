package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class p85 extends rn4 {
    private static final p85 zzl;
    private static volatile xo4 zzm;
    private int zzb;
    private String zze = "";
    private zm4 zzf = zm4.o;
    private String zzg = "";
    private do4 zzh;
    private do4 zzi;
    private boolean zzj;
    private long zzk;

    static {
        p85 p85Var = new p85();
        zzl = p85Var;
        rn4.o(p85.class, p85Var);
    }

    public p85() {
        ap4 ap4Var = ap4.r;
        this.zzh = ap4Var;
        this.zzi = ap4Var;
    }

    public static n85 z() {
        return (n85) zzl.j();
    }

    public final /* synthetic */ void A(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zze = str;
    }

    public final /* synthetic */ void B(ym4 ym4Var) {
        ym4Var.getClass();
        this.zzb |= 2;
        this.zzf = ym4Var;
    }

    public final /* synthetic */ void C(String str) {
        str.getClass();
        this.zzb |= 4;
        this.zzg = str;
    }

    public final void D(s85 s85Var) {
        do4 do4Var = this.zzh;
        if (!((tm4) do4Var).n) {
            this.zzh = to4.d(do4Var);
        }
        this.zzh.add(s85Var);
    }

    public final void E(String str) {
        str.getClass();
        do4 do4Var = this.zzi;
        if (!((tm4) do4Var).n) {
            this.zzi = to4.d(do4Var);
        }
        this.zzi.add(str);
    }

    public final /* synthetic */ void F(boolean z) {
        this.zzb |= 8;
        this.zzj = z;
    }

    public final /* synthetic */ void G(long j) {
        this.zzb |= 16;
        this.zzk = j;
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zzl, "\u0004\u0007\u0000\u0001\u0001\t\u0007\u0000\u0002\u0000\u0001ဈ\u0002\u0002ဈ\u0000\u0003ည\u0001\u0004\u001b\u0005\u001a\bဇ\u0003\tဂ\u0004", new Object[]{"zzb", "zzg", "zze", "zzf", "zzh", s85.class, "zzi", "zzj", "zzk"});
        }
        if (i2 == 3) {
            return new p85();
        }
        if (i2 == 4) {
            return new n85(zzl);
        }
        if (i2 == 5) {
            return zzl;
        }
        if (i2 != 6) {
            throw null;
        }
        xo4 xo4Var = zzm;
        if (xo4Var != null) {
            return xo4Var;
        }
        synchronized (p85.class) {
            try {
                qn4Var = zzm;
                if (qn4Var == null) {
                    qn4Var = new qn4(zzl);
                    zzm = qn4Var;
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

    public final boolean u() {
        return (this.zzb & 2) != 0;
    }

    public final zm4 v() {
        return this.zzf;
    }

    public final String w() {
        return this.zzg;
    }

    public final do4 x() {
        return this.zzh;
    }

    public final long y() {
        return this.zzk;
    }
}
