package defpackage;

import android.net.TrafficStats;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.api.client.http.HttpMethods;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m61 implements n61 {
    public static final Object m = new Object();
    public final e61 a;
    public final k61 b;
    public final xh1 c;
    public final j94 d;
    public final rz1 e;
    public final t13 f;
    public final Object g;
    public final ExecutorService h;
    public final ei3 i;
    public String j;
    public final HashSet k;
    public final ArrayList l;

    static {
        new AtomicInteger(1);
    }

    public m61(e61 e61Var, n03 n03Var, ExecutorService executorService, ei3 ei3Var) {
        e61Var.a();
        k61 k61Var = new k61(e61Var.a, n03Var);
        xh1 xh1Var = new xh1();
        xh1Var.o = e61Var;
        if (ls3.o == null) {
            ls3.o = new ls3(3);
        }
        ls3 ls3Var = ls3.o;
        if (j94.c == null) {
            j94.c = new j94(ls3Var);
        }
        j94 j94Var = j94.c;
        rz1 rz1Var = new rz1(new z90(2, e61Var));
        t13 t13Var = new t13();
        this.g = new Object();
        this.k = new HashSet();
        this.l = new ArrayList();
        this.a = e61Var;
        this.b = k61Var;
        this.c = xh1Var;
        this.d = j94Var;
        this.e = rz1Var;
        this.f = t13Var;
        this.h = executorService;
        this.i = ei3Var;
    }

    public static m61 d() {
        e61 e61VarB = e61.b();
        Preconditions.checkArgument(true, "Null is not a valid value of FirebaseApp.");
        e61VarB.a();
        return (m61) e61VarB.d.a(n61.class);
    }

    /* JADX WARN: Finally extract failed */
    public final void a() {
        to toVarV;
        int i;
        synchronized (m) {
            try {
                e61 e61Var = this.a;
                e61Var.a();
                gw4 gw4VarC = gw4.c(e61Var.a);
                try {
                    toVarV = this.c.v();
                    int i2 = toVarV.b;
                    i = 2;
                    boolean z = true;
                    if (i2 != 2 && i2 != 1) {
                        z = false;
                    }
                    if (z) {
                        String strG = g(toVarV);
                        xh1 xh1Var = this.c;
                        so soVarA = toVarV.a();
                        soVarA.a = strG;
                        soVarA.b = 3;
                        toVarV = soVarA.a();
                        xh1Var.s(toVarV);
                    }
                    if (gw4VarC != null) {
                        gw4VarC.E();
                    }
                } catch (Throwable th) {
                    if (gw4VarC != null) {
                        gw4VarC.E();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        j(toVarV);
        this.i.execute(new l61(this, i));
    }

    public final to b(to toVar) throws o61 {
        int i;
        int responseCode;
        fp fpVar;
        fp fpVarF;
        k61 k61Var = this.b;
        e61 e61Var = this.a;
        e61Var.a();
        String str = e61Var.c.a;
        String str2 = toVar.a;
        e61 e61Var2 = this.a;
        e61Var2.a();
        String str3 = e61Var2.c.g;
        String str4 = toVar.d;
        h30 h30Var = k61Var.c;
        if (!h30Var.a()) {
            throw new o61("Firebase Installations Service is unavailable. Please try again later.");
        }
        URL urlA = k61.a("projects/" + str3 + "/installations/" + str2 + "/authTokens:generate");
        for (int i2 = 0; i2 <= 1; i2 = i + 1) {
            TrafficStats.setThreadStatsTag(32771);
            HttpURLConnection httpURLConnectionC = k61Var.c(urlA, str);
            try {
                try {
                    httpURLConnectionC.setRequestMethod(HttpMethods.POST);
                    httpURLConnectionC.addRequestProperty("Authorization", "FIS_v2 " + str4);
                    httpURLConnectionC.setDoOutput(true);
                    k61.h(httpURLConnectionC);
                    responseCode = httpURLConnectionC.getResponseCode();
                    h30Var.b(responseCode);
                } finally {
                    httpURLConnectionC.disconnect();
                    TrafficStats.clearThreadStatsTag();
                }
            } catch (IOException | AssertionError unused) {
                i = i2;
            }
            if (responseCode >= 200 && responseCode < 300) {
                fpVarF = k61.f(httpURLConnectionC);
            } else {
                k61.b(httpURLConnectionC, null, str, str3);
                i = i2;
                if (responseCode == 401 || responseCode == 404) {
                    if (((byte) (0 | 1)) != 1) {
                        throw new IllegalStateException("Missing required properties: tokenExpirationTimestamp");
                    }
                    fpVar = new fp(null, 3, 0L);
                    httpURLConnectionC.disconnect();
                    TrafficStats.clearThreadStatsTag();
                    fpVarF = fpVar;
                } else {
                    if (responseCode == 429) {
                        throw new o61("Firebase servers have received too many requests from this client in a short period of time. Please try again later.");
                    }
                    if (responseCode < 500 || responseCode >= 600) {
                        Log.e("Firebase-Installations", "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
                        if (((byte) (0 | 1)) != 1) {
                            throw new IllegalStateException("Missing required properties: tokenExpirationTimestamp");
                        }
                        fpVar = new fp(null, 2, 0L);
                        httpURLConnectionC.disconnect();
                        TrafficStats.clearThreadStatsTag();
                        fpVarF = fpVar;
                    }
                }
            }
            int iF = di0.F(fpVarF.c);
            if (iF == 0) {
                String str5 = fpVarF.a;
                long j = fpVarF.b;
                this.d.a.getClass();
                long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
                so soVarA = toVar.a();
                soVarA.c = str5;
                soVarA.e = j;
                byte b = (byte) (soVarA.h | 1);
                soVarA.f = jCurrentTimeMillis;
                soVarA.h = (byte) (b | 2);
                return soVarA.a();
            }
            if (iF == 1) {
                so soVarA2 = toVar.a();
                soVarA2.g = "BAD CONFIG";
                soVarA2.b = 5;
                return soVarA2.a();
            }
            if (iF != 2) {
                throw new o61("Firebase Installations Service is unavailable. Please try again later.");
            }
            synchronized (this) {
                this.j = null;
            }
            so soVarA3 = toVar.a();
            soVarA3.b = 2;
            return soVarA3.a();
        }
        throw new o61("Firebase Installations Service is unavailable. Please try again later.");
    }

    public final ef5 c() {
        String str;
        f();
        synchronized (this) {
            str = this.j;
        }
        if (str != null) {
            return mt1.t(str);
        }
        pw3 pw3Var = new pw3();
        ah1 ah1Var = new ah1(pw3Var);
        synchronized (this.g) {
            this.l.add(ah1Var);
        }
        ef5 ef5Var = pw3Var.a;
        this.h.execute(new l61(this, 0));
        return ef5Var;
    }

    public final ef5 e() {
        f();
        pw3 pw3Var = new pw3();
        zg1 zg1Var = new zg1(this.d, pw3Var);
        synchronized (this.g) {
            this.l.add(zg1Var);
        }
        ef5 ef5Var = pw3Var.a;
        this.h.execute(new l61(this, 1));
        return ef5Var;
    }

    public final void f() {
        e61 e61Var = this.a;
        e61Var.a();
        Preconditions.checkNotEmpty(e61Var.c.b, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        e61Var.a();
        Preconditions.checkNotEmpty(e61Var.c.g, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        e61Var.a();
        Preconditions.checkNotEmpty(e61Var.c.a, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        e61Var.a();
        String str = e61Var.c.b;
        Pattern pattern = j94.b;
        Preconditions.checkArgument(str.contains(":"), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        e61Var.a();
        Preconditions.checkArgument(j94.b.matcher(e61Var.c.a).matches(), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String g(defpackage.to r6) {
        /*
            r5 = this;
            e61 r0 = r5.a
            r0.a()
            java.lang.String r0 = r0.b
            java.lang.String r1 = "CHIME_ANDROID_SDK"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L1e
            e61 r0 = r5.a
            java.lang.String r1 = "[DEFAULT]"
            r0.a()
            java.lang.String r0 = r0.b
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L5c
        L1e:
            int r6 = r6.b
            r0 = 1
            if (r6 != r0) goto L5c
            rz1 r6 = r5.e
            java.lang.Object r6 = r6.get()
            zn1 r6 = (defpackage.zn1) r6
            android.content.SharedPreferences r0 = r6.a
            monitor-enter(r0)
            android.content.SharedPreferences r1 = r6.a     // Catch: java.lang.Throwable -> L3f
            monitor-enter(r1)     // Catch: java.lang.Throwable -> L3f
            android.content.SharedPreferences r2 = r6.a     // Catch: java.lang.Throwable -> L57
            java.lang.String r3 = "|S|id"
            r4 = 0
            java.lang.String r2 = r2.getString(r3, r4)     // Catch: java.lang.Throwable -> L57
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L57
            if (r2 == 0) goto L41
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3f
            goto L46
        L3f:
            r5 = move-exception
            goto L5a
        L41:
            java.lang.String r2 = r6.a()     // Catch: java.lang.Throwable -> L3f
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3f
        L46:
            boolean r6 = android.text.TextUtils.isEmpty(r2)
            if (r6 == 0) goto L56
            t13 r5 = r5.f
            r5.getClass()
            java.lang.String r5 = defpackage.t13.a()
            return r5
        L56:
            return r2
        L57:
            r5 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L57
            throw r5     // Catch: java.lang.Throwable -> L3f
        L5a:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3f
            throw r5
        L5c:
            t13 r5 = r5.f
            r5.getClass()
            java.lang.String r5 = defpackage.t13.a()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.m61.g(to):java.lang.String");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v2, types: [k61] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [ko] */
    public final to h(to toVar) throws o61 {
        int responseCode;
        String str = toVar.a;
        String string = null;
        if (str != null && str.length() == 11) {
            zn1 zn1Var = (zn1) this.e.get();
            synchronized (zn1Var.a) {
                try {
                    String[] strArr = zn1.c;
                    int i = 0;
                    while (true) {
                        if (i < 4) {
                            String str2 = strArr[i];
                            String string2 = zn1Var.a.getString("|T|" + zn1Var.b + "|" + str2, null);
                            if (string2 == null || string2.isEmpty()) {
                                i++;
                            } else if (string2.startsWith("{")) {
                                try {
                                    string = new JSONObject(string2).getString("token");
                                } catch (JSONException unused) {
                                }
                            } else {
                                string = string2;
                            }
                        }
                    }
                } finally {
                }
            }
        }
        k61 k61Var = this.b;
        e61 e61Var = this.a;
        e61Var.a();
        String str3 = e61Var.c.a;
        String str4 = toVar.a;
        e61 e61Var2 = this.a;
        e61Var2.a();
        String str5 = e61Var2.c.g;
        e61 e61Var3 = this.a;
        e61Var3.a();
        String str6 = e61Var3.c.b;
        h30 h30Var = k61Var.c;
        if (!h30Var.a()) {
            throw new o61("Firebase Installations Service is unavailable. Please try again later.");
        }
        URL urlA = k61.a("projects/" + str5 + "/installations");
        int i2 = 0;
        ko koVar = k61Var;
        while (i2 <= 1) {
            TrafficStats.setThreadStatsTag(32769);
            HttpURLConnection httpURLConnectionC = koVar.c(urlA, str3);
            try {
                try {
                    httpURLConnectionC.setRequestMethod(HttpMethods.POST);
                    httpURLConnectionC.setDoOutput(true);
                    if (string != null) {
                        httpURLConnectionC.addRequestProperty("x-goog-fis-android-iid-migration-auth", string);
                    }
                    k61.g(httpURLConnectionC, str4, str6);
                    responseCode = httpURLConnectionC.getResponseCode();
                    h30Var.b(responseCode);
                } finally {
                    httpURLConnectionC.disconnect();
                    TrafficStats.clearThreadStatsTag();
                }
            } catch (IOException | AssertionError unused2) {
            }
            if (responseCode >= 200 && responseCode < 300) {
                ko koVarE = k61.e(httpURLConnectionC);
                httpURLConnectionC.disconnect();
                TrafficStats.clearThreadStatsTag();
                koVar = koVarE;
            } else {
                try {
                    k61.b(httpURLConnectionC, str6, str3, str5);
                } catch (IOException | AssertionError unused3) {
                    httpURLConnectionC.disconnect();
                    TrafficStats.clearThreadStatsTag();
                }
                if (responseCode == 429) {
                    throw new o61("Firebase servers have received too many requests from this client in a short period of time. Please try again later.");
                }
                if (responseCode < 500 || responseCode >= 600) {
                    Log.e("Firebase-Installations", "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
                    ko koVar2 = new ko(null, null, null, null, 2);
                    httpURLConnectionC.disconnect();
                    TrafficStats.clearThreadStatsTag();
                    koVar = koVar2;
                } else {
                    httpURLConnectionC.disconnect();
                    TrafficStats.clearThreadStatsTag();
                    i2++;
                    koVar = koVar;
                }
            }
            int iF = di0.F(koVar.e);
            if (iF != 0) {
                if (iF != 1) {
                    throw new o61("Firebase Installations Service is unavailable. Please try again later.");
                }
                so soVarA = toVar.a();
                soVarA.g = "BAD CONFIG";
                soVarA.b = 5;
                return soVarA.a();
            }
            String str7 = koVar.b;
            String str8 = koVar.c;
            this.d.a.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            fp fpVar = koVar.d;
            String str9 = fpVar.a;
            long j = fpVar.b;
            so soVarA2 = toVar.a();
            soVarA2.a = str7;
            soVarA2.b = 4;
            soVarA2.c = str9;
            soVarA2.d = str8;
            soVarA2.e = j;
            byte b = (byte) (soVarA2.h | 1);
            soVarA2.f = jCurrentTimeMillis;
            soVarA2.h = (byte) (b | 2);
            return soVarA2.a();
        }
        throw new o61("Firebase Installations Service is unavailable. Please try again later.");
    }

    public final void i(Exception exc) {
        synchronized (this.g) {
            try {
                Iterator it = this.l.iterator();
                while (it.hasNext()) {
                    if (((as3) it.next()).a(exc)) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void j(to toVar) {
        synchronized (this.g) {
            try {
                Iterator it = this.l.iterator();
                while (it.hasNext()) {
                    if (((as3) it.next()).b(toVar)) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
