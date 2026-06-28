package defpackage;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.NavigableSet;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicMarkableReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dj0 {
    public static final zi0 r = new zi0(1);
    public static final Charset s = Charset.forName("UTF-8");
    public final Context a;
    public final bm0 b;
    public final gw4 c;
    public final q51 d;
    public final eh e;
    public final sn1 f;
    public final q51 g;
    public final dh h;
    public final gw4 i;
    public final jj0 j;
    public final k8 k;
    public final aj0 l;
    public final ga0 m;
    public pk0 n;
    public final pw3 o = new pw3();
    public final pw3 p = new pw3();
    public final pw3 q = new pw3();

    public dj0(Context context, sn1 sn1Var, bm0 bm0Var, q51 q51Var, gw4 gw4Var, dh dhVar, q51 q51Var2, gw4 gw4Var2, ga0 ga0Var, jj0 jj0Var, k8 k8Var, aj0 aj0Var, eh ehVar) {
        new AtomicBoolean(false);
        this.a = context;
        this.f = sn1Var;
        this.b = bm0Var;
        this.g = q51Var;
        this.c = gw4Var;
        this.h = dhVar;
        this.d = q51Var2;
        this.i = gw4Var2;
        this.j = jj0Var;
        this.k = k8Var;
        this.l = aj0Var;
        this.m = ga0Var;
        this.e = ehVar;
    }

    public static ef5 a(dj0 dj0Var) {
        ef5 ef5VarM;
        dj0Var.getClass();
        ArrayList arrayList = new ArrayList();
        for (File file : q51.e(((File) dj0Var.g.c).listFiles(r))) {
            try {
                long j = Long.parseLong(file.getName().substring(3));
                try {
                    Class.forName("com.google.firebase.crash.FirebaseCrash");
                    Log.w("FirebaseCrashlytics", "Skipping logging Crashlytics event to Firebase, FirebaseCrash exists", null);
                    ef5VarM = mt1.t(null);
                } catch (ClassNotFoundException unused) {
                    if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                        Log.d("FirebaseCrashlytics", "Logging app exception event to Firebase Analytics", null);
                    }
                    ef5VarM = mt1.m(new ScheduledThreadPoolExecutor(1), new cj0(dj0Var, j));
                }
                arrayList.add(ef5VarM);
            } catch (NumberFormatException unused2) {
                Log.w("FirebaseCrashlytics", "Could not parse app exception timestamp from file " + file.getName(), null);
            }
            file.delete();
        }
        return mt1.Y(arrayList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0585  */
    /* JADX WARN: Type inference failed for: r0v6, types: [aj0] */
    /* JADX WARN: Type inference failed for: r10v18 */
    /* JADX WARN: Type inference failed for: r10v19, types: [int] */
    /* JADX WARN: Type inference failed for: r10v30 */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.String, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r11v23 */
    /* JADX WARN: Type inference failed for: r11v24 */
    /* JADX WARN: Type inference failed for: r11v32 */
    /* JADX WARN: Type inference failed for: r11v33 */
    /* JADX WARN: Type inference failed for: r11v34 */
    /* JADX WARN: Type inference failed for: r11v35 */
    /* JADX WARN: Type inference failed for: r33v0, types: [boolean] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(boolean r33, defpackage.ed0 r34, boolean r35) {
        /*
            Method dump skipped, instruction units count: 1875
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dj0.b(boolean, ed0, boolean):void");
    }

    public final void c(String str, Boolean bool) {
        String str2;
        String str3;
        String str4;
        String str5;
        int i;
        Integer num;
        Map mapUnmodifiableMap;
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        String strU = di0.u("Opening a new session with ID ", str);
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", strU, null);
        }
        Locale locale = Locale.US;
        sn1 sn1Var = this.f;
        dh dhVar = this.h;
        cp cpVar = new cp(sn1Var.c, (String) dhVar.e, (String) dhVar.f, sn1Var.c().a, di0.j(((String) dhVar.c) != null ? 4 : 1), (gw4) dhVar.h);
        String str6 = Build.VERSION.RELEASE;
        String str7 = Build.VERSION.CODENAME;
        ep epVar = new ep(w80.C());
        Context context = this.a;
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        long blockCount = ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
        v80 v80Var = v80.n;
        String str8 = Build.CPU_ABI;
        if (!TextUtils.isEmpty(str8)) {
            v80 v80Var2 = (v80) v80.o.get(str8.toLowerCase(locale));
            if (v80Var2 != null) {
                v80Var = v80Var2;
            }
        } else if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            Log.v("FirebaseCrashlytics", "Architecture#getValue()::Build.CPU_ABI returned null or empty", null);
        }
        int iOrdinal = v80Var.ordinal();
        String str9 = Build.MODEL;
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        long jK = w80.k(context);
        boolean zB = w80.B();
        int iW = w80.w();
        String str10 = Build.MANUFACTURER;
        String str11 = Build.PRODUCT;
        this.j.d(str, jCurrentTimeMillis, new bp(cpVar, epVar, new dp(iOrdinal, iAvailableProcessors, jK, blockCount, zB, iW)));
        if (!bool.booleanValue() || str == null) {
            str2 = str7;
            str3 = str10;
            str4 = str11;
            str5 = str9;
            i = 4;
        } else {
            q51 q51Var = this.d;
            synchronized (q51Var.a) {
                q51Var.a = str;
                tx1 tx1Var = (tx1) ((AtomicMarkableReference) ((mu0) q51Var.d).b).getReference();
                synchronized (tx1Var) {
                    mapUnmodifiableMap = Collections.unmodifiableMap(new HashMap(tx1Var.a));
                }
                str3 = str10;
                str5 = str9;
                str2 = str7;
                str4 = str11;
                i = 4;
                ((qk0) ((eh) q51Var.c).p).a(new yp0(q51Var, str, mapUnmodifiableMap, ((aa3) q51Var.f).a(), 2));
            }
        }
        gw4 gw4Var = this.i;
        ((h51) gw4Var.p).a();
        gw4Var.p = gw4.r;
        if (str != null) {
            gw4Var.p = new e13(((q51) gw4Var.o).b(str, "userlog"));
        }
        this.l.a(str);
        ga0 ga0Var = this.m;
        lk0 lk0Var = (lk0) ga0Var.a;
        Charset charset = kk0.a;
        nm nmVar = new nm();
        nmVar.a = "20.0.6";
        dh dhVar2 = lk0Var.c;
        String str12 = (String) dhVar2.a;
        if (str12 == null) {
            q73.r("Null gmpAppId");
            return;
        }
        nmVar.b = str12;
        sn1 sn1Var2 = lk0Var.b;
        String str13 = sn1Var2.c().a;
        if (str13 == null) {
            q73.r("Null installationUuid");
            return;
        }
        nmVar.d = str13;
        nmVar.e = sn1Var2.c().b;
        nmVar.f = sn1Var2.c().c;
        String str14 = (String) dhVar2.e;
        if (str14 == null) {
            q73.r("Null buildVersion");
            return;
        }
        nmVar.h = str14;
        String str15 = (String) dhVar2.f;
        if (str15 == null) {
            q73.r("Null displayVersion");
            return;
        }
        nmVar.i = str15;
        nmVar.c = i;
        nmVar.m = (byte) (nmVar.m | 1);
        wm wmVar = new wm();
        wmVar.f = false;
        byte b = (byte) (wmVar.m | 2);
        wmVar.d = jCurrentTimeMillis;
        wmVar.m = (byte) (b | 1);
        if (str == null) {
            q73.r("Null identifier");
            return;
        }
        wmVar.b = str;
        String str16 = lk0.g;
        if (str16 == null) {
            q73.r("Null generator");
            return;
        }
        wmVar.a = str16;
        String str17 = sn1Var2.c;
        if (str17 == null) {
            q73.r("Null identifier");
            return;
        }
        String str18 = sn1Var2.c().a;
        gw4 gw4Var2 = (gw4) dhVar2.h;
        if (((gw4) gw4Var2.p) == null) {
            gw4Var2.p = new gw4(gw4Var2);
        }
        gw4 gw4Var3 = (gw4) gw4Var2.p;
        String str19 = (String) gw4Var3.o;
        if (gw4Var3 == null) {
            gw4Var2.p = new gw4(gw4Var2);
        }
        wmVar.g = new ym(str17, str14, str15, str18, str19, (String) ((gw4) gw4Var2.p).p);
        vn vnVar = new vn();
        vnVar.a = 3;
        vnVar.e = (byte) (vnVar.e | 1);
        if (str6 == null) {
            q73.r("Null version");
            return;
        }
        vnVar.b = str6;
        if (str2 == null) {
            q73.r("Null buildVersion");
            return;
        }
        vnVar.c = str2;
        vnVar.d = w80.C();
        vnVar.e = (byte) (vnVar.e | 2);
        wmVar.i = vnVar.a();
        StatFs statFs2 = new StatFs(Environment.getDataDirectory().getPath());
        int iIntValue = 7;
        if (!TextUtils.isEmpty(str8) && (num = (Integer) lk0.f.get(str8.toLowerCase(locale))) != null) {
            iIntValue = num.intValue();
        }
        int iAvailableProcessors2 = Runtime.getRuntime().availableProcessors();
        long jK2 = w80.k(lk0Var.a);
        long blockCount2 = ((long) statFs2.getBlockCount()) * ((long) statFs2.getBlockSize());
        boolean zB2 = w80.B();
        int iW2 = w80.w();
        an anVar = new an();
        anVar.a = iIntValue;
        byte b2 = (byte) (anVar.j | 1);
        anVar.j = b2;
        if (str5 == null) {
            q73.r("Null model");
            return;
        }
        anVar.b = str5;
        anVar.c = iAvailableProcessors2;
        anVar.d = jK2;
        anVar.e = blockCount2;
        anVar.f = zB2;
        anVar.g = iW2;
        anVar.j = (byte) (((byte) (((byte) (((byte) (((byte) (b2 | 2)) | 4)) | 8)) | 16)) | 32);
        String str20 = str3;
        if (str20 == null) {
            q73.r("Null manufacturer");
            return;
        }
        anVar.h = str20;
        String str21 = str4;
        if (str21 == null) {
            q73.r("Null modelClass");
            return;
        }
        anVar.i = str21;
        wmVar.j = anVar.a();
        wmVar.l = 3;
        wmVar.m = (byte) (wmVar.m | 4);
        nmVar.j = wmVar.a();
        om omVarA = nmVar.a();
        q51 q51Var2 = ((ok0) ga0Var.b).b;
        jk0 jk0Var = omVarA.k;
        if (jk0Var == null) {
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", "Could not get session for report", null);
                return;
            }
            return;
        }
        String str22 = ((xm) jk0Var).b;
        try {
            ok0.g.getClass();
            ok0.f(q51Var2.b(str22, "report"), nk0.a.i(omVarA));
            File fileB = q51Var2.b(str22, "start-time");
            long j = ((xm) jk0Var).d;
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(fileB), ok0.e);
            try {
                outputStreamWriter.write("");
                fileB.setLastModified(j * 1000);
                outputStreamWriter.close();
            } finally {
            }
        } catch (IOException e) {
            String strU2 = di0.u("Could not persist report for session ", str22);
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", strU2, e);
            }
        }
    }

    public final boolean d(ed0 ed0Var) {
        eh.l();
        pk0 pk0Var = this.n;
        if (pk0Var != null && pk0Var.e.get()) {
            Log.w("FirebaseCrashlytics", "Skipping session finalization because a crash has already occurred.", null);
            return false;
        }
        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            Log.v("FirebaseCrashlytics", "Finalizing previously open sessions.", null);
        }
        try {
            b(true, ed0Var, true);
            if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                Log.v("FirebaseCrashlytics", "Closed all previously open sessions.", null);
            }
            return true;
        } catch (Exception e) {
            Log.e("FirebaseCrashlytics", "Unable to finalize previously open sessions.", e);
            return false;
        }
    }

    public final String e() {
        NavigableSet navigableSetC = ((ok0) this.m.b).c();
        if (navigableSetC.isEmpty()) {
            return null;
        }
        return (String) navigableSetC.first();
    }

    public final String f() throws IOException {
        InputStream resourceAsStream;
        ByteArrayOutputStream byteArrayOutputStream;
        byte[] bArr;
        Context context = this.a;
        int iX = w80.x(context, "com.google.firebase.crashlytics.version_control_info", "string");
        String string = iX == 0 ? null : context.getResources().getString(iX);
        if (string != null) {
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", "Read version control info from string resource", null);
            }
            return Base64.encodeToString(string.getBytes(s), 0);
        }
        ClassLoader classLoader = dj0.class.getClassLoader();
        if (classLoader == null) {
            Log.w("FirebaseCrashlytics", "Couldn't get Class Loader", null);
            resourceAsStream = null;
        } else {
            resourceAsStream = classLoader.getResourceAsStream("META-INF/version-control-info.textproto");
        }
        if (resourceAsStream == null) {
            if (resourceAsStream != null) {
                resourceAsStream.close();
            }
            Log.i("FirebaseCrashlytics", "No version control information found", null);
            return null;
        }
        try {
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", "Read version control info from file", null);
            }
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                bArr = new byte[1024];
            } finally {
            }
        } catch (Throwable th) {
            try {
                resourceAsStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
        while (true) {
            int i = resourceAsStream.read(bArr);
            if (i == -1) {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
                String strEncodeToString = Base64.encodeToString(byteArray, 0);
                resourceAsStream.close();
                return strEncodeToString;
            }
            byteArrayOutputStream.write(bArr, 0, i);
            resourceAsStream.close();
            throw th;
        }
    }

    public final void g() {
        try {
            String strF = f();
            if (strF != null) {
                try {
                    this.d.f(strF);
                } catch (IllegalArgumentException e) {
                    Context context = this.a;
                    if (context != null && (context.getApplicationInfo().flags & 2) != 0) {
                        throw e;
                    }
                    Log.e("FirebaseCrashlytics", "Attempting to set custom attribute with null key, ignoring.", null);
                }
                Log.i("FirebaseCrashlytics", "Saved version control info", null);
            }
        } catch (IOException e2) {
            Log.w("FirebaseCrashlytics", "Unable to save version control info", e2);
        }
    }

    public final void h(ef5 ef5Var) {
        ef5 ef5Var2;
        ef5 ef5VarG0;
        pw3 pw3Var = this.o;
        q51 q51Var = ((ok0) this.m.b).b;
        if (q51.e(((File) q51Var.e).listFiles()).isEmpty() && q51.e(((File) q51Var.f).listFiles()).isEmpty() && q51.e(((File) q51Var.g).listFiles()).isEmpty()) {
            if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                Log.v("FirebaseCrashlytics", "No crash reports are available to be sent.", null);
            }
            pw3Var.d(Boolean.FALSE);
            return;
        }
        w13 w13Var = w13.H;
        w13Var.m("Crash reports are available to be sent.");
        bm0 bm0Var = this.b;
        if (bm0Var.a()) {
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", "Automatic data collection is enabled. Allowing upload.", null);
            }
            pw3Var.d(Boolean.FALSE);
            ef5VarG0 = mt1.t(Boolean.TRUE);
        } else {
            w13Var.e("Automatic data collection is disabled.");
            w13Var.m("Notifying that unsent reports are available.");
            pw3Var.d(Boolean.TRUE);
            synchronized (bm0Var.b) {
                ef5Var2 = bm0Var.c.a;
            }
            ef5 ef5VarK = ef5Var2.k(new bx3(23));
            w13Var.e("Waiting for send/deleteUnsentReports to be called.");
            ef5VarG0 = n44.G0(ef5VarK, this.p.a);
        }
        ef5VarG0.l((qk0) this.e.o, new gw4(this, ef5Var));
    }
}
