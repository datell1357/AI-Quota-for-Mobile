package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class n15 extends rn4 {
    private static final n15 zzw;
    private static volatile xo4 zzx;
    private int zzb;
    private long zze;
    private String zzf = "";
    private int zzg;
    private do4 zzh;
    private do4 zzi;
    private do4 zzj;
    private String zzk;
    private boolean zzl;
    private do4 zzm;
    private do4 zzn;
    private String zzo;
    private String zzp;
    private x05 zzq;
    private s15 zzr;
    private c25 zzs;
    private u15 zzt;
    private o15 zzu;
    private yn4 zzv;

    static {
        n15 n15Var = new n15();
        zzw = n15Var;
        rn4.o(n15.class, n15Var);
    }

    public n15() {
        ap4 ap4Var = ap4.r;
        this.zzh = ap4Var;
        this.zzi = ap4Var;
        this.zzj = ap4Var;
        this.zzk = "";
        this.zzm = ap4Var;
        this.zzn = ap4Var;
        this.zzo = "";
        this.zzp = "";
        this.zzv = sn4.r;
    }

    public static j15 K() {
        return (j15) zzw.j();
    }

    public static n15 L() {
        return zzw;
    }

    public final List A() {
        return this.zzj;
    }

    public final do4 B() {
        return this.zzm;
    }

    public final int C() {
        return this.zzm.size();
    }

    public final do4 D() {
        return this.zzn;
    }

    public final String E() {
        return this.zzo;
    }

    public final boolean F() {
        return (this.zzb & 128) != 0;
    }

    public final x05 G() {
        x05 x05Var = this.zzq;
        return x05Var == null ? x05.z() : x05Var;
    }

    public final boolean H() {
        return (this.zzb & 512) != 0;
    }

    public final c25 I() {
        c25 c25Var = this.zzs;
        return c25Var == null ? c25.v() : c25Var;
    }

    public final yn4 J() {
        return this.zzv;
    }

    public final void M(int i, i15 i15Var) {
        do4 do4Var = this.zzi;
        if (!((tm4) do4Var).n) {
            this.zzi = to4.d(do4Var);
        }
        this.zzi.set(i, i15Var);
    }

    public final void N() {
        this.zzj = ap4.r;
    }

    public final void O() {
        this.zzm = ap4.r;
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zzw, "\u0004\u0012\u0000\u0001\u0001\u0014\u0012\u0000\u0006\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003င\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007ဈ\u0003\bဇ\u0004\t\u001b\n\u001b\u000bဈ\u0005\u000eဈ\u0006\u000fဉ\u0007\u0010ဉ\b\u0011ဉ\t\u0012ဉ\n\u0013ဉ\u000b\u0014+", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", z15.class, "zzi", i15.class, "zzj", hz4.class, "zzk", "zzl", "zzm", n55.class, "zzn", c15.class, "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv"});
        }
        if (i2 == 3) {
            return new n15();
        }
        if (i2 == 4) {
            return new j15(zzw);
        }
        if (i2 == 5) {
            return zzw;
        }
        if (i2 != 6) {
            throw null;
        }
        xo4 xo4Var = zzx;
        if (xo4Var != null) {
            return xo4Var;
        }
        synchronized (n15.class) {
            try {
                qn4Var = zzx;
                if (qn4Var == null) {
                    qn4Var = new qn4(zzw);
                    zzx = qn4Var;
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

    public final long u() {
        return this.zze;
    }

    public final boolean v() {
        return (this.zzb & 2) != 0;
    }

    public final String w() {
        return this.zzf;
    }

    public final do4 x() {
        return this.zzh;
    }

    public final int y() {
        return this.zzi.size();
    }

    public final i15 z(int i) {
        return (i15) this.zzi.get(i);
    }
}
