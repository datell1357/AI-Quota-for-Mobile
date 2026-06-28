package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class c45 extends rn4 {
    private static final c45 zzk;
    private static volatile xo4 zzl;
    private int zzb;
    private long zzg;
    private float zzh;
    private double zzi;
    private String zze = "";
    private String zzf = "";
    private do4 zzj = ap4.r;

    static {
        c45 c45Var = new c45();
        zzk = c45Var;
        rn4.o(c45.class, c45Var);
    }

    public static a45 F() {
        return (a45) zzk.j();
    }

    public final float A() {
        return this.zzh;
    }

    public final boolean B() {
        return (this.zzb & 16) != 0;
    }

    public final double C() {
        return this.zzi;
    }

    public final do4 D() {
        return this.zzj;
    }

    public final int E() {
        return this.zzj.size();
    }

    public final /* synthetic */ void G(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zze = str;
    }

    public final /* synthetic */ void H(String str) {
        str.getClass();
        this.zzb |= 2;
        this.zzf = str;
    }

    public final /* synthetic */ void I() {
        this.zzb &= -3;
        this.zzf = zzk.zzf;
    }

    public final /* synthetic */ void J(long j) {
        this.zzb |= 4;
        this.zzg = j;
    }

    public final /* synthetic */ void K() {
        this.zzb &= -5;
        this.zzg = 0L;
    }

    public final /* synthetic */ void L(double d) {
        this.zzb |= 16;
        this.zzi = d;
    }

    public final /* synthetic */ void M() {
        this.zzb &= -17;
        this.zzi = 0.0d;
    }

    public final void N(c45 c45Var) {
        do4 do4Var = this.zzj;
        if (!((tm4) do4Var).n) {
            this.zzj = to4.d(do4Var);
        }
        this.zzj.add(c45Var);
    }

    public final void O(ArrayList arrayList) {
        do4 do4Var = this.zzj;
        if (!((tm4) do4Var).n) {
            this.zzj = to4.d(do4Var);
        }
        sm4.d(arrayList, this.zzj);
    }

    public final void P() {
        this.zzj = ap4.r;
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zzk, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ခ\u0003\u0005က\u0004\u0006\u001b", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", c45.class});
        }
        if (i2 == 3) {
            return new c45();
        }
        if (i2 == 4) {
            return new a45(zzk);
        }
        if (i2 == 5) {
            return zzk;
        }
        if (i2 != 6) {
            throw null;
        }
        xo4 xo4Var = zzl;
        if (xo4Var != null) {
            return xo4Var;
        }
        synchronized (c45.class) {
            try {
                qn4Var = zzl;
                if (qn4Var == null) {
                    qn4Var = new qn4(zzk);
                    zzl = qn4Var;
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

    public final String u() {
        return this.zze;
    }

    public final boolean v() {
        return (this.zzb & 2) != 0;
    }

    public final String w() {
        return this.zzf;
    }

    public final boolean x() {
        return (this.zzb & 4) != 0;
    }

    public final long y() {
        return this.zzg;
    }

    public final boolean z() {
        return (this.zzb & 8) != 0;
    }
}
