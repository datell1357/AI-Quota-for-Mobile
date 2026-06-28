package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class w95 extends rn4 {
    private static final w95 zzg;
    private static volatile xo4 zzh;
    private int zzb;
    private do4 zze = ap4.r;
    private String zzf = "";

    static {
        w95 w95Var = new w95();
        zzg = w95Var;
        rn4.o(w95.class, w95Var);
    }

    public static w95 u() {
        return zzg;
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zzg, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001a\u0002ဈ\u0000", new Object[]{"zzb", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new w95();
        }
        if (i2 == 4) {
            return new v95(zzg);
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
        synchronized (w95.class) {
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

    public final List t() {
        return this.zze;
    }

    public final void v(String str) {
        do4 do4Var = this.zze;
        if (!((tm4) do4Var).n) {
            this.zze = to4.d(do4Var);
        }
        this.zze.add("");
    }

    public final /* synthetic */ void w(String str) {
        this.zzb |= 1;
        this.zzf = "";
    }
}
