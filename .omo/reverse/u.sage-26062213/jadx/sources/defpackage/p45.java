package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class p45 extends rn4 {
    private static final p45 zzi;
    private static volatile xo4 zzj;
    private int zzb;
    private do4 zze = ap4.r;
    private String zzf = "";
    private String zzg = "";
    private int zzh;

    static {
        p45 p45Var = new p45();
        zzi = p45Var;
        rn4.o(p45.class, p45Var);
    }

    public static i45 A() {
        return (i45) zzi.j();
    }

    public static i45 B(p45 p45Var) {
        pn4 pn4VarJ = zzi.j();
        pn4VarJ.e(p45Var);
        return (i45) pn4VarJ;
    }

    public final /* synthetic */ void C(int i, u45 u45Var) {
        I();
        this.zze.set(i, u45Var);
    }

    public final /* synthetic */ void D(u45 u45Var) {
        I();
        this.zze.add(u45Var);
    }

    public final /* synthetic */ void E(ArrayList arrayList) {
        I();
        sm4.d(arrayList, this.zze);
    }

    public final void F() {
        this.zze = ap4.r;
    }

    public final /* synthetic */ void G(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zzf = str;
    }

    public final /* synthetic */ void H(String str) {
        str.getClass();
        this.zzb |= 2;
        this.zzg = str;
    }

    public final void I() {
        do4 do4Var = this.zze;
        if (((tm4) do4Var).n) {
            return;
        }
        this.zze = to4.d(do4Var);
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zzi, "\u0004\u0004\u0000\u0001\u0001\t\u0004\u0000\u0001\u0000\u0001\u001b\u0007ဈ\u0000\bဈ\u0001\t᠌\u0002", new Object[]{"zzb", "zze", u45.class, "zzf", "zzg", "zzh", mm4.k});
        }
        if (i2 == 3) {
            return new p45();
        }
        if (i2 == 4) {
            return new i45(zzi);
        }
        if (i2 == 5) {
            return zzi;
        }
        if (i2 != 6) {
            throw null;
        }
        xo4 xo4Var = zzj;
        if (xo4Var != null) {
            return xo4Var;
        }
        synchronized (p45.class) {
            try {
                qn4Var = zzj;
                if (qn4Var == null) {
                    qn4Var = new qn4(zzi);
                    zzj = qn4Var;
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

    public final int u() {
        return this.zze.size();
    }

    public final u45 v(int i) {
        return (u45) this.zze.get(i);
    }

    public final boolean w() {
        return (this.zzb & 1) != 0;
    }

    public final String x() {
        return this.zzf;
    }

    public final boolean y() {
        return (this.zzb & 2) != 0;
    }

    public final String z() {
        return this.zzg;
    }
}
