package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f55 extends rn4 {
    private static final f55 zzh;
    private static volatile xo4 zzi;
    private int zzb;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        f55 f55Var = new f55();
        zzh = f55Var;
        rn4.o(f55.class, f55Var);
    }

    public static d55 u() {
        return (d55) zzh.j();
    }

    public static f55 v() {
        return zzh;
    }

    public final /* synthetic */ void A(int i) {
        this.zzg = i - 1;
        this.zzb |= 4;
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zzh, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003᠌\u0002", new Object[]{"zzb", "zze", mm4.o, "zzf", mm4.m, "zzg", mm4.n});
        }
        if (i2 == 3) {
            return new f55();
        }
        if (i2 == 4) {
            return new d55(zzh);
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
        synchronized (f55.class) {
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

    public final e55 t() {
        e55 e55VarA = e55.a(this.zzf);
        return e55VarA == null ? e55.o : e55VarA;
    }

    public final void w(e55 e55Var) {
        this.zzf = e55Var.n;
        this.zzb |= 2;
    }

    public final int x() {
        int i;
        int i2 = this.zze;
        if (i2 != 0) {
            i = 2;
            if (i2 != 1) {
                if (i2 != 2) {
                    i = 4;
                    if (i2 != 3) {
                        i = i2 != 4 ? 0 : 5;
                    }
                } else {
                    i = 3;
                }
            }
        } else {
            i = 1;
        }
        if (i == 0) {
            return 1;
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0017 A[PHI: r2
  0x0017: PHI (r2v1 int) = (r2v0 int), (r2v2 int) binds: [B:7:0x0009, B:11:0x000f] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int y() {
        /*
            r3 = this;
            int r3 = r3.zzg
            r0 = 1
            if (r3 == 0) goto L19
            r1 = 2
            if (r3 == r0) goto L1a
            r2 = 3
            if (r3 == r1) goto L17
            r1 = 4
            if (r3 == r2) goto L1a
            r2 = 5
            if (r3 == r1) goto L17
            if (r3 == r2) goto L15
            r1 = 0
            goto L1a
        L15:
            r1 = 6
            goto L1a
        L17:
            r1 = r2
            goto L1a
        L19:
            r1 = r0
        L1a:
            if (r1 != 0) goto L1d
            return r0
        L1d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.f55.y():int");
    }

    public final /* synthetic */ void z(int i) {
        this.zze = i - 1;
        this.zzb |= 1;
    }
}
