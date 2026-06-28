package defpackage;

import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class c55 extends rn4 {
    private static final c55 zzg;
    private static volatile xo4 zzh;
    private int zzb;
    private int zze;
    private co4 zzf = jo4.r;

    static {
        c55 c55Var = new c55();
        zzg = c55Var;
        rn4.o(c55.class, c55Var);
    }

    public static b55 y() {
        return (b55) zzg.j();
    }

    public final void A(List list) {
        RandomAccess randomAccess = this.zzf;
        if (!((tm4) randomAccess).n) {
            jo4 jo4Var = (jo4) randomAccess;
            int i = jo4Var.p;
            this.zzf = jo4Var.F(i + i);
        }
        sm4.d(list, this.zzf);
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zzg, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001င\u0000\u0002\u0014", new Object[]{"zzb", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new c55();
        }
        if (i2 == 4) {
            return new b55(zzg);
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
        synchronized (c55.class) {
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
        return ((jo4) this.zzf).size();
    }

    public final long x(int i) {
        return ((jo4) this.zzf).c(i);
    }

    public final /* synthetic */ void z(int i) {
        this.zzb |= 1;
        this.zze = i;
    }
}
