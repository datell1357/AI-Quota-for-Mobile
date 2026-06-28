package defpackage;

import android.graphics.Typeface;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qz0 implements hr3, yi0, np3, ke3, bj1, rv2, iz2, uk0, ef3, rk3 {
    public final /* synthetic */ int n;

    public /* synthetic */ qz0(int i) {
        this.n = i;
    }

    public static final boolean a(bt2 bt2Var) {
        bt2 bt2Var2 = l73.s;
        return !gt3.r0(bt2Var.b(), ".class", true);
    }

    public static final float d(float f, float[] fArr, float[] fArr2) {
        float f2;
        float f3;
        float f4;
        float f5;
        float fAbs = Math.abs(f);
        float fSignum = Math.signum(f);
        int iBinarySearch = Arrays.binarySearch(fArr, fAbs);
        if (iBinarySearch >= 0) {
            return fSignum * fArr2[iBinarySearch];
        }
        int i = -(iBinarySearch + 1);
        int i2 = i - 1;
        if (i2 >= fArr.length - 1) {
            float f6 = fArr[fArr.length - 1];
            float f7 = fArr2[fArr.length - 1];
            if (f6 == 0.0f) {
                return 0.0f;
            }
            return (f7 / f6) * f;
        }
        if (i2 == -1) {
            float f8 = fArr[0];
            f4 = fArr2[0];
            f5 = f8;
            f3 = 0.0f;
            f2 = 0.0f;
        } else {
            float f9 = fArr[i2];
            float f10 = fArr[i];
            f2 = fArr2[i2];
            f3 = f9;
            f4 = fArr2[i];
            f5 = f10;
        }
        return (((f4 - f2) * Math.max(0.0f, Math.min(1.0f, f3 == f5 ? 0.0f : (fAbs - f3) / (f5 - f3)))) + f2) * fSignum;
    }

    public static final void e(b21 b21Var) {
        wr3 wr3Var;
        tu2 tu2Var;
        tu2 tu2Var2;
        wr3 wr3Var2 = h33.z;
        do {
            wr3Var = h33.z;
            tu2Var = (tu2) wr3Var.getValue();
            lu2 lu2VarA = tu2Var.p;
            y32 y32Var = (y32) lu2VarA.get(b21Var);
            if (y32Var == null) {
                tu2Var2 = tu2Var;
            } else {
                Object obj = y32Var.a;
                Object obj2 = y32Var.b;
                j24 j24Var = lu2VarA.n;
                j24 j24VarV = j24Var.v(b21Var != null ? b21Var.hashCode() : 0, 0, b21Var);
                if (j24Var != j24VarV) {
                    lu2VarA = j24VarV == null ? lu2.p : new lu2(j24VarV, lu2VarA.o - 1);
                }
                w13 w13Var = w13.A;
                if (obj != w13Var) {
                    Object obj3 = lu2VarA.get(obj);
                    obj3.getClass();
                    lu2VarA = lu2VarA.a(obj, new y32(((y32) obj3).a, obj2));
                }
                if (obj2 != w13Var) {
                    Object obj4 = lu2VarA.get(obj2);
                    obj4.getClass();
                    lu2VarA = lu2VarA.a(obj2, new y32(obj, ((y32) obj4).b));
                }
                Object obj5 = obj != w13Var ? tu2Var.n : obj2;
                if (obj2 != w13Var) {
                    obj = tu2Var.o;
                }
                tu2Var2 = new tu2(obj5, obj, lu2VarA);
            }
            if (tu2Var == tu2Var2) {
                return;
            }
        } while (!wr3Var.i(tu2Var, tu2Var2));
    }

    public static Typeface j(String str, pb1 pb1Var, int i) {
        if (i == 0 && nt1.g(pb1Var, pb1.p) && (str == null || str.length() == 0)) {
            return Typeface.DEFAULT;
        }
        if (i == 0 && nt1.g(pb1Var, pb1.r) && (str == null || str.length() == 0)) {
            return Typeface.DEFAULT_BOLD;
        }
        return Typeface.create(str == null ? Typeface.DEFAULT : Typeface.create(str, 0), pb1Var.n, i == 1);
    }

    public static bt2 k(String str) {
        str.getClass();
        g00 g00Var = c.a;
        sy syVar = new sy();
        syVar.u0(str);
        return c.d(syVar, false);
    }

    public static d03 m(String str) throws IOException {
        if (str.equals("http/1.0")) {
            return d03.HTTP_1_0;
        }
        if (str.equals("http/1.1")) {
            return d03.HTTP_1_1;
        }
        if (str.equals("h2_prior_knowledge")) {
            return d03.H2_PRIOR_KNOWLEDGE;
        }
        if (str.equals("h2")) {
            return d03.HTTP_2;
        }
        if (str.equals("spdy/3.1")) {
            return d03.SPDY_3;
        }
        if (str.equals("quic")) {
            return d03.QUIC;
        }
        if (gt3.y0(str, "h3", false)) {
            return d03.HTTP_3;
        }
        p61.k("Unexpected protocol: ".concat(str));
        return null;
    }

    @Override // defpackage.rv2
    public Typeface c(pb1 pb1Var, int i) {
        return j(null, pb1Var, i);
    }

    @Override // defpackage.ke3
    public Socket connectSocket(Socket socket, InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, km1 km1Var) throws IOException {
        w80.L(km1Var, "HTTP parameters");
        if (socket == null) {
            socket = new Socket();
        }
        if (inetSocketAddress2 != null) {
            socket.setReuseAddress(((f1) km1Var).d("http.socket.reuseaddr", false));
            socket.bind(inetSocketAddress2);
        }
        int iE = ((f1) km1Var).e(0, "http.connection.timeout");
        try {
            socket.setSoTimeout(mt1.H(km1Var));
            socket.connect(inetSocketAddress, iE);
            return socket;
        } catch (SocketTimeoutException unused) {
            throw new wd0("Connect to " + inetSocketAddress + " timed out");
        }
    }

    @Override // defpackage.ke3
    public Socket createSocket(km1 km1Var) {
        return new Socket();
    }

    @Override // defpackage.rv2
    public Typeface f(vg1 vg1Var, pb1 pb1Var, int i) {
        return j(vg1Var.e, pb1Var, i);
    }

    @Override // defpackage.rk3
    public mk3 g(ls3 ls3Var, JSONObject jSONObject) throws JSONException {
        jSONObject.optInt("settings_version", 0);
        int iOptInt = jSONObject.optInt("cache_duration", 3600);
        double dOptDouble = jSONObject.optDouble("on_demand_upload_rate_per_minute", 10.0d);
        double dOptDouble2 = jSONObject.optDouble("on_demand_backoff_base", 1.2d);
        int iOptInt2 = jSONObject.optInt("on_demand_backoff_step_duration_seconds", 60);
        t72 t72Var = jSONObject.has("session") ? new t72(jSONObject.getJSONObject("session").optInt("max_custom_exception_events", 8)) : new t72(new JSONObject().optInt("max_custom_exception_events", 8));
        JSONObject jSONObject2 = jSONObject.getJSONObject("features");
        return new mk3(jSONObject.has("expires_at") ? jSONObject.optLong("expires_at") : (((long) iOptInt) * 1000) + System.currentTimeMillis(), t72Var, new kk3(jSONObject2.optBoolean("collect_reports", true), jSONObject2.optBoolean("collect_anrs", false), jSONObject2.optBoolean("collect_build_ids", false)), dOptDouble, dOptDouble2, iOptInt2);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0054  */
    @Override // defpackage.hr3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.StackTraceElement[] h(java.lang.StackTraceElement[] r14) {
        /*
            r13 = this;
            int r13 = r13.n
            r0 = 0
            switch(r13) {
                case 13: goto L70;
                default: goto L6;
            }
        L6:
            java.util.HashMap r13 = new java.util.HashMap
            r13.<init>()
            int r1 = r14.length
            java.lang.StackTraceElement[] r1 = new java.lang.StackTraceElement[r1]
            r2 = 1
            r3 = r0
            r4 = r3
            r5 = r2
        L12:
            int r6 = r14.length
            if (r3 >= r6) goto L66
            r6 = r14[r3]
            java.lang.Object r7 = r13.get(r6)
            java.lang.Integer r7 = (java.lang.Integer) r7
            if (r7 == 0) goto L54
            int r8 = r7.intValue()
            int r9 = r3 - r8
            int r10 = r3 + r9
            int r11 = r14.length
            if (r10 <= r11) goto L2b
            goto L54
        L2b:
            r10 = r0
        L2c:
            if (r10 >= r9) goto L40
            int r11 = r8 + r10
            r11 = r14[r11]
            int r12 = r3 + r10
            r12 = r14[r12]
            boolean r11 = r11.equals(r12)
            if (r11 != 0) goto L3d
            goto L54
        L3d:
            int r10 = r10 + 1
            goto L2c
        L40:
            int r7 = r7.intValue()
            int r7 = r3 - r7
            r8 = 10
            if (r5 >= r8) goto L50
            java.lang.System.arraycopy(r14, r3, r1, r4, r7)
            int r4 = r4 + r7
            int r5 = r5 + 1
        L50:
            int r7 = r7 + (-1)
            int r7 = r7 + r3
            goto L5c
        L54:
            r5 = r14[r3]
            r1[r4] = r5
            int r4 = r4 + 1
            r5 = r2
            r7 = r3
        L5c:
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            r13.put(r6, r3)
            int r3 = r7 + 1
            goto L12
        L66:
            java.lang.StackTraceElement[] r13 = new java.lang.StackTraceElement[r4]
            java.lang.System.arraycopy(r1, r0, r13, r0, r4)
            int r0 = r14.length
            if (r4 >= r0) goto L6f
            r14 = r13
        L6f:
            return r14
        L70:
            int r13 = r14.length
            r1 = 1024(0x400, float:1.435E-42)
            if (r13 > r1) goto L76
            goto L83
        L76:
            java.lang.StackTraceElement[] r13 = new java.lang.StackTraceElement[r1]
            r1 = 512(0x200, float:7.175E-43)
            java.lang.System.arraycopy(r14, r0, r13, r0, r1)
            int r0 = r14.length
            int r0 = r0 - r1
            java.lang.System.arraycopy(r14, r0, r13, r1, r1)
            r14 = r13
        L83:
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qz0.h(java.lang.StackTraceElement[]):java.lang.StackTraceElement[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0088, code lost:
    
        if (r7 == r5) goto L37;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r8v0, types: [n61] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Type inference failed for: r8v24 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object i(defpackage.n61 r8, defpackage.fh0 r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof defpackage.yr1
            if (r0 == 0) goto L13
            r0 = r9
            yr1 r0 = (defpackage.yr1) r0
            int r1 = r0.t
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.t = r1
            goto L18
        L13:
            yr1 r0 = new yr1
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r7 = r0.r
            int r9 = r0.t
            java.lang.String r1 = "FirebaseSessions"
            r2 = 2
            r3 = 1
            java.lang.String r4 = ""
            ri0 r5 = defpackage.ri0.n
            if (r9 == 0) goto L46
            if (r9 == r3) goto L3c
            if (r9 != r2) goto L35
            java.lang.Object r8 = r0.q
            java.lang.String r8 = (java.lang.String) r8
            defpackage.gg4.T(r7)     // Catch: java.lang.Exception -> L32
            goto L8b
        L32:
            r7 = move-exception
            goto L92
        L35:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r7)
            r7 = 0
            return r7
        L3c:
            java.lang.Object r8 = r0.q
            n61 r8 = (defpackage.n61) r8
            defpackage.gg4.T(r7)     // Catch: java.lang.Exception -> L44
            goto L61
        L44:
            r7 = move-exception
            goto L70
        L46:
            defpackage.gg4.T(r7)
            r7 = r8
            m61 r7 = (defpackage.m61) r7     // Catch: java.lang.Exception -> L44
            ef5 r8 = r7.e()     // Catch: java.lang.Exception -> L44
            r8.getClass()     // Catch: java.lang.Exception -> L6c
            r0.q = r7     // Catch: java.lang.Exception -> L6c
            r0.t = r3     // Catch: java.lang.Exception -> L6c
            java.lang.Object r8 = defpackage.nt1.i(r8, r0)     // Catch: java.lang.Exception -> L6c
            if (r8 != r5) goto L5e
            goto L8a
        L5e:
            r6 = r8
            r8 = r7
            r7 = r6
        L61:
            lo r7 = (defpackage.lo) r7     // Catch: java.lang.Exception -> L44
            java.lang.String r7 = r7.a     // Catch: java.lang.Exception -> L44
            r7.getClass()     // Catch: java.lang.Exception -> L44
            r6 = r8
            r8 = r7
            r7 = r6
            goto L77
        L6c:
            r8 = move-exception
            r6 = r8
            r8 = r7
            r7 = r6
        L70:
            java.lang.String r9 = "Error getting authentication token."
            android.util.Log.w(r1, r9, r7)
            r7 = r8
            r8 = r4
        L77:
            m61 r7 = (defpackage.m61) r7     // Catch: java.lang.Exception -> L32
            ef5 r7 = r7.c()     // Catch: java.lang.Exception -> L32
            r7.getClass()     // Catch: java.lang.Exception -> L32
            r0.q = r8     // Catch: java.lang.Exception -> L32
            r0.t = r2     // Catch: java.lang.Exception -> L32
            java.lang.Object r7 = defpackage.nt1.i(r7, r0)     // Catch: java.lang.Exception -> L32
            if (r7 != r5) goto L8b
        L8a:
            return r5
        L8b:
            java.lang.String r7 = (java.lang.String) r7     // Catch: java.lang.Exception -> L32
            if (r7 != 0) goto L90
            goto L97
        L90:
            r4 = r7
            goto L97
        L92:
            java.lang.String r9 = "Error getting Firebase installation id ."
            android.util.Log.w(r1, r9, r7)
        L97:
            zr1 r7 = new zr1
            r7.<init>(r4, r8)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qz0.i(n61, fh0):java.lang.Object");
    }

    @Override // defpackage.np3, defpackage.ke3
    public boolean isSecure(Socket socket) {
        return false;
    }

    @Override // defpackage.np3
    public Socket createSocket() {
        return new Socket();
    }

    @Override // defpackage.iz2
    public void l() {
    }

    @Override // defpackage.yi0
    public Object b(xi0 xi0Var) throws xi0 {
        throw xi0Var;
    }

    @Override // defpackage.iz2
    public void n(int i, Object obj) {
    }

    @Override // defpackage.np3
    public Socket connectSocket(Socket socket, String str, int i, InetAddress inetAddress, int i2, km1 km1Var) {
        InetSocketAddress inetSocketAddress;
        if (inetAddress != null || i2 > 0) {
            if (i2 <= 0) {
                i2 = 0;
            }
            inetSocketAddress = new InetSocketAddress(inetAddress, i2);
        } else {
            inetSocketAddress = null;
        }
        return connectSocket(socket, new InetSocketAddress(InetAddress.getByName(str), i), inetSocketAddress, km1Var);
    }

    @Override // defpackage.ef3
    public void onScrollLimit(int i, int i2, int i3, boolean z) {
    }

    @Override // defpackage.ef3
    public void onScrollProgress(int i, int i2, int i3, int i4) {
    }
}
