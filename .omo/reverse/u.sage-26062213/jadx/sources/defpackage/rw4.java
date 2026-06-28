package defpackage;

import android.content.Context;
import android.net.Uri;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rw4 {
    public static final Object g = new Object();
    public static volatile uv4 h;
    public static final AtomicInteger i;
    public final sb0 a;
    public final String b;
    public final Object c;
    public volatile int d = -1;
    public volatile Object e;
    public final /* synthetic */ int f;

    static {
        new AtomicReference();
        i = new AtomicInteger();
    }

    public /* synthetic */ rw4(sb0 sb0Var, String str, Object obj, int i2) {
        this.f = i2;
        if (((Uri) sb0Var.o) == null) {
            k21.f("Must pass a valid SharedPreferences file name or ContentProvider URI");
            throw null;
        }
        this.a = sb0Var;
        this.b = str;
        this.c = obj;
    }

    public static void c(Context context) {
        Context context2;
        if (h != null || context == null) {
            return;
        }
        Object obj = g;
        synchronized (obj) {
            try {
                if (h == null) {
                    synchronized (obj) {
                        try {
                            uv4 uv4Var = h;
                            Context applicationContext = context.getApplicationContext();
                            if (applicationContext != null) {
                                context = applicationContext;
                            }
                            if (uv4Var == null || uv4Var.a != context) {
                                aw4.b();
                                kx4.a();
                                synchronized (gw4.class) {
                                    gw4 gw4Var = gw4.q;
                                    if (gw4Var != null && (context2 = (Context) gw4Var.o) != null && ((pv4) gw4Var.p) != null) {
                                        context2.getContentResolver().unregisterContentObserver((pv4) gw4.q.p);
                                    }
                                    gw4.q = null;
                                }
                                h = new uv4(context, pe4.d(new di2(context, 1)));
                                i.incrementAndGet();
                            }
                        } catch (Throwable th) {
                            throw th;
                        } finally {
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0037, code lost:
    
        android.util.Log.e("PhenotypeFlag", "Invalid double value for " + r6 + ": " + r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x008e, code lost:
    
        android.util.Log.e("PhenotypeFlag", "Invalid long value for " + r6 + ": " + r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0016, code lost:
    
        android.util.Log.e("PhenotypeFlag", "Invalid byte[] value for " + r6 + ": " + r7);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.lang.String r7) {
        /*
            r6 = this;
            int r0 = r6.f
            r1 = 0
            java.lang.String r2 = "PhenotypeFlag"
            java.lang.String r3 = ": "
            java.lang.String r6 = r6.b
            switch(r0) {
                case 0: goto L85;
                case 1: goto L4f;
                case 2: goto L2e;
                default: goto Lc;
            }
        Lc:
            r0 = 3
            byte[] r0 = android.util.Base64.decode(r7, r0)     // Catch: java.lang.Throwable -> L16
            v35 r1 = defpackage.v35.j(r0)     // Catch: java.lang.Throwable -> L16
            goto L2d
        L16:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r4 = "Invalid byte[] value for "
            r0.<init>(r4)
            r0.append(r6)
            r0.append(r3)
            r0.append(r7)
            java.lang.String r6 = r0.toString()
            android.util.Log.e(r2, r6)
        L2d:
            return r1
        L2e:
            double r4 = java.lang.Double.parseDouble(r7)     // Catch: java.lang.NumberFormatException -> L37
            java.lang.Double r1 = java.lang.Double.valueOf(r4)     // Catch: java.lang.NumberFormatException -> L37
            goto L4e
        L37:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r4 = "Invalid double value for "
            r0.<init>(r4)
            r0.append(r6)
            r0.append(r3)
            r0.append(r7)
            java.lang.String r6 = r0.toString()
            android.util.Log.e(r2, r6)
        L4e:
            return r1
        L4f:
            java.util.regex.Pattern r0 = defpackage.rv4.b
            java.util.regex.Matcher r0 = r0.matcher(r7)
            boolean r0 = r0.matches()
            if (r0 == 0) goto L5e
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            goto L84
        L5e:
            java.util.regex.Pattern r0 = defpackage.rv4.c
            java.util.regex.Matcher r0 = r0.matcher(r7)
            boolean r0 = r0.matches()
            if (r0 == 0) goto L6d
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            goto L84
        L6d:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r4 = "Invalid boolean value for "
            r0.<init>(r4)
            r0.append(r6)
            r0.append(r3)
            r0.append(r7)
            java.lang.String r6 = r0.toString()
            android.util.Log.e(r2, r6)
        L84:
            return r1
        L85:
            long r4 = java.lang.Long.parseLong(r7)     // Catch: java.lang.NumberFormatException -> L8e
            java.lang.Long r1 = java.lang.Long.valueOf(r4)     // Catch: java.lang.NumberFormatException -> L8e
            goto La5
        L8e:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r4 = "Invalid long value for "
            r0.<init>(r4)
            r0.append(r6)
            r0.append(r3)
            r0.append(r7)
            java.lang.String r6 = r0.toString()
            android.util.Log.e(r2, r6)
        La5:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rw4.a(java.lang.String):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0058 A[PHI: r2
  0x0058: PHI (r2v1 px4) = (r2v0 px4), (r2v5 px4), (r2v5 px4) binds: [B:8:0x0014, B:10:0x0022, B:16:0x0047] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005d A[Catch: all -> 0x0055, TRY_LEAVE, TryCatch #3 {all -> 0x0055, all -> 0x00cb, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0016, B:11:0x0024, B:13:0x0037, B:17:0x0048, B:23:0x005d, B:26:0x0067, B:28:0x006d, B:29:0x007d, B:44:0x009b, B:46:0x00a3, B:49:0x00ad, B:51:0x00b3, B:52:0x00b7, B:64:0x00d7, B:68:0x00e1, B:70:0x00e7, B:67:0x00df, B:73:0x00ed, B:75:0x00f0, B:77:0x00f4, B:80:0x00fc, B:81:0x00ff, B:82:0x0103, B:41:0x0097, B:83:0x0108, B:84:0x010a, B:85:0x010b, B:86:0x0110, B:87:0x0111, B:30:0x007e, B:32:0x0088, B:33:0x008d, B:38:0x0094, B:53:0x00b8, B:55:0x00bc, B:57:0x00c5, B:61:0x00d2, B:60:0x00cd, B:62:0x00d4, B:63:0x00d6), top: B:101:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x010b A[Catch: all -> 0x0055, TryCatch #3 {all -> 0x0055, all -> 0x00cb, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0016, B:11:0x0024, B:13:0x0037, B:17:0x0048, B:23:0x005d, B:26:0x0067, B:28:0x006d, B:29:0x007d, B:44:0x009b, B:46:0x00a3, B:49:0x00ad, B:51:0x00b3, B:52:0x00b7, B:64:0x00d7, B:68:0x00e1, B:70:0x00e7, B:67:0x00df, B:73:0x00ed, B:75:0x00f0, B:77:0x00f4, B:80:0x00fc, B:81:0x00ff, B:82:0x0103, B:41:0x0097, B:83:0x0108, B:84:0x010a, B:85:0x010b, B:86:0x0110, B:87:0x0111, B:30:0x007e, B:32:0x0088, B:33:0x008d, B:38:0x0094, B:53:0x00b8, B:55:0x00bc, B:57:0x00c5, B:61:0x00d2, B:60:0x00cd, B:62:0x00d4, B:63:0x00d6), top: B:101:0x000b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b() {
        /*
            Method dump skipped, instruction units count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rw4.b():java.lang.Object");
    }
}
