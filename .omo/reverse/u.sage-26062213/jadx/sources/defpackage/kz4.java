package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kz4 extends rn4 {
    private static final kz4 zzm;
    private static volatile xo4 zzn;
    private int zzb;
    private int zze;
    private String zzf = "";
    private do4 zzg = ap4.r;
    private boolean zzh;
    private rz4 zzi;
    private boolean zzj;
    private boolean zzk;
    private boolean zzl;

    static {
        kz4 kz4Var = new kz4();
        zzm = kz4Var;
        rn4.o(kz4.class, kz4Var);
    }

    public static iz4 F() {
        return (iz4) zzm.j();
    }

    public final rz4 A() {
        rz4 rz4Var = this.zzi;
        return rz4Var == null ? rz4.C() : rz4Var;
    }

    public final boolean B() {
        return this.zzj;
    }

    public final boolean C() {
        return this.zzk;
    }

    public final boolean D() {
        return (this.zzb & 64) != 0;
    }

    public final boolean E() {
        return this.zzl;
    }

    public final /* synthetic */ void G(String str) {
        this.zzb |= 2;
        this.zzf = str;
    }

    public final void H(int i, nz4 nz4Var) {
        do4 do4Var = this.zzg;
        if (!((tm4) do4Var).n) {
            this.zzg = to4.d(do4Var);
        }
        this.zzg.set(i, nz4Var);
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zzm, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001င\u0000\u0002ဈ\u0001\u0003\u001b\u0004ဇ\u0002\u0005ဉ\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006", new Object[]{"zzb", "zze", "zzf", "zzg", nz4.class, "zzh", "zzi", "zzj", "zzk", "zzl"});
        }
        if (i2 == 3) {
            return new kz4();
        }
        if (i2 == 4) {
            return new iz4(zzm);
        }
        if (i2 == 5) {
            return zzm;
        }
        if (i2 != 6) {
            throw null;
        }
        xo4 xo4Var = zzn;
        if (xo4Var != null) {
            return xo4Var;
        }
        synchronized (kz4.class) {
            try {
                qn4Var = zzn;
                if (qn4Var == null) {
                    qn4Var = new qn4(zzm);
                    zzn = qn4Var;
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

    public final int u() {
        return this.zze;
    }

    public final String v() {
        return this.zzf;
    }

    public final List w() {
        return this.zzg;
    }

    public final int x() {
        return this.zzg.size();
    }

    public final nz4 y(int i) {
        return (nz4) this.zzg.get(i);
    }

    public final boolean z() {
        return (this.zzb & 8) != 0;
    }
}
