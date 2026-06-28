package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hz4 extends rn4 {
    private static final hz4 zzj;
    private static volatile xo4 zzk;
    private int zzb;
    private int zze;
    private do4 zzf;
    private do4 zzg;
    private boolean zzh;
    private boolean zzi;

    static {
        hz4 hz4Var = new hz4();
        zzj = hz4Var;
        rn4.o(hz4.class, hz4Var);
    }

    public hz4() {
        ap4 ap4Var = ap4.r;
        this.zzf = ap4Var;
        this.zzg = ap4Var;
    }

    public final kz4 A(int i) {
        return (kz4) this.zzg.get(i);
    }

    public final void B(int i, uz4 uz4Var) {
        do4 do4Var = this.zzf;
        if (!((tm4) do4Var).n) {
            this.zzf = to4.d(do4Var);
        }
        this.zzf.set(i, uz4Var);
    }

    public final void C(int i, kz4 kz4Var) {
        do4 do4Var = this.zzg;
        if (!((tm4) do4Var).n) {
            this.zzg = to4.d(do4Var);
        }
        this.zzg.set(i, kz4Var);
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zzj, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဇ\u0001\u0005ဇ\u0002", new Object[]{"zzb", "zze", "zzf", uz4.class, "zzg", kz4.class, "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new hz4();
        }
        if (i2 == 4) {
            return new gz4(zzj);
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
        synchronized (hz4.class) {
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

    public final boolean t() {
        return (this.zzb & 1) != 0;
    }

    public final int u() {
        return this.zze;
    }

    public final List v() {
        return this.zzf;
    }

    public final int w() {
        return this.zzf.size();
    }

    public final uz4 x(int i) {
        return (uz4) this.zzf.get(i);
    }

    public final do4 y() {
        return this.zzg;
    }

    public final int z() {
        return this.zzg.size();
    }
}
