package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m95 extends rn4 {
    private static final zn4 zzl = new ky4(23);
    private static final m95 zzq;
    private static volatile xo4 zzr;
    private int zzb;
    private boolean zzf;
    private long zzh;
    private do4 zzi;
    private do4 zzj;
    private yn4 zzk;
    private q95 zzm;
    private boolean zzn;
    private boolean zzo;
    private k95 zzp;
    private zm4 zze = zm4.o;
    private String zzg = "";

    static {
        m95 m95Var = new m95();
        zzq = m95Var;
        rn4.o(m95.class, m95Var);
    }

    public m95() {
        ap4 ap4Var = ap4.r;
        this.zzi = ap4Var;
        this.zzj = ap4Var;
        this.zzk = sn4.r;
    }

    public static l95 G() {
        return (l95) zzq.j();
    }

    public static m95 H() {
        return zzq;
    }

    public final List A() {
        return new ao4(this.zzk, zzl);
    }

    public final boolean B() {
        return (this.zzb & 16) != 0;
    }

    public final q95 C() {
        q95 q95Var = this.zzm;
        return q95Var == null ? q95.v() : q95Var;
    }

    public final boolean D() {
        return this.zzn;
    }

    public final boolean E() {
        return this.zzo;
    }

    public final k95 F() {
        k95 k95Var = this.zzp;
        return k95Var == null ? k95.u() : k95Var;
    }

    public final /* synthetic */ void I(long j) {
        this.zzb |= 8;
        this.zzh = j;
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zzq, "\u0004\u000b\u0000\u0001\u0001\f\u000b\u0000\u0003\u0000\u0001ည\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005\u001a\u0006\u001a\u0007ࠬ\bဉ\u0004\nဇ\u0005\u000bဇ\u0006\fဉ\u0007", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", mm4.b, "zzm", "zzn", "zzo", "zzp"});
        }
        if (i2 == 3) {
            return new m95();
        }
        if (i2 == 4) {
            return new l95(zzq);
        }
        if (i2 == 5) {
            return zzq;
        }
        if (i2 != 6) {
            throw null;
        }
        xo4 xo4Var = zzr;
        if (xo4Var != null) {
            return xo4Var;
        }
        synchronized (m95.class) {
            try {
                qn4Var = zzr;
                if (qn4Var == null) {
                    qn4Var = new qn4(zzq);
                    zzr = qn4Var;
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

    public final zm4 u() {
        return this.zze;
    }

    public final boolean v() {
        return this.zzf;
    }

    public final String w() {
        return this.zzg;
    }

    public final long x() {
        return this.zzh;
    }

    public final do4 y() {
        return this.zzi;
    }

    public final do4 z() {
        return this.zzj;
    }
}
