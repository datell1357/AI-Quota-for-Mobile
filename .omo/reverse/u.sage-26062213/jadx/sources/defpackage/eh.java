package defpackage;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.PersistableBundle;
import android.os.Trace;
import android.text.Editable;
import android.text.Selection;
import android.util.Base64;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import com.google.android.gms.common.ConnectionResult;
import com.google.api.client.http.HttpMethods;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.zip.Adler32;
import javax.net.ssl.HttpsURLConnection;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class eh implements i60, l8, k8, jp3, zj3, hc3 {
    public static volatile eh r;
    public static final Object s = new Object();
    public static final zi0 t = new zi0(0);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final yb f86u = new yb(1);
    public final /* synthetic */ int n;
    public Object o;
    public Object p;
    public Object q;

    public eh(byte[] bArr) {
        this.n = 24;
        MessageDigest messageDigestE = ph2.e();
        this.q = messageDigestE;
        this.o = new byte[64];
        this.p = new byte[64];
        int length = bArr.length;
        if (length > 64) {
            messageDigestE.update(bArr);
            bArr = messageDigestE.digest();
            length = bArr.length;
        }
        int i = 0;
        while (i < length) {
            ((byte[]) this.o)[i] = (byte) (54 ^ bArr[i]);
            ((byte[]) this.p)[i] = (byte) (92 ^ bArr[i]);
            i++;
        }
        while (i < 64) {
            ((byte[]) this.o)[i] = 54;
            ((byte[]) this.p)[i] = 92;
            i++;
        }
        ((MessageDigest) this.q).reset();
        ((MessageDigest) this.q).update((byte[]) this.o);
    }

    public static void D(q51 q51Var, String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        try {
            q51Var.b(str, "aqs.".concat(str2)).createNewFile();
        } catch (IOException e) {
            Log.w("FirebaseCrashlytics", "Failed to persist App Quality Sessions session id.", e);
        }
    }

    public static final void l() {
        String name = Thread.currentThread().getName();
        name.getClass();
        if (zs3.B0(name, "Firebase Background Thread #", false)) {
            return;
        }
        String str = "Must be called on a background thread, was called on " + Thread.currentThread().getName() + '.';
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", str, null);
        }
    }

    public static final void m() {
        String name = Thread.currentThread().getName();
        name.getClass();
        if (zs3.B0(name, "Firebase Blocking Thread #", false)) {
            return;
        }
        String str = "Must be called on a blocking thread, was called on " + Thread.currentThread().getName() + '.';
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", str, null);
        }
    }

    public static String o(String str, HashMap map) {
        StringBuilder sb = new StringBuilder();
        Iterator it = map.entrySet().iterator();
        Map.Entry entry = (Map.Entry) it.next();
        sb.append((String) entry.getKey());
        sb.append("=");
        sb.append(entry.getValue() != null ? URLEncoder.encode((String) entry.getValue(), "UTF-8") : "");
        while (it.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it.next();
            sb.append("&");
            sb.append((String) entry2.getKey());
            sb.append("=");
            sb.append(entry2.getValue() != null ? URLEncoder.encode((String) entry2.getValue(), "UTF-8") : "");
        }
        String string = sb.toString();
        if (string.isEmpty()) {
            return str;
        }
        if (str.contains("?")) {
            if (!str.endsWith("&")) {
                string = "&".concat(string);
            }
            return str.concat(string);
        }
        return str + "?" + string;
    }

    public static boolean p(Editable editable, KeyEvent keyEvent, boolean z) {
        a54[] a54VarArr;
        if (KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState())) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (selectionStart != -1 && selectionEnd != -1 && selectionStart == selectionEnd && (a54VarArr = (a54[]) editable.getSpans(selectionStart, selectionEnd, a54.class)) != null && a54VarArr.length > 0) {
                for (a54 a54Var : a54VarArr) {
                    int spanStart = editable.getSpanStart(a54Var);
                    int spanEnd = editable.getSpanEnd(a54Var);
                    if ((z && spanStart == selectionStart) || ((!z && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                        editable.delete(spanStart, spanEnd);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static eh w(Context context) {
        if (r == null) {
            synchronized (s) {
                try {
                    if (r == null) {
                        r = new eh(context, 0);
                    }
                } finally {
                }
            }
        }
        return r;
    }

    public boolean A(CharSequence charSequence, int i, int i2, z44 z44Var) {
        if ((z44Var.c & 3) == 0) {
            vo0 vo0Var = (vo0) this.q;
            xc2 xc2VarB = z44Var.b();
            int iB = xc2VarB.b(8);
            if (iB != 0) {
                ((ByteBuffer) xc2VarB.q).getShort(iB + xc2VarB.n);
            }
            vo0Var.getClass();
            ThreadLocal threadLocal = vo0.b;
            if (threadLocal.get() == null) {
                threadLocal.set(new StringBuilder());
            }
            StringBuilder sb = (StringBuilder) threadLocal.get();
            sb.setLength(0);
            while (i < i2) {
                sb.append(charSequence.charAt(i));
                i++;
            }
            boolean zHasGlyph = vo0Var.a.hasGlyph(sb.toString());
            int i3 = z44Var.c & 4;
            z44Var.c = zHasGlyph ? i3 | 2 : i3 | 1;
        }
        return (z44Var.c & 3) == 2;
    }

    public void B(String str, String str2) {
        ((HashMap) this.q).put(str, str2);
    }

    public boolean C() {
        return !(((wp3) ((wu4) this.o).o).isEmpty() && ((wp3) ((wu4) this.q).o).isEmpty() && ((wp3) ((wu4) this.p).o).isEmpty());
    }

    public Object E(CharSequence charSequence, int i, int i2, int i3, boolean z, sz0 sz0Var) {
        int i4;
        char c;
        tz0 tz0Var = new tz0((zc2) ((qd1) this.p).q);
        int iCodePointAt = Character.codePointAt(charSequence, i);
        int i5 = 0;
        boolean zB = true;
        int iCharCount = i;
        loop0: while (true) {
            i4 = iCharCount;
            while (iCharCount < i2 && i5 < i3 && zB) {
                SparseArray sparseArray = ((zc2) tz0Var.f).a;
                zc2 zc2Var = sparseArray == null ? null : (zc2) sparseArray.get(iCodePointAt);
                if (tz0Var.b == 2) {
                    if (zc2Var != null) {
                        tz0Var.f = zc2Var;
                        tz0Var.d++;
                    } else {
                        if (iCodePointAt == 65038) {
                            tz0Var.a();
                        } else if (iCodePointAt != 65039) {
                            zc2 zc2Var2 = (zc2) tz0Var.f;
                            if (zc2Var2.b != null) {
                                if (tz0Var.d != 1) {
                                    tz0Var.g = zc2Var2;
                                    tz0Var.a();
                                } else if (tz0Var.b()) {
                                    tz0Var.g = (zc2) tz0Var.f;
                                    tz0Var.a();
                                } else {
                                    tz0Var.a();
                                }
                                c = 3;
                            } else {
                                tz0Var.a();
                            }
                        }
                        c = 1;
                    }
                    c = 2;
                } else if (zc2Var == null) {
                    tz0Var.a();
                    c = 1;
                } else {
                    tz0Var.b = 2;
                    tz0Var.f = zc2Var;
                    tz0Var.d = 1;
                    c = 2;
                }
                tz0Var.c = iCodePointAt;
                if (c == 1) {
                    iCharCount = Character.charCount(Character.codePointAt(charSequence, i4)) + i4;
                    if (iCharCount < i2) {
                        iCodePointAt = Character.codePointAt(charSequence, iCharCount);
                    }
                } else if (c == 2) {
                    int iCharCount2 = Character.charCount(iCodePointAt) + iCharCount;
                    if (iCharCount2 < i2) {
                        iCodePointAt = Character.codePointAt(charSequence, iCharCount2);
                    }
                    iCharCount = iCharCount2;
                } else if (c == 3) {
                    if (z || !A(charSequence, i4, iCharCount, ((zc2) tz0Var.g).b)) {
                        zB = sz0Var.b(charSequence, i4, iCharCount, ((zc2) tz0Var.g).b);
                        i5++;
                    }
                }
            }
            break loop0;
        }
        if (tz0Var.b == 2 && ((zc2) tz0Var.f).b != null && ((tz0Var.d > 1 || tz0Var.b()) && i5 < i3 && zB && (z || !A(charSequence, i4, iCharCount, ((zc2) tz0Var.f).b)))) {
            sz0Var.b(charSequence, i4, iCharCount, ((zc2) tz0Var.f).b);
        }
        return sz0Var.getResult();
    }

    public void F(hp hpVar, int i, boolean z) {
        yo yoVar = (yo) this.p;
        Context context = (Context) this.q;
        ComponentName componentName = new ComponentName(context, (Class<?>) JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        Adler32 adler32 = new Adler32();
        adler32.update(context.getPackageName().getBytes(Charset.forName("UTF-8")));
        String str = hpVar.a;
        adler32.update(str.getBytes(Charset.forName("UTF-8")));
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        ry2 ry2Var = hpVar.c;
        adler32.update(byteBufferAllocate.putInt(sy2.a(ry2Var)).array());
        byte[] bArr = hpVar.b;
        if (bArr != null) {
            adler32.update(bArr);
        }
        int value = (int) adler32.getValue();
        if (!z) {
            Iterator<JobInfo> it = jobScheduler.getAllPendingJobs().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                JobInfo next = it.next();
                int i2 = next.getExtras().getInt("attemptNumber");
                if (next.getId() == value) {
                    if (i2 >= i) {
                        qj0.C(hpVar, "JobInfoScheduler", "Upload for context %s is already scheduled. Returning...");
                        return;
                    }
                }
            }
        }
        Cursor cursorRawQuery = ((ob3) this.o).b().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{str, String.valueOf(sy2.a(ry2Var))});
        try {
            Long lValueOf = cursorRawQuery.moveToNext() ? Long.valueOf(cursorRawQuery.getLong(0)) : 0L;
            cursorRawQuery.close();
            long jLongValue = lValueOf.longValue();
            JobInfo.Builder builder = new JobInfo.Builder(value, componentName);
            builder.setMinimumLatency(yoVar.a(ry2Var, jLongValue, i));
            Set set = ((zo) yoVar.b.get(ry2Var)).c;
            if (set.contains(xd3.n)) {
                builder.setRequiredNetworkType(2);
            } else {
                builder.setRequiredNetworkType(1);
            }
            if (set.contains(xd3.p)) {
                builder.setRequiresCharging(true);
            }
            if (set.contains(xd3.o)) {
                builder.setRequiresDeviceIdle(true);
            }
            PersistableBundle persistableBundle = new PersistableBundle();
            persistableBundle.putInt("attemptNumber", i);
            persistableBundle.putString("backendName", str);
            persistableBundle.putInt("priority", sy2.a(ry2Var));
            if (bArr != null) {
                persistableBundle.putString("extras", Base64.encodeToString(bArr, 0));
            }
            builder.setExtras(persistableBundle);
            Object[] objArr = {hpVar, Integer.valueOf(value), Long.valueOf(yoVar.a(ry2Var, jLongValue, i)), lValueOf, Integer.valueOf(i)};
            String strM = qj0.M("JobInfoScheduler");
            if (Log.isLoggable(strM, 3)) {
                Log.d(strM, String.format("Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", objArr));
            }
            jobScheduler.schedule(builder.build());
        } catch (Throwable th) {
            cursorRawQuery.close();
            throw th;
        }
    }

    public void G(String str) {
        if (str != null) {
            this.o = str;
        } else {
            q73.r("Null backendName");
        }
    }

    public void H(v20 v20Var) {
        ((x20) this.q).n.c = v20Var;
    }

    public void I(as0 as0Var) {
        ((x20) this.q).n.a = as0Var;
    }

    public void J(hy1 hy1Var) {
        ((x20) this.q).n.b = hy1Var;
    }

    public void K(long j) {
        ((x20) this.q).n.d = j;
    }

    public void L() {
        kg2 kg2Var = (kg2) this.o;
        String str = (String) this.p;
        List list = (List) kg2Var.k(str);
        if (list != null) {
            list.remove((ne1) this.q);
        }
        if (list == null || list.isEmpty()) {
            return;
        }
        kg2Var.m(str, list);
    }

    public void M(byte[] bArr) {
        ((MessageDigest) this.q).update(bArr);
    }

    @Override // defpackage.zj3
    public void a(String str) {
        ((qp3) this.o).a(str);
        kf4 kf4Var = (kf4) this.p;
        if (kf4Var.a()) {
            kf4Var.d((str + "\r\n").getBytes((String) this.q));
        }
    }

    @Override // defpackage.zj3
    public qz0 b() {
        return ((qp3) this.o).s;
    }

    @Override // defpackage.i60
    public t92 c(long j) {
        return ((iu) this.q).a((ym1) this.o);
    }

    @Override // defpackage.zj3
    public void e(b40 b40Var) {
        ((qp3) this.o).e(b40Var);
        kf4 kf4Var = (kf4) this.p;
        if (kf4Var.a()) {
            kf4Var.d(new String(b40Var.n, 0, b40Var.o).concat("\r\n").getBytes((String) this.q));
        }
    }

    @Override // defpackage.jp3
    public kn3 f() {
        return (c23) this.q;
    }

    @Override // defpackage.zj3
    public void flush() {
        ((qp3) this.o).flush();
    }

    @Override // defpackage.jp3
    public yp3 g() {
        return (d23) this.p;
    }

    @Override // defpackage.l8
    public void h(String str, Bundle bundle) {
        CountDownLatch countDownLatch = (CountDownLatch) this.q;
        if (countDownLatch != null && "_ae".equals(str)) {
            countDownLatch.countDown();
        }
    }

    public void i(xy1 xy1Var, yt1 yt1Var) {
        wu4 wu4Var = (wu4) this.o;
        wu4 wu4Var2 = (wu4) this.p;
        wu4 wu4Var3 = (wu4) this.q;
        int iOrdinal = yt1Var.ordinal();
        if (iOrdinal == 0) {
            wu4Var.f(xy1Var);
            wu4Var3.f(xy1Var);
            return;
        }
        if (iOrdinal == 1) {
            wu4Var2.f(xy1Var);
            wu4Var3.f(xy1Var);
            return;
        }
        if (iOrdinal == 2) {
            if (xy1Var.f415u != null) {
                wu4Var3.f(xy1Var);
                return;
            } else {
                wu4Var.f(xy1Var);
                return;
            }
        }
        if (iOrdinal != 3) {
            p61.x();
        } else if (xy1Var.f415u != null) {
            wu4Var3.f(xy1Var);
        } else {
            wu4Var2.f(xy1Var);
        }
    }

    @Override // defpackage.k8
    public void j(Bundle bundle) {
        synchronized (this.p) {
            try {
                w13 w13Var = w13.H;
                w13Var.m("Logging event _ae to Firebase Analytics with params " + bundle);
                this.q = new CountDownLatch(1);
                ((dh1) this.o).j(bundle);
                w13Var.m("Awaiting app exception callback from Analytics...");
                try {
                    if (((CountDownLatch) this.q).await(500L, TimeUnit.MILLISECONDS)) {
                        w13Var.m("App exception callback received from Analytics listener.");
                    } else {
                        w13Var.n("Timeout exceeded while awaiting app exception callback from Analytics listener.", null);
                    }
                } catch (InterruptedException unused) {
                    Log.e("FirebaseCrashlytics", "Interrupted while awaiting app exception callback from Analytics listener.", null);
                }
                this.q = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public hp k() {
        String strConcat = ((String) this.o) == null ? " backendName" : "";
        if (((ry2) this.q) == null) {
            strConcat = strConcat.concat(" priority");
        }
        if (strConcat.isEmpty()) {
            return new hp((String) this.o, (byte[]) this.p, (ry2) this.q);
        }
        k21.n("Missing required properties:".concat(strConcat));
        return null;
    }

    public boolean n(xy1 xy1Var) {
        return !(xy1Var.f415u == null) && (((wp3) ((wu4) this.o).o).contains(xy1Var) || ((wp3) ((wu4) this.p).o).contains(xy1Var));
    }

    public void q(Bundle bundle) {
        HashSet hashSet = (HashSet) this.p;
        String string = ((Context) this.q).getString(R.string.androidx_startup);
        if (bundle != null) {
            try {
                HashSet hashSet2 = new HashSet();
                for (String str : bundle.keySet()) {
                    if (string.equals(bundle.getString(str, null))) {
                        Class<?> cls = Class.forName(str);
                        if (uq1.class.isAssignableFrom(cls)) {
                            hashSet.add(cls);
                        }
                    }
                }
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    r((Class) it.next(), hashSet2);
                }
            } catch (ClassNotFoundException e) {
                throw new v00(e, 9);
            }
        }
    }

    public Object r(Class cls, HashSet hashSet) {
        Object objB;
        HashMap map = (HashMap) this.o;
        if (ix.B()) {
            try {
                Trace.beginSection(ix.Y(cls.getSimpleName()));
            } finally {
                Trace.endSection();
            }
        }
        if (hashSet.contains(cls)) {
            throw new IllegalStateException("Cannot initialize " + cls.getName() + ". Cycle detected.");
        }
        if (map.containsKey(cls)) {
            objB = map.get(cls);
        } else {
            hashSet.add(cls);
            try {
                uq1 uq1Var = (uq1) cls.getDeclaredConstructor(null).newInstance(null);
                List<Class> listA = uq1Var.a();
                if (!listA.isEmpty()) {
                    for (Class cls2 : listA) {
                        if (!map.containsKey(cls2)) {
                            r(cls2, hashSet);
                        }
                    }
                }
                objB = uq1Var.b((Context) this.q);
                hashSet.remove(cls);
                map.put(cls, objB);
            } catch (Throwable th) {
                throw new v00(th, 9);
            }
        }
        return objB;
    }

    public void s(m60 m60Var, ByteArrayOutputStream byteArrayOutputStream) {
        HashMap map = (HashMap) this.o;
        b03 b03Var = new b03(byteArrayOutputStream, map, (HashMap) this.p, (pn2) this.q);
        pn2 pn2Var = (pn2) map.get(m60.class);
        if (pn2Var != null) {
            pn2Var.a(m60Var, b03Var);
        } else {
            throw new p01("No encoder for " + m60.class);
        }
    }

    public d90 t() throws Throwable {
        HttpsURLConnection httpsURLConnection;
        m();
        InputStream inputStream = null;
        String string = null;
        inputStream = null;
        try {
            String strO = o((String) this.p, (HashMap) this.o);
            String strConcat = "GET Request URL: ".concat(strO);
            if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                Log.v("FirebaseCrashlytics", strConcat, null);
            }
            httpsURLConnection = (HttpsURLConnection) new URL(strO).openConnection();
            try {
                httpsURLConnection.setReadTimeout(10000);
                httpsURLConnection.setConnectTimeout(10000);
                httpsURLConnection.setRequestMethod(HttpMethods.GET);
                for (Map.Entry entry : ((HashMap) this.q).entrySet()) {
                    httpsURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
                httpsURLConnection.connect();
                int responseCode = httpsURLConnection.getResponseCode();
                InputStream inputStream2 = httpsURLConnection.getInputStream();
                if (inputStream2 != null) {
                    try {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream2, "UTF-8"));
                        char[] cArr = new char[8192];
                        StringBuilder sb = new StringBuilder();
                        while (true) {
                            int i = bufferedReader.read(cArr);
                            if (i == -1) {
                                break;
                            }
                            sb.append(cArr, 0, i);
                        }
                        string = sb.toString();
                    } catch (Throwable th) {
                        th = th;
                        inputStream = inputStream2;
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (httpsURLConnection != null) {
                            httpsURLConnection.disconnect();
                        }
                        throw th;
                    }
                }
                if (inputStream2 != null) {
                    inputStream2.close();
                }
                httpsURLConnection.disconnect();
                return new d90(responseCode, string);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            httpsURLConnection = null;
        }
    }

    public String toString() {
        switch (this.n) {
            case ConnectionResult.API_DISABLED /* 23 */:
                StringBuilder sb = new StringBuilder(32);
                sb.append((String) this.o);
                sb.append('{');
                eh ehVar = (eh) ((eh) this.p).q;
                String str = "";
                while (ehVar != null) {
                    Object obj = ehVar.p;
                    sb.append(str);
                    String str2 = (String) ehVar.o;
                    if (str2 != null) {
                        sb.append(str2);
                        sb.append('=');
                    }
                    if (obj == null || !obj.getClass().isArray()) {
                        sb.append(obj);
                    } else {
                        String strDeepToString = Arrays.deepToString(new Object[]{obj});
                        sb.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
                    }
                    ehVar = (eh) ehVar.q;
                    str = ", ";
                }
                sb.append('}');
                return sb.toString();
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
            default:
                return super.toString();
            case 25:
                String str3 = (String) this.q;
                String str4 = (String) this.p;
                StringBuilder sb2 = new StringBuilder("NavDeepLinkRequest{");
                Uri uri = (Uri) this.o;
                if (uri != null) {
                    sb2.append(" uri=");
                    sb2.append(String.valueOf(uri));
                }
                if (str4 != null) {
                    sb2.append(" action=");
                    sb2.append(str4);
                }
                if (str3 != null) {
                    sb2.append(" mimetype=");
                    sb2.append(str3);
                }
                sb2.append(" }");
                return sb2.toString();
        }
    }

    public v20 u() {
        return ((x20) this.q).n.c;
    }

    public as0 v() {
        return ((x20) this.q).n.a;
    }

    @Override // defpackage.zj3
    public void write(byte[] bArr, int i, int i2) {
        ((qp3) this.o).write(bArr, i, i2);
        kf4 kf4Var = (kf4) this.p;
        if (kf4Var.a()) {
            w80.L(bArr, "Output");
            kf4Var.e(">> ", new ByteArrayInputStream(bArr, i, i2));
        }
    }

    public hy1 x() {
        return ((x20) this.q).n.b;
    }

    public byte[] y() {
        MessageDigest messageDigest = (MessageDigest) this.q;
        byte[] bArrDigest = messageDigest.digest();
        messageDigest.update((byte[]) this.p);
        return messageDigest.digest(bArrDigest);
    }

    public long z() {
        return ((x20) this.q).n.d;
    }

    @Override // defpackage.i60
    public void d() {
    }

    @Override // defpackage.zj3
    public void write(int i) {
        ((qp3) this.o).write(i);
        kf4 kf4Var = (kf4) this.p;
        if (kf4Var.a()) {
            kf4Var.d(new byte[]{(byte) i});
        }
    }

    public /* synthetic */ eh(Object obj, Object obj2, Object obj3, int i) {
        this.n = i;
        this.q = obj;
        this.o = obj2;
        this.p = obj3;
    }

    public /* synthetic */ eh(Object obj, Object obj2, Object obj3, int i, boolean z) {
        this.n = i;
        this.o = obj;
        this.p = obj2;
        this.q = obj3;
    }

    public eh(d33 d33Var) {
        this.n = 26;
        this.o = new lj(0);
        this.p = new rp(0);
        this.q = new h4(23, this, d33Var);
    }

    public eh(ExecutorService executorService, ExecutorService executorService2) {
        this.n = 2;
        executorService.getClass();
        executorService2.getClass();
        this.o = new qk0(executorService);
        this.p = new qk0(executorService);
        mt1.t(null);
        this.q = new qk0(executorService2);
    }

    public eh(int i) {
        this.n = i;
        switch (i) {
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                this.o = new wu4(24);
                this.p = new wu4(24);
                this.q = new wu4(24);
                break;
            case 27:
                long[] jArr = td3.a;
                this.o = new kg2();
                break;
            default:
                this.q = new pr3(3);
                break;
        }
    }

    public eh(qd1 qd1Var) {
        this.n = 7;
        this.o = qd1Var;
        iq0 iq0Var = (iq0) qd1Var.q;
        iq0Var.getClass();
        this.p = new d23(iq0Var);
        hq0 hq0Var = (hq0) qd1Var.r;
        hq0Var.getClass();
        this.q = new c23(hq0Var);
    }

    public eh(String str, HashMap map) {
        this.n = 15;
        this.p = str;
        this.o = map;
        this.q = new HashMap();
    }

    public eh(dh1 dh1Var) {
        this.n = 6;
        this.p = new Object();
        this.o = dh1Var;
    }

    public eh(q51 q51Var) {
        this.n = 1;
        this.p = null;
        this.q = null;
        this.o = q51Var;
    }

    public eh(qp3 qp3Var, kf4 kf4Var, String str) {
        this.n = 19;
        this.o = qp3Var;
        this.p = kf4Var;
        this.q = str == null ? uf0.b.name() : str;
    }

    public eh(x20 x20Var) {
        this.n = 8;
        this.q = x20Var;
        this.o = new dh1(this);
    }

    public eh(Context context, int i) {
        this.n = i;
        switch (i) {
            case 16:
                this.q = context.getApplicationContext();
                this.o = ho1.o;
                this.p = new g41();
                break;
            default:
                this.q = context.getApplicationContext();
                this.p = new HashSet();
                this.o = new HashMap();
                break;
        }
    }

    public eh(qd1 qd1Var, qv3 qv3Var, vo0 vo0Var, Set set) {
        this.n = 12;
        this.o = qv3Var;
        this.p = qd1Var;
        this.q = vo0Var;
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            int[] iArr = (int[]) it.next();
            String str = new String(iArr, 0, iArr.length);
            E(str, 0, str.length(), 1, true, new sg0(str, 1));
        }
    }

    public eh(String str) {
        this.n = 23;
        eh ehVar = new eh(22, false);
        this.p = ehVar;
        this.q = ehVar;
        this.o = str;
    }

    public /* synthetic */ eh(int i, boolean z) {
        this.n = i;
    }
}
