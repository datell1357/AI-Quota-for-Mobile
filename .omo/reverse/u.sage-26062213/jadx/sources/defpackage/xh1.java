package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.autofill.AutofillManager;
import com.google.android.gms.common.ConnectionResult;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.CodingErrorAction;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import u.sage.MainActivity;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class xh1 implements st3, hr3, q20, ar2, zm1, c13, bd3, wt3 {
    public Object n;
    public Object o;

    public xh1(int i) {
        switch (i) {
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                this.n = new AtomicInteger();
                this.o = new AtomicInteger();
                break;
            case 10:
                this.n = new ug2(new xy1[16]);
                break;
            case 20:
                this.n = new LinkedHashMap();
                this.o = new LinkedHashMap();
                break;
            case 29:
                this.n = new pr3(3);
                this.o = new s82(16);
                break;
            default:
                this.n = new kg2();
                this.o = new kg2();
                break;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [md2] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [md2] */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [ug2] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [ug2] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r6v5 */
    public static void m(xy1 xy1Var) {
        if (xy1Var.c0 > 0) {
            if (xy1Var.T.d == ty1.r && !xy1Var.p() && !xy1Var.q() && !xy1Var.d0 && xy1Var.I()) {
                md2 md2Var = (md2) xy1Var.S.g;
                if ((md2Var.q & 256) != 0) {
                    while (md2Var != null) {
                        if ((md2Var.p & 256) != 0) {
                            ?? G = md2Var;
                            ?? ug2Var = 0;
                            while (G != 0) {
                                if (G instanceof fh1) {
                                    fh1 fh1Var = (fh1) G;
                                    fh1Var.r(w80.P(fh1Var, 256));
                                } else if ((G.p & 256) != 0 && (G instanceof kr0)) {
                                    md2 md2Var2 = ((kr0) G).C;
                                    int i = 0;
                                    G = G;
                                    ug2Var = ug2Var;
                                    while (md2Var2 != null) {
                                        if ((md2Var2.p & 256) != 0) {
                                            i++;
                                            ug2Var = ug2Var;
                                            if (i == 1) {
                                                G = md2Var2;
                                            } else {
                                                if (ug2Var == 0) {
                                                    ug2Var = new ug2(new md2[16]);
                                                }
                                                if (G != 0) {
                                                    ug2Var.c(G);
                                                    G = 0;
                                                }
                                                ug2Var.c(md2Var2);
                                            }
                                        }
                                        md2Var2 = md2Var2.s;
                                        G = G;
                                        ug2Var = ug2Var;
                                    }
                                    if (i == 1) {
                                    }
                                }
                                G = w80.g(ug2Var);
                            }
                        }
                        if ((md2Var.q & 256) == 0) {
                            break;
                        } else {
                            md2Var = md2Var.s;
                        }
                    }
                }
            }
            xy1Var.b0 = false;
            ug2 ug2VarZ = xy1Var.z();
            Object[] objArr = ug2VarZ.n;
            int i2 = ug2VarZ.p;
            for (int i3 = 0; i3 < i2; i3++) {
                m((xy1) objArr[i3]);
            }
        }
    }

    @Override // defpackage.c13
    public void a(b13 b13Var, int i) throws IOException {
        int[] iArr = (int[]) this.n;
        try {
            b13Var.read((byte[]) this.o, iArr[0], i);
            iArr[0] = iArr[0] + i;
        } finally {
            b13Var.close();
        }
    }

    @Override // defpackage.bd3
    public Object b(Object obj) {
        return ((pe1) this.o).k(obj);
    }

    @Override // defpackage.ar2
    public List c(Integer num) {
        List listC = ((ar2) this.n).c(null);
        xn3 xn3Var = (xn3) this.o;
        int i = xn3Var.v;
        return i < 0 ? listC : o70.s0(qn0.k(xn3Var, num, i, Integer.valueOf(xn3Var.E(xn3Var.b, i))), listC);
    }

    @Override // defpackage.q20
    public void cancel() {
        if (((lj) this.o).compareAndSet(1, 1)) {
            return;
        }
        ((pp) this.n).a();
    }

    @Override // defpackage.ar2
    public boolean d() {
        return ((ar2) this.n).d();
    }

    @Override // defpackage.st3
    public void e(rt3 rt3Var) {
        cg2 cg2Var = (cg2) this.o;
        cg2Var.a();
        eg2 eg2Var = (eg2) rt3Var.o;
        Object[] objArr = eg2Var.b;
        long[] jArr = eg2Var.c;
        int i = eg2Var.e;
        while (i != Integer.MAX_VALUE) {
            int i2 = (int) ((jArr[i] >> 31) & 2147483647L);
            Object obj = objArr[i];
            Object objB = ((c02) this.n).b(obj);
            int iD = cg2Var.d(objB);
            int i3 = iD >= 0 ? cg2Var.c[iD] : 0;
            if (i3 == 7) {
                rt3Var.remove(obj);
            } else {
                cg2Var.g(i3 + 1, objB);
            }
            i = i2;
        }
    }

    @Override // defpackage.zm1
    public ym1 f(em1 em1Var, om1 om1Var, ul1 ul1Var) throws cm1 {
        km1 params = om1Var.getParams();
        em1 em1Var2 = td0.a;
        w80.L(params, "Parameters");
        ym1 ym1Var = (ym1) params.c("http.route.forced-route");
        em1 em1Var3 = null;
        if (ym1Var != null && td0.b.equals(ym1Var)) {
            ym1Var = null;
        }
        if (ym1Var != null) {
            return ym1Var;
        }
        mt1.O(em1Var, "Target host");
        km1 params2 = om1Var.getParams();
        w80.L(params2, "Parameters");
        InetAddress inetAddress = (InetAddress) params2.c("http.route.local-address");
        ProxySelector proxySelector = (ProxySelector) this.o;
        if (proxySelector == null) {
            proxySelector = ProxySelector.getDefault();
        }
        if (proxySelector != null) {
            try {
                List<Proxy> listSelect = proxySelector.select(new URI(em1Var.b()));
                w80.I(listSelect, "List of proxies");
                Proxy proxy = null;
                for (int i = 0; proxy == null && i < listSelect.size(); i++) {
                    Proxy proxy2 = listSelect.get(i);
                    int i2 = p03.a[proxy2.type().ordinal()];
                    if (i2 == 1 || i2 == 2) {
                        proxy = proxy2;
                    }
                }
                if (proxy == null) {
                    proxy = Proxy.NO_PROXY;
                }
                if (proxy.type() == Proxy.Type.HTTP) {
                    if (!(proxy.address() instanceof InetSocketAddress)) {
                        throw new cm1(cm1.a("Unable to handle non-Inet proxy address: " + proxy.address()));
                    }
                    InetSocketAddress inetSocketAddress = (InetSocketAddress) proxy.address();
                    em1Var3 = new em1(inetSocketAddress.isUnresolved() ? inetSocketAddress.getHostName() : inetSocketAddress.getAddress().getHostAddress(), inetSocketAddress.getPort(), null);
                }
            } catch (URISyntaxException e) {
                throw new cm1("Cannot convert host to URI: " + em1Var, e);
            }
        }
        boolean z = ((je3) this.n).a(em1Var.q).d;
        return em1Var3 == null ? new ym1(em1Var, inetAddress, z) : new ym1(em1Var, inetAddress, em1Var3, z);
    }

    @Override // defpackage.bd3
    public Object g(ec3 ec3Var, Object obj) {
        return ((df1) this.n).f(ec3Var, obj);
    }

    @Override // defpackage.hr3
    public StackTraceElement[] h(StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr.length <= 1024) {
            return stackTraceElementArr;
        }
        hr3[] hr3VarArr = (hr3[]) this.n;
        StackTraceElement[] stackTraceElementArrH = stackTraceElementArr;
        for (int i = 0; i < 1; i++) {
            hr3 hr3Var = hr3VarArr[i];
            if (stackTraceElementArrH.length <= 1024) {
                break;
            }
            stackTraceElementArrH = hr3Var.h(stackTraceElementArr);
        }
        return stackTraceElementArrH.length > 1024 ? ((qz0) this.o).h(stackTraceElementArrH) : stackTraceElementArrH;
    }

    public boolean i(bg4 bg4Var) {
        boolean zContainsKey;
        synchronized (this.o) {
            zContainsKey = ((yl0) this.n).a.containsKey(bg4Var);
        }
        return zContainsKey;
    }

    public v72 j(Object obj) {
        zw2 zw2Var = (zw2) this.n;
        ym1 ym1Var = (ym1) obj;
        if (ym1Var.e() != null) {
        }
        zw2Var.getClass();
        w92 w92Var = (w92) ((tl1) this.o);
        w92Var.getClass();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPORT;
        return new v72("http-outgoing-" + Long.toString(w92.h.getAndIncrement()), w92Var.a, w92Var.b, w92Var.c, w92Var.f, w92Var.g, w92Var.d, w92Var.e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void k() {
        /*
            r6 = this;
            java.lang.Object r0 = r6.n
            ug2 r0 = (defpackage.ug2) r0
            lh0 r1 = defpackage.lh0.r
            java.lang.Object[] r2 = r0.n
            int r3 = r0.p
            r4 = 0
            java.util.Arrays.sort(r2, r4, r3, r1)
            int r1 = r0.p
            java.lang.Object r2 = r6.o
            xy1[] r2 = (defpackage.xy1[]) r2
            if (r2 == 0) goto L19
            int r3 = r2.length
            if (r3 >= r1) goto L21
        L19:
            r2 = 16
            int r2 = java.lang.Math.max(r2, r1)
            xy1[] r2 = new defpackage.xy1[r2]
        L21:
            r3 = 0
            r6.o = r3
        L24:
            if (r4 >= r1) goto L2f
            java.lang.Object[] r5 = r0.n
            r5 = r5[r4]
            r2[r4] = r5
            int r4 = r4 + 1
            goto L24
        L2f:
            r0.h()
            int r1 = r1 + (-1)
        L34:
            r0 = -1
            if (r0 >= r1) goto L48
            r0 = r2[r1]
            r0.getClass()
            boolean r4 = r0.b0
            if (r4 == 0) goto L43
            m(r0)
        L43:
            r2[r1] = r3
            int r1 = r1 + (-1)
            goto L34
        L48:
            r6.o = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xh1.k():void");
    }

    @Override // defpackage.st3
    public boolean l(Object obj, Object obj2) {
        c02 c02Var = (c02) this.n;
        return nt1.g(c02Var.b(obj), c02Var.b(obj2));
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.datatransport.cct.CctBackendFactory n(java.lang.String r14) {
        /*
            Method dump skipped, instruction units count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xh1.n(java.lang.String):com.google.android.datatransport.cct.CctBackendFactory");
    }

    public xo o(ad0 ad0Var) throws t61 {
        String string;
        JSONArray jSONArray = ad0Var.g;
        long j = ad0Var.f;
        HashSet hashSet = new HashSet();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                String string2 = jSONObject.getString("rolloutId");
                JSONArray jSONArray2 = jSONObject.getJSONArray("affectedParameterKeys");
                if (jSONArray2.length() > 1) {
                    Log.w("FirebaseRemoteConfig", String.format("Rollout has multiple affected parameter keys.Only the first key will be included in RolloutsState. rolloutId: %s, affectedParameterKeys: %s", string2, jSONArray2));
                }
                String strOptString = jSONArray2.optString(0, "");
                ad0 ad0VarC = ((yc0) this.n).c();
                String string3 = null;
                if (ad0VarC == null) {
                    string = null;
                } else {
                    try {
                        string = ad0VarC.b.getString(strOptString);
                    } catch (JSONException unused) {
                        string = null;
                    }
                }
                if (string == null) {
                    ad0 ad0VarC2 = ((yc0) this.o).c();
                    if (ad0VarC2 != null) {
                        try {
                            string3 = ad0VarC2.b.getString(strOptString);
                        } catch (JSONException unused2) {
                        }
                    }
                    string = string3 != null ? string3 : "";
                }
                int i2 = y93.a;
                uo uoVar = new uo();
                if (string2 == null) {
                    throw new NullPointerException("Null rolloutId");
                }
                uoVar.a = string2;
                String string4 = jSONObject.getString("variantId");
                if (string4 == null) {
                    throw new NullPointerException("Null variantId");
                }
                uoVar.b = string4;
                if (strOptString == null) {
                    throw new NullPointerException("Null parameterKey");
                }
                uoVar.c = strOptString;
                uoVar.d = string;
                uoVar.e = j;
                uoVar.f = (byte) (uoVar.f | 1);
                hashSet.add(uoVar.a());
            } catch (JSONException e) {
                throw new t61("Exception parsing rollouts metadata to create RolloutsState.", e);
            }
        }
        return new xo(hashSet);
    }

    public File p() {
        if (((File) this.n) == null) {
            synchronized (this) {
                try {
                    if (((File) this.n) == null) {
                        String str = "PersistedInstallation." + ((e61) this.o).c() + ".json";
                        e61 e61Var = (e61) this.o;
                        e61Var.a();
                        File file = new File(e61Var.a.getNoBackupFilesDir(), str);
                        this.n = file;
                        if (file.exists()) {
                            return (File) this.n;
                        }
                        e61 e61Var2 = (e61) this.o;
                        e61Var2.a();
                        File file2 = new File(e61Var2.a.getFilesDir(), str);
                        if (file2.exists() && !file2.renameTo((File) this.n)) {
                            Log.e("PersistedInstallation", "Unable to move the file from back up to non back up directory", new IOException("Unable to move the file from back up to non back up directory"));
                            return file2;
                        }
                    }
                } finally {
                }
            }
        }
        return (File) this.n;
    }

    public db2 q() {
        return (db2) ((ws2) this.o).getValue();
    }

    public AutofillManager r() {
        AutofillManager autofillManager = (AutofillManager) this.o;
        if (autofillManager != null) {
            return autofillManager;
        }
        AutofillManager autofillManagerD = pu1.d(((Context) this.n).getSystemService(pu1.e()));
        if (autofillManagerD != null) {
            this.o = autofillManagerD;
            return autofillManagerD;
        }
        k21.n("Could not locate AutofillManager from context");
        return null;
    }

    public void s(to toVar) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("Fid", toVar.a);
            jSONObject.put("Status", di0.F(toVar.b));
            jSONObject.put("AuthToken", toVar.c);
            jSONObject.put("RefreshToken", toVar.d);
            jSONObject.put("TokenCreationEpochInSecs", toVar.f);
            jSONObject.put("ExpiresInSecs", toVar.e);
            jSONObject.put("FisError", toVar.g);
            e61 e61Var = (e61) this.o;
            e61Var.a();
            File fileCreateTempFile = File.createTempFile("PersistedInstallation", "tmp", e61Var.a.getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
            if (fileCreateTempFile.renameTo(p())) {
            } else {
                throw new IOException("unable to rename the tmpfile to PersistedInstallation");
            }
        } catch (IOException | JSONException unused) {
        }
    }

    public void t() {
        int i;
        TypedValue typedValue = new TypedValue();
        MainActivity mainActivity = (MainActivity) this.n;
        Resources.Theme theme = mainActivity.getTheme();
        theme.resolveAttribute(R.attr.windowSplashScreenBackground, typedValue, true);
        if (theme.resolveAttribute(R.attr.windowSplashScreenAnimatedIcon, typedValue, true)) {
            zf5.H(mainActivity, typedValue.resourceId);
        }
        theme.resolveAttribute(R.attr.splashScreenIconSize, typedValue, true);
        if (!theme.resolveAttribute(R.attr.postSplashScreenTheme, typedValue, true) || (i = typedValue.resourceId) == 0) {
            return;
        }
        mainActivity.setTheme(i);
    }

    @Override // defpackage.wt3
    public ow3 then(Object obj) throws Throwable {
        FileWriter fileWriter;
        ed0 ed0Var = (ed0) this.o;
        JSONObject jSONObject = (JSONObject) ((qk0) ((eh) this.n).q).n.submit(new vc0(3, this)).get();
        FileWriter fileWriter2 = null;
        if (jSONObject != null) {
            mk3 mk3VarI = ((ra3) ed0Var.c).i(jSONObject);
            wu4 wu4Var = (wu4) ed0Var.e;
            long j = mk3VarI.c;
            wu4Var.getClass();
            if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                Log.v("FirebaseCrashlytics", "Writing settings to cache file...", null);
            }
            try {
                jSONObject.put("expires_at", j);
                fileWriter = new FileWriter((File) wu4Var.o);
                try {
                    try {
                        fileWriter.write(jSONObject.toString());
                        fileWriter.flush();
                    } catch (Throwable th) {
                        th = th;
                        fileWriter2 = fileWriter;
                        w80.n(fileWriter2, "Failed to close settings writer.");
                        throw th;
                    }
                } catch (Exception e) {
                    e = e;
                    Log.e("FirebaseCrashlytics", "Failed to cache settings", e);
                }
            } catch (Exception e2) {
                e = e2;
                fileWriter = null;
            } catch (Throwable th2) {
                th = th2;
                w80.n(fileWriter2, "Failed to close settings writer.");
                throw th;
            }
            w80.n(fileWriter, "Failed to close settings writer.");
            ed0.h(jSONObject, "Loaded settings: ");
            String str = ((tk3) ed0Var.b).f;
            SharedPreferences.Editor editorEdit = ((Context) ed0Var.a).getSharedPreferences("com.google.firebase.crashlytics", 0).edit();
            editorEdit.putString("existing_instance_identifier", str);
            editorEdit.apply();
            ((AtomicReference) ed0Var.h).set(mk3VarI);
            ((pw3) ((AtomicReference) ed0Var.i).get()).d(mk3VarI);
        }
        return mt1.t(null);
    }

    public void u(View view, int i, boolean z) {
        if (Build.VERSION.SDK_INT >= 27) {
            r().notifyViewVisibilityChanged(view, i, z);
        }
    }

    public to v() {
        JSONObject jSONObject;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        try {
            FileInputStream fileInputStream = new FileInputStream(p());
            while (true) {
                try {
                    int i = fileInputStream.read(bArr, 0, 16384);
                    if (i < 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i);
                } finally {
                }
            }
            jSONObject = new JSONObject(byteArrayOutputStream.toString());
            fileInputStream.close();
        } catch (IOException | JSONException unused) {
            jSONObject = new JSONObject();
        }
        String strOptString = jSONObject.optString("Fid", null);
        int iOptInt = jSONObject.optInt("Status", 0);
        String strOptString2 = jSONObject.optString("AuthToken", null);
        String strOptString3 = jSONObject.optString("RefreshToken", null);
        long jOptLong = jSONObject.optLong("TokenCreationEpochInSecs", 0L);
        long jOptLong2 = jSONObject.optLong("ExpiresInSecs", 0L);
        String strOptString4 = jSONObject.optString("FisError", null);
        int i2 = to.h;
        byte b = (byte) (((byte) (0 | 2)) | 1);
        int i3 = di0.J(5)[iOptInt];
        if (i3 == 0) {
            q73.r("Null registrationStatus");
            return null;
        }
        byte b2 = (byte) (((byte) (b | 2)) | 1);
        if (b2 == 3 && i3 != 0) {
            return new to(strOptString, i3, strOptString2, strOptString3, jOptLong2, jOptLong, strOptString4);
        }
        StringBuilder sb = new StringBuilder();
        if (i3 == 0) {
            sb.append(" registrationStatus");
        }
        if ((b2 & 1) == 0) {
            sb.append(" expiresInSecs");
        }
        if ((b2 & 2) == 0) {
            sb.append(" tokenCreationEpochInSecs");
        }
        k21.n(di0.w("Missing required properties:", sb));
        return null;
    }

    public nr3 w(bg4 bg4Var) {
        nr3 nr3VarB;
        bg4Var.getClass();
        synchronized (this.o) {
            nr3VarB = ((yl0) this.n).b(bg4Var);
        }
        return nr3VarB;
    }

    public void x(r6 r6Var) {
        this.o = r6Var;
        View viewFindViewById = ((MainActivity) this.n).findViewById(android.R.id.content);
        viewFindViewById.getViewTreeObserver().addOnPreDrawListener(new qq3(this, viewFindViewById, 0));
    }

    public nr3 y(bg4 bg4Var) {
        nr3 nr3VarE;
        synchronized (this.o) {
            nr3VarE = ((yl0) this.n).e(bg4Var);
        }
        return nr3VarE;
    }

    public /* synthetic */ xh1(Object obj, Object obj2, boolean z) {
        this.o = obj;
        this.n = obj2;
    }

    public xh1(Context context, int i) {
        switch (i) {
            case 15:
                this.n = context;
                break;
            default:
                this.o = null;
                this.n = context;
                break;
        }
    }

    public xh1(MainActivity mainActivity) {
        this.n = mainActivity;
        this.o = new q73(8);
    }

    public /* synthetic */ xh1(Object obj, Object obj2) {
        this.n = obj;
        this.o = obj2;
    }
}
