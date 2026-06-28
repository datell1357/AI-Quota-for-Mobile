package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.format.DateUtils;
import android.util.Log;
import com.google.android.gms.common.util.Clock;
import com.google.api.client.http.HttpStatusCodes;
import com.google.firebase.remoteconfig.internal.ConfigFetchHttpClient;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ed0 {
    public static final int[] j = {2, 4, 8, 16, 32, 64, 128, 256};
    public Object a;
    public Object b;
    public Object c;
    public Object d;
    public Object e;
    public Object f;
    public Object g;
    public Object h;
    public Object i;

    public static void h(JSONObject jSONObject, String str) {
        String str2 = str + jSONObject.toString();
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", str2, null);
        }
    }

    public dd0 a(String str, String str2, Date date, HashMap map) throws u61 {
        String str3;
        try {
            HttpURLConnection httpURLConnectionB = ((ConfigFetchHttpClient) this.g).b();
            ConfigFetchHttpClient configFetchHttpClient = (ConfigFetchHttpClient) this.g;
            HashMap mapF = f();
            String string = ((jd0) this.h).a.getString("last_fetch_etag", null);
            g8 g8Var = (g8) ((n03) this.b).get();
            dd0 dd0VarFetch = configFetchHttpClient.fetch(httpURLConnectionB, str, str2, mapF, string, map, g8Var != null ? (Long) ((h8) g8Var).a.a.a(null, null, true).get("_fot") : null, date, ((jd0) this.h).b());
            ad0 ad0Var = dd0VarFetch.b;
            if (ad0Var != null) {
                jd0 jd0Var = (jd0) this.h;
                long j2 = ad0Var.f;
                synchronized (jd0Var.b) {
                    jd0Var.a.edit().putLong("last_template_version", j2).apply();
                }
            }
            String str4 = dd0VarFetch.c;
            if (str4 != null) {
                jd0 jd0Var2 = (jd0) this.h;
                synchronized (jd0Var2.b) {
                    jd0Var2.a.edit().putString("last_fetch_etag", str4).apply();
                }
            }
            ((jd0) this.h).d(0, jd0.f);
            return dd0VarFetch;
        } catch (x61 e) {
            int i = e.n;
            jd0 jd0Var3 = (jd0) this.h;
            if (i == 429 || i == 502 || i == 503 || i == 504) {
                int i2 = jd0Var3.a().a + 1;
                long millis = TimeUnit.MINUTES.toMillis(j[Math.min(i2, 8) - 1]);
                jd0Var3.d(i2, new Date(date.getTime() + (millis / 2) + ((long) ((Random) this.e).nextInt((int) millis))));
            }
            id0 id0VarA = jd0Var3.a();
            int i3 = e.n;
            if (id0VarA.a > 1 || i3 == 429) {
                id0VarA.b.getTime();
                throw new v61("Fetch was throttled.");
            }
            if (i3 == 401) {
                str3 = "The request did not have the required credentials. Please make sure your google-services.json is valid.";
            } else if (i3 == 403) {
                str3 = "The user is not authorized to access the project. Please make sure you are using the API key that corresponds to your Firebase project.";
            } else {
                if (i3 == 429) {
                    throw new t61("The throttled response from the server was not handled correctly by the FRC SDK.");
                }
                if (i3 != 500) {
                    switch (i3) {
                        case HttpStatusCodes.STATUS_CODE_BAD_GATEWAY /* 502 */:
                        case HttpStatusCodes.STATUS_CODE_SERVICE_UNAVAILABLE /* 503 */:
                        case 504:
                            str3 = "The server is unavailable. Please try again later.";
                            break;
                        default:
                            str3 = "The server returned an unexpected error.";
                            break;
                    }
                } else {
                    str3 = "There was an internal server error.";
                }
            }
            throw new x61(e.n, "Fetch failed: ".concat(str3), e);
        }
    }

    public ef5 b(ow3 ow3Var, long j2, final HashMap map) {
        final ed0 ed0Var;
        ef5 ef5VarE;
        Executor executor = (Executor) this.c;
        n61 n61Var = (n61) this.a;
        jd0 jd0Var = (jd0) this.h;
        final Date date = new Date(((Clock) this.d).currentTimeMillis());
        if (ow3Var.j()) {
            Date date2 = new Date(jd0Var.a.getLong("last_fetch_time_in_millis", -1L));
            if (date2.equals(jd0.e) ? false : date.before(new Date(TimeUnit.SECONDS.toMillis(j2) + date2.getTime()))) {
                return mt1.t(new dd0(2, null, null));
            }
        }
        Date date3 = jd0Var.a().b;
        Date date4 = date.before(date3) ? date3 : null;
        if (date4 != null) {
            String str = "Fetch is throttled. Please wait before calling fetch again: " + DateUtils.formatElapsedTime((date4.getTime() - date.getTime()) / 1000);
            date4.getTime();
            ef5VarE = mt1.s(new v61(str));
            ed0Var = this;
        } else {
            m61 m61Var = (m61) n61Var;
            final ef5 ef5VarC = m61Var.c();
            final ef5 ef5VarE2 = m61Var.e();
            ed0Var = this;
            ef5VarE = mt1.Z(ef5VarC, ef5VarE2).e(executor, new eh0() { // from class: bd0
                @Override // defpackage.eh0
                public final Object then(ow3 ow3Var2) {
                    ed0 ed0Var2 = this.n;
                    Date date5 = date;
                    HashMap map2 = map;
                    ow3 ow3Var3 = ef5VarC;
                    if (!ow3Var3.j()) {
                        return mt1.s(new t61("Firebase Installations failed to get installation ID for fetch.", ow3Var3.f()));
                    }
                    ow3 ow3Var4 = ef5VarE2;
                    if (!ow3Var4.j()) {
                        return mt1.s(new t61("Firebase Installations failed to get installation auth token for fetch.", ow3Var4.f()));
                    }
                    try {
                        dd0 dd0VarA = ed0Var2.a((String) ow3Var3.g(), ((lo) ow3Var4.g()).a, date5, map2);
                        return dd0VarA.a != 0 ? mt1.t(dd0VarA) : ((yc0) ed0Var2.f).d(dd0VarA.b).l((Executor) ed0Var2.c, new r6(3, dd0VarA));
                    } catch (u61 e) {
                        return mt1.s(e);
                    }
                }
            });
        }
        return ef5VarE.e(executor, new rr(4, ed0Var, date));
    }

    public ef5 c(int i) {
        HashMap map = new HashMap((Map) this.i);
        map.put("X-Firebase-RC-Fetch-Type", "REALTIME/" + i);
        return ((yc0) this.f).b().e((Executor) this.c, new rr(3, this, map));
    }

    public mk3 d(int i) {
        mk3 mk3Var = null;
        try {
            if (!di0.i(2, i)) {
                JSONObject jSONObjectR = ((wu4) this.e).r();
                if (jSONObjectR != null) {
                    mk3 mk3VarI = ((ra3) this.c).i(jSONObjectR);
                    h(jSONObjectR, "Loaded cached settings: ");
                    ((ls3) this.d).getClass();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (di0.i(3, i) || mk3VarI.c >= jCurrentTimeMillis) {
                        try {
                            if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                                Log.v("FirebaseCrashlytics", "Returning cached settings.", null);
                            }
                            return mk3VarI;
                        } catch (Exception e) {
                            e = e;
                            mk3Var = mk3VarI;
                            Log.e("FirebaseCrashlytics", "Failed to get cached settings", e);
                            return mk3Var;
                        }
                    }
                    if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                        Log.v("FirebaseCrashlytics", "Cached settings have expired.", null);
                        return null;
                    }
                } else if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                    Log.d("FirebaseCrashlytics", "No cached settings data found.", null);
                }
            }
            return null;
        } catch (Exception e2) {
            e = e2;
        }
    }

    public mk3 e() {
        return (mk3) ((AtomicReference) this.h).get();
    }

    public HashMap f() {
        HashMap map = new HashMap();
        g8 g8Var = (g8) ((n03) this.b).get();
        if (g8Var != null) {
            for (Map.Entry entry : ((h8) g8Var).a.a.a(null, null, false).entrySet()) {
                map.put((String) entry.getKey(), entry.getValue().toString());
            }
        }
        return map;
    }

    public void g(hp hpVar, int i) {
        byte[] bArr;
        long j2;
        im imVar;
        String str;
        im imVar2;
        int i2;
        h30 h30VarE;
        String str2;
        Integer numValueOf;
        ed0 ed0Var;
        final ed0 ed0Var2 = this;
        final hp hpVar2 = hpVar;
        byte[] bArr2 = hpVar2.b;
        ob3 ob3Var = (ob3) ed0Var2.f;
        v14 v14VarA = ((vc2) ed0Var2.b).a(hpVar2.a);
        long jMax = 0;
        while (true) {
            final int i3 = 0;
            if (!((Boolean) ob3Var.B(new mv3(ed0Var2) { // from class: y74
                public final /* synthetic */ ed0 o;

                {
                    this.o = ed0Var2;
                }

                @Override // defpackage.mv3
                public final Object b() {
                    Boolean bool;
                    int i4 = i3;
                    hp hpVar3 = hpVar2;
                    ed0 ed0Var3 = this.o;
                    switch (i4) {
                        case 0:
                            ob3 ob3Var2 = (ob3) ed0Var3.d;
                            SQLiteDatabase sQLiteDatabaseB = ob3Var2.b();
                            sQLiteDatabaseB.beginTransaction();
                            try {
                                Long lJ = ob3.j(sQLiteDatabaseB, hpVar3);
                                if (lJ == null) {
                                    bool = Boolean.FALSE;
                                } else {
                                    Cursor cursorRawQuery = ob3Var2.b().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{lJ.toString()});
                                    try {
                                        Boolean boolValueOf = Boolean.valueOf(cursorRawQuery.moveToNext());
                                        cursorRawQuery.close();
                                        bool = boolValueOf;
                                    } catch (Throwable th) {
                                        cursorRawQuery.close();
                                        throw th;
                                    }
                                }
                                sQLiteDatabaseB.setTransactionSuccessful();
                                return bool;
                            } finally {
                                sQLiteDatabaseB.endTransaction();
                            }
                        default:
                            ob3 ob3Var3 = (ob3) ed0Var3.d;
                            ob3Var3.getClass();
                            return (Iterable) ob3Var3.r(new rr(10, ob3Var3, hpVar3));
                    }
                }
            })).booleanValue()) {
                ob3Var.B(new cd0(ed0Var2, hpVar2, jMax));
                return;
            }
            final int i4 = 1;
            Iterable iterable = (Iterable) ob3Var.B(new mv3(ed0Var2) { // from class: y74
                public final /* synthetic */ ed0 o;

                {
                    this.o = ed0Var2;
                }

                @Override // defpackage.mv3
                public final Object b() {
                    Boolean bool;
                    int i42 = i4;
                    hp hpVar3 = hpVar2;
                    ed0 ed0Var3 = this.o;
                    switch (i42) {
                        case 0:
                            ob3 ob3Var2 = (ob3) ed0Var3.d;
                            SQLiteDatabase sQLiteDatabaseB = ob3Var2.b();
                            sQLiteDatabaseB.beginTransaction();
                            try {
                                Long lJ = ob3.j(sQLiteDatabaseB, hpVar3);
                                if (lJ == null) {
                                    bool = Boolean.FALSE;
                                } else {
                                    Cursor cursorRawQuery = ob3Var2.b().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{lJ.toString()});
                                    try {
                                        Boolean boolValueOf = Boolean.valueOf(cursorRawQuery.moveToNext());
                                        cursorRawQuery.close();
                                        bool = boolValueOf;
                                    } catch (Throwable th) {
                                        cursorRawQuery.close();
                                        throw th;
                                    }
                                }
                                sQLiteDatabaseB.setTransactionSuccessful();
                                return bool;
                            } finally {
                                sQLiteDatabaseB.endTransaction();
                            }
                        default:
                            ob3 ob3Var3 = (ob3) ed0Var3.d;
                            ob3Var3.getClass();
                            return (Iterable) ob3Var3.r(new rr(10, ob3Var3, hpVar3));
                    }
                }
            });
            if (!iterable.iterator().hasNext()) {
                return;
            }
            if (v14VarA == null) {
                qj0.C(hpVar2, "Uploader", "Unknown backend for %s, deleting event batch for it...");
                imVar2 = new im(3, -1L);
                bArr = bArr2;
                j2 = jMax;
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    arrayList.add(((ro) it.next()).c);
                }
                if (bArr2 != null) {
                    ob3 ob3Var2 = (ob3) ed0Var2.i;
                    Objects.requireNonNull(ob3Var2);
                    m60 m60Var = (m60) ob3Var.B(new w74(ob3Var2, i3));
                    bo boVar = new bo();
                    boVar.i = new HashMap();
                    boVar.g = Long.valueOf(((pr3) ed0Var2.g).i());
                    boVar.h = Long.valueOf(((pr3) ed0Var2.h).i());
                    boVar.b = "GDT_CLIENT_METRICS";
                    o01 o01Var = new o01("proto");
                    m60Var.getClass();
                    eh ehVar = wz2.a;
                    ehVar.getClass();
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        ehVar.s(m60Var, byteArrayOutputStream);
                    } catch (IOException unused) {
                    }
                    boVar.f = new l01(o01Var, byteArrayOutputStream.toByteArray());
                    arrayList.add(((i30) v14VarA).a(boVar.c()));
                }
                i30 i30Var = (i30) v14VarA;
                HashMap map = new HashMap();
                int size = arrayList.size();
                int i5 = 0;
                while (i5 < size) {
                    Object obj = arrayList.get(i5);
                    i5++;
                    co coVar = (co) obj;
                    String str3 = coVar.a;
                    if (map.containsKey(str3)) {
                        ((List) map.get(str3)).add(coVar);
                    } else {
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.add(coVar);
                        map.put(str3, arrayList2);
                    }
                }
                ArrayList arrayList3 = new ArrayList();
                for (Map.Entry entry : map.entrySet()) {
                    co coVar2 = (co) ((List) entry.getValue()).get(0);
                    x03 x03Var = x03.n;
                    long jI = i30Var.f.i();
                    long jI2 = i30Var.e.i();
                    km kmVar = new km(new hm(Integer.valueOf(coVar2.b("sdk-version")), coVar2.a("model"), coVar2.a("hardware"), coVar2.a("device"), coVar2.a("product"), coVar2.a("os-uild"), coVar2.a("manufacturer"), coVar2.a("fingerprint"), coVar2.a("locale"), coVar2.a("country"), coVar2.a("mcc_mnc"), coVar2.a("application_build")));
                    try {
                        numValueOf = Integer.valueOf(Integer.parseInt((String) entry.getKey()));
                        str2 = null;
                    } catch (NumberFormatException unused2) {
                        str2 = (String) entry.getKey();
                        numValueOf = null;
                    }
                    ArrayList arrayList4 = new ArrayList();
                    for (co coVar3 : (List) entry.getValue()) {
                        byte[] bArr3 = bArr2;
                        l01 l01Var = coVar3.c;
                        byte[] bArr4 = coVar3.j;
                        o01 o01Var2 = l01Var.a;
                        byte[] bArr5 = l01Var.b;
                        long j3 = jMax;
                        if (o01Var2.equals(new o01("proto"))) {
                            ed0Var = new ed0();
                            ed0Var.e = bArr5;
                        } else if (o01Var2.equals(new o01("json"))) {
                            String str4 = new String(bArr5, Charset.forName("UTF-8"));
                            ed0 ed0Var3 = new ed0();
                            ed0Var3.f = str4;
                            ed0Var = ed0Var3;
                        } else {
                            String strM = qj0.M("CctTransportBackend");
                            if (Log.isLoggable(strM, 5)) {
                                Log.w(strM, "Received event of unsupported encoding " + o01Var2 + ". Skipping...");
                            }
                            bArr2 = bArr3;
                            jMax = j3;
                        }
                        ed0Var.a = Long.valueOf(coVar3.d);
                        ed0Var.d = Long.valueOf(coVar3.e);
                        String str5 = (String) coVar3.f.get("tz-offset");
                        ed0Var.g = Long.valueOf(str5 == null ? 0L : Long.valueOf(str5).longValue());
                        ed0Var.h = new qo((hl2) hl2.n.get(coVar3.b("net-type")), (gl2) gl2.n.get(coVar3.b("mobile-subtype")));
                        Integer num = coVar3.b;
                        if (num != null) {
                            ed0Var.b = num;
                        }
                        Integer num2 = coVar3.g;
                        if (num2 != null) {
                            ho hoVar = new ho(new go(num2));
                            e90 e90Var = e90.n;
                            ed0Var.c = new lm(hoVar);
                        }
                        byte[] bArr6 = coVar3.i;
                        if (bArr6 != null || bArr4 != null) {
                            if (bArr6 == null) {
                                bArr6 = null;
                            }
                            ed0Var.i = new fo(bArr6, bArr4 != null ? bArr4 : null);
                        }
                        String strConcat = ((Long) ed0Var.a) == null ? " eventTimeMs" : "";
                        if (((Long) ed0Var.d) == null) {
                            strConcat = strConcat.concat(" eventUptimeMs");
                        }
                        if (((Long) ed0Var.g) == null) {
                            strConcat = strConcat.concat(" timezoneOffsetSeconds");
                        }
                        if (!strConcat.isEmpty()) {
                            k21.n("Missing required properties:".concat(strConcat));
                            return;
                        } else {
                            arrayList4.add(new no(((Long) ed0Var.a).longValue(), (Integer) ed0Var.b, (lm) ed0Var.c, ((Long) ed0Var.d).longValue(), (byte[]) ed0Var.e, (String) ed0Var.f, ((Long) ed0Var.g).longValue(), (qo) ed0Var.h, (fo) ed0Var.i));
                            bArr2 = bArr3;
                            jMax = j3;
                        }
                    }
                    arrayList3.add(new oo(jI, jI2, kmVar, numValueOf, str2, arrayList4));
                    bArr2 = bArr2;
                }
                bArr = bArr2;
                j2 = jMax;
                jm jmVar = new jm(arrayList3);
                URL urlB = i30Var.d;
                if (bArr != null) {
                    try {
                        h00 h00VarA = h00.a(bArr);
                        String str6 = h00VarA.b;
                        if (str6 == null) {
                            str6 = null;
                        }
                        String str7 = h00VarA.a;
                        if (str7 != null) {
                            urlB = i30.b(str7);
                        }
                        str = str6;
                    } catch (IllegalArgumentException unused3) {
                        imVar = new im(3, -1L);
                    }
                } else {
                    str = null;
                }
                try {
                    eh ehVar2 = new eh(urlB, jmVar, str, 9, false);
                    r6 r6Var = new r6(2, i30Var);
                    int i6 = 5;
                    eh ehVar3 = ehVar2;
                    do {
                        h30VarE = r6Var.e(ehVar3);
                        URL url = (URL) h30VarE.c;
                        if (url != null) {
                            qj0.C(url, "CctTransportBackend", "Following redirect to: %s");
                            ehVar3 = new eh(url, (jm) ehVar3.p, (String) ehVar3.q, 9, false);
                        } else {
                            ehVar3 = null;
                        }
                        if (ehVar3 == null) {
                            break;
                        } else {
                            i6--;
                        }
                    } while (i6 >= 1);
                    int i7 = h30VarE.b;
                    if (i7 == 200) {
                        imVar2 = new im(1, h30VarE.a);
                    } else {
                        if (i7 >= 500 || i7 == 404) {
                            imVar = new im(2, -1L);
                        } else if (i7 == 400) {
                            try {
                                imVar = new im(4, -1L);
                            } catch (IOException e) {
                                e = e;
                                qj0.E("CctTransportBackend", "Could not make request to the backend", e);
                                i2 = 2;
                                imVar2 = new im(2, -1L);
                            }
                        } else {
                            imVar = new im(3, -1L);
                        }
                        imVar2 = imVar;
                    }
                } catch (IOException e2) {
                    e = e2;
                }
            }
            i2 = 2;
            int i8 = imVar2.a;
            if (i8 == i2) {
                ob3Var.B(new mr0(this, iterable, hpVar, j2));
                ((eh) this.e).F(hpVar, i + 1, true);
                return;
            }
            ed0Var2 = this;
            hpVar2 = hpVar;
            jMax = j2;
            ob3Var.B(new rr(11, ed0Var2, iterable));
            if (i8 == 1) {
                jMax = Math.max(jMax, imVar2.b);
                if (bArr != null) {
                    ob3Var.B(new r6(17, ed0Var2));
                }
            } else if (i8 == 4) {
                HashMap map2 = new HashMap();
                Iterator it2 = iterable.iterator();
                while (it2.hasNext()) {
                    String str8 = ((ro) it2.next()).c.a;
                    if (map2.containsKey(str8)) {
                        map2.put(str8, Integer.valueOf(((Integer) map2.get(str8)).intValue() + 1));
                    } else {
                        map2.put(str8, 1);
                    }
                }
                ob3Var.B(new rr(12, ed0Var2, map2));
            }
            bArr2 = bArr;
        }
    }
}
