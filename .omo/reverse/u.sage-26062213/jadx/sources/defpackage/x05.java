package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class x05 extends rn4 {
    private static final x05 zzj;
    private static volatile xo4 zzk;
    private int zzb;
    private do4 zze;
    private do4 zzf;
    private do4 zzg;
    private boolean zzh;
    private do4 zzi;

    static {
        x05 x05Var = new x05();
        zzj = x05Var;
        rn4.o(x05.class, x05Var);
    }

    public x05() {
        ap4 ap4Var = ap4.r;
        this.zze = ap4Var;
        this.zzf = ap4Var;
        this.zzg = ap4Var;
        this.zzi = ap4Var;
    }

    public static x05 z() {
        return zzj;
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zzj, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0004\u0000\u0001\u001b\u0002\u001b\u0003\u001b\u0004ဇ\u0000\u0005\u001b", new Object[]{"zzb", "zze", a05.class, "zzf", c05.class, "zzg", q05.class, "zzh", "zzi", a05.class});
        }
        if (i2 == 3) {
            return new x05();
        }
        if (i2 == 4) {
            return new pz4(zzj);
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
        synchronized (x05.class) {
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

    public final List t() {
        return this.zze;
    }

    public final List u() {
        return this.zzf;
    }

    public final List v() {
        return this.zzg;
    }

    public final boolean w() {
        return (this.zzb & 1) != 0;
    }

    public final boolean x() {
        return this.zzh;
    }

    public final do4 y() {
        return this.zzi;
    }
}
