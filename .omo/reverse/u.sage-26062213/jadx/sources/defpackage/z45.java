package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class z45 extends rn4 {
    private static final z45 zzh;
    private static volatile xo4 zzi;
    private co4 zzb;
    private co4 zze;
    private do4 zzf;
    private do4 zzg;

    static {
        z45 z45Var = new z45();
        zzh = z45Var;
        rn4.o(z45.class, z45Var);
    }

    public z45() {
        jo4 jo4Var = jo4.r;
        this.zzb = jo4Var;
        this.zze = jo4Var;
        ap4 ap4Var = ap4.r;
        this.zzf = ap4Var;
        this.zzg = ap4Var;
    }

    public static y45 B() {
        return (y45) zzh.j();
    }

    public static z45 C() {
        return zzh;
    }

    public final int A() {
        return this.zzg.size();
    }

    public final void D(Iterable iterable) {
        RandomAccess randomAccess = this.zzb;
        if (!((tm4) randomAccess).n) {
            jo4 jo4Var = (jo4) randomAccess;
            int i = jo4Var.p;
            this.zzb = jo4Var.F(i + i);
        }
        sm4.d(iterable, this.zzb);
    }

    public final void E() {
        this.zzb = jo4.r;
    }

    public final void F(List list) {
        RandomAccess randomAccess = this.zze;
        if (!((tm4) randomAccess).n) {
            jo4 jo4Var = (jo4) randomAccess;
            int i = jo4Var.p;
            this.zze = jo4Var.F(i + i);
        }
        sm4.d(list, this.zze);
    }

    public final void G() {
        this.zze = jo4.r;
    }

    public final void H(ArrayList arrayList) {
        do4 do4Var = this.zzf;
        if (!((tm4) do4Var).n) {
            this.zzf = to4.d(do4Var);
        }
        sm4.d(arrayList, this.zzf);
    }

    public final void I() {
        this.zzf = ap4.r;
    }

    public final void J(Iterable iterable) {
        do4 do4Var = this.zzg;
        if (!((tm4) do4Var).n) {
            this.zzg = to4.d(do4Var);
        }
        sm4.d(iterable, this.zzg);
    }

    public final void K() {
        this.zzg = ap4.r;
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zzh, "\u0004\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b", new Object[]{"zzb", "zze", "zzf", r35.class, "zzg", c55.class});
        }
        if (i2 == 3) {
            return new z45();
        }
        if (i2 == 4) {
            return new y45(zzh);
        }
        if (i2 == 5) {
            return zzh;
        }
        if (i2 != 6) {
            throw null;
        }
        xo4 xo4Var = zzi;
        if (xo4Var != null) {
            return xo4Var;
        }
        synchronized (z45.class) {
            try {
                qn4Var = zzi;
                if (qn4Var == null) {
                    qn4Var = new qn4(zzh);
                    zzi = qn4Var;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return qn4Var;
    }

    public final List t() {
        return this.zzb;
    }

    public final int u() {
        return ((jo4) this.zzb).size();
    }

    public final List v() {
        return this.zze;
    }

    public final int w() {
        return ((jo4) this.zze).size();
    }

    public final do4 x() {
        return this.zzf;
    }

    public final int y() {
        return this.zzf.size();
    }

    public final do4 z() {
        return this.zzg;
    }
}
