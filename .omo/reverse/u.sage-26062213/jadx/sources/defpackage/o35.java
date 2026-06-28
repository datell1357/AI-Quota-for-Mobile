package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o35 extends rn4 {
    private static final o35 zze;
    private static volatile xo4 zzf;
    private do4 zzb = ap4.r;

    static {
        o35 o35Var = new o35();
        zze = o35Var;
        rn4.o(o35.class, o35Var);
    }

    public static e35 u() {
        return (e35) zze.j();
    }

    public static o35 v() {
        return zze;
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zze, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzb", l35.class});
        }
        if (i2 == 3) {
            return new o35();
        }
        if (i2 == 4) {
            return new e35(zze);
        }
        if (i2 == 5) {
            return zze;
        }
        if (i2 != 6) {
            throw null;
        }
        xo4 xo4Var = zzf;
        if (xo4Var != null) {
            return xo4Var;
        }
        synchronized (o35.class) {
            try {
                qn4Var = zzf;
                if (qn4Var == null) {
                    qn4Var = new qn4(zze);
                    zzf = qn4Var;
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

    public final void w(ArrayList arrayList) {
        do4 do4Var = this.zzb;
        if (!((tm4) do4Var).n) {
            this.zzb = to4.d(do4Var);
        }
        sm4.d(arrayList, this.zzb);
    }
}
