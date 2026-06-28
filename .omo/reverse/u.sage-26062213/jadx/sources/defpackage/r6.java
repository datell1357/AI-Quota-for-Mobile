package defpackage;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.api.client.http.HttpMethods;
import com.google.api.client.http.HttpStatusCodes;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import u.sage.MainActivity;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r6 implements f6, xo2, wt3, on2, xq0, aa0, eh0, tq3, jp2, mv3, lu3 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;

    public /* synthetic */ r6(int i, Object obj) {
        this.n = i;
        this.o = obj;
    }

    @Override // defpackage.xq0
    public void a(n03 n03Var) {
        int i = this.n;
        Object obj = this.o;
        switch (i) {
            case 6:
                jj0 jj0Var = (jj0) obj;
                if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                    Log.d("FirebaseCrashlytics", "Crashlytics native component now available.", null);
                }
                jj0Var.b.set((jj0) n03Var.get());
                break;
            default:
                kj0 kj0Var = (kj0) obj;
                qd1 qd1Var = ((s53) ((w61) n03Var.get())).a().j;
                ((Set) qd1Var.r).add(kj0Var);
                ow3 ow3VarB = ((yc0) qd1Var.o).b();
                ow3VarB.c((Executor) qd1Var.q, new gd0(qd1Var, ow3VarB, kj0Var, 5));
                if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                    Log.d("FirebaseCrashlytics", "Registering RemoteConfig Rollouts subscriber", null);
                }
                break;
        }
    }

    @Override // defpackage.mv3
    public Object b() {
        int i = this.n;
        Object obj = this.o;
        switch (i) {
            case 17:
                ob3 ob3Var = (ob3) ((ed0) obj).i;
                SQLiteDatabase sQLiteDatabaseB = ob3Var.b();
                sQLiteDatabaseB.beginTransaction();
                try {
                    sQLiteDatabaseB.compileStatement("DELETE FROM log_event_dropped").execute();
                    sQLiteDatabaseB.compileStatement("UPDATE global_log_event_state SET last_metrics_upload_ms=" + ob3Var.o.i()).execute();
                    sQLiteDatabaseB.setTransactionSuccessful();
                    return null;
                } finally {
                    sQLiteDatabaseB.endTransaction();
                }
            default:
                qd1 qd1Var = (qd1) obj;
                Iterator it = ((Iterable) ((ob3) qd1Var.p).r(new q73(4))).iterator();
                while (it.hasNext()) {
                    ((eh) qd1Var.q).F((hp) it.next(), 1, false);
                }
                return null;
        }
    }

    @Override // defpackage.tq3
    public boolean c() {
        return ((MainActivity) this.o).t.getValue() == null;
    }

    @Override // defpackage.on2
    public Object d() {
        int i = this.n;
        Object obj = this.o;
        switch (i) {
            case 4:
                Constructor constructor = (Constructor) obj;
                try {
                    return constructor.newInstance(null);
                } catch (IllegalAccessException e) {
                    nt1 nt1Var = c43.a;
                    k21.i("Unexpected IllegalAccessException occurred (Gson 2.14.0). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e);
                    return null;
                } catch (InstantiationException e2) {
                    throw new RuntimeException("Failed to invoke constructor '" + c43.b(constructor) + "' with no args", e2);
                } catch (InvocationTargetException e3) {
                    k21.i("Failed to invoke constructor '" + c43.b(constructor) + "' with no args", e3.getCause());
                    return null;
                }
            default:
                Class cls = (Class) obj;
                try {
                    return h74.a.a(cls);
                } catch (Exception e4) {
                    throw new RuntimeException("Unable to create instance of " + cls + ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem.", e4);
                }
        }
    }

    public h30 e(eh ehVar) throws IOException {
        i30 i30Var = (i30) this.o;
        URL url = (URL) ehVar.o;
        String strM = qj0.M("CctTransportBackend");
        if (Log.isLoggable(strM, 4)) {
            Log.i(strM, String.format("Making request to: %s", url));
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(i30Var.g);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod(HttpMethods.POST);
        httpURLConnection.setRequestProperty("User-Agent", "datatransport/3.3.0 android/");
        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
        String str = (String) ehVar.q;
        if (str != null) {
            httpURLConnection.setRequestProperty("X-Goog-Api-Key", str);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                try {
                    dd1 dd1Var = i30Var.a;
                    jm jmVar = (jm) ehVar.p;
                    BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(gZIPOutputStream));
                    tv1 tv1Var = (tv1) dd1Var.o;
                    ax1 ax1Var = new ax1(bufferedWriter, tv1Var.a, tv1Var.b, tv1Var.c, tv1Var.d);
                    ax1Var.h(jmVar);
                    ax1Var.j();
                    ax1Var.b.flush();
                    gZIPOutputStream.close();
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    int responseCode = httpURLConnection.getResponseCode();
                    Integer numValueOf = Integer.valueOf(responseCode);
                    String strM2 = qj0.M("CctTransportBackend");
                    if (Log.isLoggable(strM2, 4)) {
                        Log.i(strM2, String.format("Status Code: %d", numValueOf));
                    }
                    qj0.C(httpURLConnection.getHeaderField("Content-Type"), "CctTransportBackend", "Content-Type: %s");
                    qj0.C(httpURLConnection.getHeaderField("Content-Encoding"), "CctTransportBackend", "Content-Encoding: %s");
                    if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                        return new h30(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
                    }
                    if (responseCode != 200) {
                        return new h30(responseCode, null, 0L);
                    }
                    InputStream inputStream = httpURLConnection.getInputStream();
                    try {
                        InputStream gZIPInputStream = "gzip".equals(httpURLConnection.getHeaderField("Content-Encoding")) ? new GZIPInputStream(inputStream) : inputStream;
                        try {
                            h30 h30Var = new h30(responseCode, null, po.a(new BufferedReader(new InputStreamReader(gZIPInputStream))).a);
                            if (gZIPInputStream != null) {
                                gZIPInputStream.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            return h30Var;
                        } finally {
                        }
                    } finally {
                    }
                } finally {
                }
            } finally {
            }
        } catch (ConnectException e) {
            e = e;
            qj0.E("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new h30(500, null, 0L);
        } catch (UnknownHostException e2) {
            e = e2;
            qj0.E("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new h30(500, null, 0L);
        } catch (IOException e3) {
            e = e3;
            qj0.E("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new h30(HttpStatusCodes.STATUS_CODE_BAD_REQUEST, null, 0L);
        } catch (p01 e4) {
            e = e4;
            qj0.E("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new h30(HttpStatusCodes.STATUS_CODE_BAD_REQUEST, null, 0L);
        }
    }

    @Override // defpackage.f6
    public void f(Object obj) {
        ((pe1) ((pg2) this.o).getValue()).k(obj);
    }

    public void g() {
        df1 df1Var = (df1) this.o;
        synchronized (wo3.c) {
            List list = wo3.h;
            list.getClass();
            ArrayList arrayList = new ArrayList(p70.a0(list, 10));
            boolean z = false;
            for (Object obj : list) {
                boolean z2 = true;
                if (!z && nt1.g(obj, df1Var)) {
                    z = true;
                    z2 = false;
                }
                if (z2) {
                    arrayList.add(obj);
                }
            }
            wo3.h = arrayList;
        }
    }

    @Override // defpackage.jp2
    public void h(Object obj) {
        int i = this.n;
        h92 h92Var = (h92) this.o;
        switch (i) {
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                int i2 = MainActivity.C;
                h92Var.k(obj);
                break;
            default:
                int i3 = MainActivity.C;
                h92Var.k(obj);
                break;
        }
    }

    public Iterator i(lq1 lq1Var, CharSequence charSequence) {
        return new vq3(lq1Var, charSequence, (g40) this.o);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(43:0|2|(1:4)(1:6)|5|7|(1:9)|(1:11)(1:12)|13|(38:17|33|(1:35)|36|(1:38)|39|(3:41|(2:43|163)(1:164)|44)|162|45|153|46|(1:48)(1:50)|49|51|(1:53)|54|55|(1:57)|58|(1:60)|(1:62)(1:63)|64|(4:67|(2:69|166)(1:167)|70|65)|165|71|(1:73)|168|74|(1:76)(1:77)|78|(1:80)(1:81)|82|(5:87|(1:89)|90|3fb|94)(1:86)|95|(13:106|102|107|(2:109|(1:111))(2:112|(2:139|140))|114|155|115|159|116|117|118|(3:133|(1:135)|136)(3:126|(1:128)|129)|138)(13:99|(1:101)(2:103|(1:105)(0))|102|107|(0)(0)|114|155|115|159|116|117|118|(6:120|122|133|(0)|136|138)(0))|146|(2:148|(1:150))|151)(3:18|(3:22|30|(1:32))(4:23|(2:26|24)|161|27)|28)|29|36|(0)|39|(0)|162|45|153|46|(0)(0)|49|51|(0)|54|55|(0)|58|(0)|(0)(0)|64|(1:65)|165|71|(0)|168|74|(0)(0)|78|(0)(0)|82|(5:84|87|(0)|90|3fb)(0)|146|(0)|151) */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x063a, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x063b, code lost:
    
        r6 = "FirebaseCrashlytics";
        android.util.Log.e(r6, "Error retrieving app package info.", r0);
        r15 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x044f  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x045b  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x046b  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x05be  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x05c7  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x064e  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x03fc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0239 A[Catch: NameNotFoundException -> 0x063a, TryCatch #0 {NameNotFoundException -> 0x063a, blocks: (B:46:0x0222, B:48:0x0239, B:51:0x024b, B:54:0x0251, B:50:0x0244), top: B:153:0x0222 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0244 A[Catch: NameNotFoundException -> 0x063a, TryCatch #0 {NameNotFoundException -> 0x063a, blocks: (B:46:0x0222, B:48:0x0239, B:51:0x024b, B:54:0x0251, B:50:0x0244), top: B:153:0x0222 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x02ec  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0336 A[LOOP:3: B:72:0x0334->B:73:0x0336, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x034c  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0357  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x035e  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0361  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x03de  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x03e5  */
    @Override // defpackage.aa0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object j(defpackage.hg r55) {
        /*
            Method dump skipped, instruction units count: 1645
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.r6.j(hg):java.lang.Object");
    }

    @Override // defpackage.xo2
    public void onComplete(ow3 ow3Var) {
        xr xrVar = (xr) this.o;
        ow3Var.getClass();
        ra3 ra3Var = ez3.a;
        ow3Var.j();
        ra3Var.getClass();
        ra3.h(new Object[0]);
        zp0 zp0Var = zu0.a;
        ca.y(dm0.c(lp0.p), null, null, new sr(xrVar, null, 1), 3);
    }

    @Override // defpackage.lu3
    public mu3 p(pv1 pv1Var) {
        Context context = (Context) this.o;
        String str = pv1Var.b;
        d90 d90Var = (d90) pv1Var.f;
        d90Var.getClass();
        if (str != null && str.length() != 0) {
            return new je1(context, str, d90Var, true, true);
        }
        k21.f("Must set a non-null database name to a configuration that uses the no backup directory.");
        return null;
    }

    @Override // defpackage.eh0
    public Object then(ow3 ow3Var) {
        int i = this.n;
        Object obj = this.o;
        switch (i) {
            case 8:
                return (ow3) ((Callable) obj).call();
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                ((Runnable) obj).run();
                return mt1.t(null);
            default:
                ((CountDownLatch) obj).countDown();
                return null;
        }
    }

    @Override // defpackage.wt3
    public ow3 then(Object obj) {
        return mt1.t((dd0) this.o);
    }
}
