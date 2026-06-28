package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class v35 extends sy4 {
    private static final v35 zzb;
    private vy4 zzd = b15.q;

    static {
        v35 v35Var = new v35();
        zzb = v35Var;
        sy4.e(v35Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0044, code lost:
    
        if (r7 != false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.v35 j(byte[] r7) throws defpackage.fz4 {
        /*
            v35 r0 = defpackage.v35.zzb
            int r5 = r7.length
            jy4 r1 = defpackage.jy4.a
            sy4 r2 = r0.b()
            z05 r0 = defpackage.z05.c     // Catch: java.lang.IndexOutOfBoundsException -> L5a java.io.IOException -> L5f defpackage.h25 -> L7a defpackage.fz4 -> L86
            java.lang.Class r3 = r2.getClass()     // Catch: java.lang.IndexOutOfBoundsException -> L5a java.io.IOException -> L5f defpackage.h25 -> L7a defpackage.fz4 -> L86
            h15 r3 = r0.a(r3)     // Catch: java.lang.IndexOutOfBoundsException -> L5a java.io.IOException -> L5f defpackage.h25 -> L7a defpackage.fz4 -> L86
            h30 r6 = new h30     // Catch: java.lang.IndexOutOfBoundsException -> L5a java.io.IOException -> L5f defpackage.h25 -> L7a defpackage.fz4 -> L86
            r6.<init>()     // Catch: java.lang.IndexOutOfBoundsException -> L5a java.io.IOException -> L5f defpackage.h25 -> L7a defpackage.fz4 -> L86
            r1.getClass()     // Catch: java.lang.IndexOutOfBoundsException -> L5a java.io.IOException -> L5f defpackage.h25 -> L7a defpackage.fz4 -> L86
            r4 = 0
            r1 = r3
            r3 = r7
            r1.e(r2, r3, r4, r5, r6)     // Catch: java.lang.IndexOutOfBoundsException -> L5a java.io.IOException -> L5f defpackage.h25 -> L7a defpackage.fz4 -> L86
            r1.b(r2)     // Catch: java.lang.IndexOutOfBoundsException -> L5a java.io.IOException -> L5f defpackage.h25 -> L7a defpackage.fz4 -> L86
            r7 = 1
            java.lang.Object r1 = r2.h(r7)
            java.lang.Byte r1 = (java.lang.Byte) r1
            byte r1 = r1.byteValue()
            if (r1 != r7) goto L32
            goto L46
        L32:
            if (r1 == 0) goto L49
            java.lang.Class r7 = r2.getClass()
            h15 r7 = r0.a(r7)
            boolean r7 = r7.d(r2)
            r0 = 2
            r2.h(r0)
            if (r7 == 0) goto L49
        L46:
            v35 r2 = (defpackage.v35) r2
            return r2
        L49:
            h25 r7 = new h25
            java.lang.String r0 = "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."
            r7.<init>(r0)
            fz4 r0 = new fz4
            java.lang.String r7 = r7.getMessage()
            r0.<init>(r7)
            throw r0
        L5a:
            fz4 r7 = defpackage.fz4.c()
            throw r7
        L5f:
            r0 = move-exception
            r7 = r0
            java.lang.Throwable r0 = r7.getCause()
            boolean r0 = r0 instanceof defpackage.fz4
            if (r0 == 0) goto L70
            java.lang.Throwable r7 = r7.getCause()
            fz4 r7 = (defpackage.fz4) r7
            throw r7
        L70:
            fz4 r0 = new fz4
            java.lang.String r1 = r7.getMessage()
            r0.<init>(r1, r7)
            throw r0
        L7a:
            r0 = move-exception
            r7 = r0
            fz4 r0 = new fz4
            java.lang.String r7 = r7.getMessage()
            r0.<init>(r7)
            throw r0
        L86:
            r0 = move-exception
            r7 = r0
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v35.j(byte[]):v35");
    }

    @Override // defpackage.sy4
    public final Object h(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new e15(zzb, new Object[]{"zzd"});
        }
        if (i2 == 3) {
            return new v35();
        }
        if (i2 == 4) {
            return new t35();
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }

    public final vy4 k() {
        return this.zzd;
    }
}
