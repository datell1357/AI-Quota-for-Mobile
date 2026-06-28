package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Base64;
import android.util.Log;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class gd0 implements eh0, mv3, c20, jp2, mb3 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;

    public /* synthetic */ gd0(Object obj, Object obj2, Object obj3, int i) {
        this.n = i;
        this.o = obj;
        this.p = obj2;
        this.q = obj3;
    }

    @Override // defpackage.mb3
    public Object apply(Object obj) throws Throwable {
        long jInsert;
        Cursor cursor;
        ob3 ob3Var;
        o72 o72Var;
        int i = this.n;
        int i2 = 6;
        int i3 = 5;
        int i4 = 4;
        int i5 = 3;
        o72 o72Var2 = o72.q;
        int i6 = 2;
        int i7 = 1;
        Object obj2 = this.q;
        Object obj3 = this.p;
        Object obj4 = this.o;
        int i8 = 0;
        switch (i) {
            case 6:
                ob3 ob3Var2 = (ob3) obj4;
                co coVar = (co) obj3;
                l01 l01Var = coVar.c;
                String str = coVar.a;
                hp hpVar = (hp) obj2;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                long jSimpleQueryForLong = ob3Var2.b().compileStatement("PRAGMA page_size").simpleQueryForLong() * ob3Var2.b().compileStatement("PRAGMA page_count").simpleQueryForLong();
                eo eoVar = ob3Var2.q;
                if (jSimpleQueryForLong >= eoVar.a) {
                    ob3Var2.A(1L, o72Var2, str);
                    return -1L;
                }
                Long lJ = ob3.j(sQLiteDatabase, hpVar);
                if (lJ != null) {
                    jInsert = lJ.longValue();
                } else {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("backend_name", hpVar.a);
                    contentValues.put("priority", Integer.valueOf(sy2.a(hpVar.c)));
                    contentValues.put("next_request_ms", (Integer) 0);
                    byte[] bArr = hpVar.b;
                    if (bArr != null) {
                        contentValues.put("extras", Base64.encodeToString(bArr, 0));
                    }
                    jInsert = sQLiteDatabase.insert("transport_contexts", null, contentValues);
                }
                int i9 = eoVar.e;
                byte[] bArr2 = l01Var.b;
                boolean z = bArr2.length <= i9;
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("context_id", Long.valueOf(jInsert));
                contentValues2.put("transport_name", str);
                contentValues2.put("timestamp_ms", Long.valueOf(coVar.d));
                contentValues2.put("uptime_ms", Long.valueOf(coVar.e));
                contentValues2.put("payload_encoding", l01Var.a.a);
                contentValues2.put("code", coVar.b);
                contentValues2.put("num_attempts", (Integer) 0);
                contentValues2.put("inline", Boolean.valueOf(z));
                contentValues2.put("payload", z ? bArr2 : new byte[0]);
                contentValues2.put("product_id", coVar.g);
                contentValues2.put("pseudonymous_id", coVar.h);
                contentValues2.put("experiment_ids_clear_blob", coVar.i);
                contentValues2.put("experiment_ids_encrypted_blob", coVar.j);
                long jInsert2 = sQLiteDatabase.insert("events", null, contentValues2);
                if (!z) {
                    int iCeil = (int) Math.ceil(((double) bArr2.length) / ((double) i9));
                    for (int i10 = 1; i10 <= iCeil; i10++) {
                        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr2, (i10 - 1) * i9, Math.min(i10 * i9, bArr2.length));
                        ContentValues contentValues3 = new ContentValues();
                        contentValues3.put("event_id", Long.valueOf(jInsert2));
                        contentValues3.put("sequence_num", Integer.valueOf(i10));
                        contentValues3.put("bytes", bArrCopyOfRange);
                        sQLiteDatabase.insert("event_payloads", null, contentValues3);
                    }
                }
                for (Map.Entry entry : Collections.unmodifiableMap(coVar.f).entrySet()) {
                    ContentValues contentValues4 = new ContentValues();
                    contentValues4.put("event_id", Long.valueOf(jInsert2));
                    contentValues4.put("name", (String) entry.getKey());
                    contentValues4.put("value", (String) entry.getValue());
                    sQLiteDatabase.insert("event_metadata", null, contentValues4);
                }
                return Long.valueOf(jInsert2);
            case 7:
                ob3 ob3Var3 = (ob3) obj4;
                ArrayList arrayList = (ArrayList) obj3;
                hp hpVar2 = (hp) obj2;
                Cursor cursor2 = (Cursor) obj;
                while (cursor2.moveToNext()) {
                    long j = cursor2.getLong(0);
                    int i11 = cursor2.getInt(7) != 0 ? i7 : 0;
                    bo boVar = new bo();
                    boVar.i = new HashMap();
                    String string = cursor2.getString(i7);
                    if (string == null) {
                        q73.r("Null transportName");
                        return null;
                    }
                    boVar.b = string;
                    boVar.g = Long.valueOf(cursor2.getLong(i6));
                    boVar.h = Long.valueOf(cursor2.getLong(3));
                    if (i11 != 0) {
                        String string2 = cursor2.getString(4);
                        boVar.f = new l01(string2 == null ? ob3.s : new o01(string2), cursor2.getBlob(5));
                        ob3Var = ob3Var3;
                    } else {
                        String string3 = cursor2.getString(4);
                        o01 o01Var = string3 == null ? ob3.s : new o01(string3);
                        Cursor cursorQuery = ob3Var3.b().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j)}, null, null, "sequence_num");
                        try {
                            ArrayList arrayList2 = new ArrayList();
                            int length = 0;
                            while (cursorQuery.moveToNext()) {
                                byte[] blob = cursorQuery.getBlob(0);
                                arrayList2.add(blob);
                                length += blob.length;
                                break;
                            }
                            byte[] bArr3 = new byte[length];
                            int i12 = 0;
                            int length2 = 0;
                            while (i12 < arrayList2.size()) {
                                byte[] bArr4 = (byte[]) arrayList2.get(i12);
                                ob3 ob3Var4 = ob3Var3;
                                cursor = cursorQuery;
                                try {
                                    System.arraycopy(bArr4, 0, bArr3, length2, bArr4.length);
                                    length2 += bArr4.length;
                                    i12++;
                                    cursorQuery = cursor;
                                    ob3Var3 = ob3Var4;
                                } catch (Throwable th) {
                                    th = th;
                                    cursor.close();
                                    throw th;
                                }
                            }
                            ob3Var = ob3Var3;
                            cursorQuery.close();
                            boVar.f = new l01(o01Var, bArr3);
                        } catch (Throwable th2) {
                            th = th2;
                            cursor = cursorQuery;
                        }
                    }
                    if (!cursor2.isNull(6)) {
                        boVar.d = Integer.valueOf(cursor2.getInt(6));
                    }
                    if (!cursor2.isNull(8)) {
                        boVar.e = Integer.valueOf(cursor2.getInt(8));
                    }
                    if (!cursor2.isNull(9)) {
                        boVar.c = cursor2.getString(9);
                    }
                    if (!cursor2.isNull(10)) {
                        boVar.j = cursor2.getBlob(10);
                    }
                    if (!cursor2.isNull(11)) {
                        boVar.k = cursor2.getBlob(11);
                    }
                    arrayList.add(new ro(j, hpVar2, boVar.c()));
                    ob3Var3 = ob3Var;
                    i6 = 2;
                    i7 = 1;
                }
                return null;
            default:
                ob3 ob3Var5 = (ob3) obj4;
                HashMap map = (HashMap) obj3;
                qd1 qd1Var = (qd1) obj2;
                ArrayList arrayList3 = (ArrayList) qd1Var.o;
                Cursor cursor3 = (Cursor) obj;
                ob3Var5.getClass();
                while (cursor3.moveToNext()) {
                    String string4 = cursor3.getString(i8);
                    int i13 = cursor3.getInt(1);
                    o72 o72Var3 = o72.o;
                    if (i13 != 0) {
                        if (i13 == 1) {
                            o72Var3 = o72.p;
                        } else if (i13 == 2) {
                            o72Var = o72Var2;
                        } else if (i13 == i5) {
                            o72Var3 = o72.r;
                        } else if (i13 == i4) {
                            o72Var3 = o72.s;
                        } else if (i13 == i3) {
                            o72Var3 = o72.t;
                        } else if (i13 == i2) {
                            o72Var3 = o72.f236u;
                        } else {
                            qj0.C(Integer.valueOf(i13), "SQLiteEventStore", "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN");
                        }
                        o72Var = o72Var3;
                    } else {
                        o72Var = o72Var3;
                    }
                    long j2 = cursor3.getLong(2);
                    if (!map.containsKey(string4)) {
                        map.put(string4, new ArrayList());
                    }
                    ((List) map.get(string4)).add(new p72(j2, o72Var));
                    i2 = 6;
                    i3 = 5;
                    i4 = 4;
                    i5 = 3;
                    i8 = 0;
                }
                for (Map.Entry entry2 : map.entrySet()) {
                    int i14 = r72.c;
                    new ArrayList();
                    arrayList3.add(new r72((String) entry2.getKey(), Collections.unmodifiableList((List) entry2.getValue())));
                }
                long jI = ob3Var5.o.i();
                SQLiteDatabase sQLiteDatabaseB = ob3Var5.b();
                sQLiteDatabaseB.beginTransaction();
                try {
                    Cursor cursorRawQuery = sQLiteDatabaseB.rawQuery("SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1", new String[0]);
                    try {
                        cursorRawQuery.moveToNext();
                        kz3 kz3Var = new kz3(cursorRawQuery.getLong(0), jI);
                        cursorRawQuery.close();
                        sQLiteDatabaseB.setTransactionSuccessful();
                        sQLiteDatabaseB.endTransaction();
                        qd1Var.p = kz3Var;
                        qd1Var.q = new eh1(new qs3(ob3Var5.b().compileStatement("PRAGMA page_size").simpleQueryForLong() * ob3Var5.b().compileStatement("PRAGMA page_count").simpleQueryForLong(), eo.f.a));
                        qd1Var.r = (String) ob3Var5.r.get();
                        return new m60((kz3) qd1Var.p, Collections.unmodifiableList(arrayList3), (eh1) qd1Var.q, (String) qd1Var.r);
                    } catch (Throwable th3) {
                        cursorRawQuery.close();
                        throw th3;
                    }
                } catch (Throwable th4) {
                    sQLiteDatabaseB.endTransaction();
                    throw th4;
                }
        }
    }

    @Override // defpackage.mv3
    public Object b() {
        aq0 aq0Var = (aq0) this.o;
        hp hpVar = (hp) this.p;
        co coVar = (co) this.q;
        ob3 ob3Var = aq0Var.d;
        ob3Var.getClass();
        ry2 ry2Var = hpVar.c;
        String str = coVar.a;
        String str2 = hpVar.a;
        String strM = qj0.M("SQLiteEventStore");
        if (Log.isLoggable(strM, 3)) {
            Log.d(strM, "Storing event with priority=" + ry2Var + ", name=" + str + " for destination " + str2);
        }
        ((Long) ob3Var.r(new gd0(ob3Var, coVar, hpVar, 6))).getClass();
        aq0Var.a.F(hpVar, 1, false);
        return null;
    }

    @Override // defpackage.c20
    public Object d(b20 b20Var) {
        hi0 hi0Var = (hi0) this.o;
        ti0 ti0Var = (ti0) this.p;
        df1 df1Var = (df1) this.q;
        y yVar = new y(5, (tu1) hi0Var.K(mj1.W));
        j73 j73Var = b20Var.c;
        if (j73Var != null) {
            j73Var.a(yVar, eu0.n);
        }
        return ca.y(dm0.c(hi0Var), null, ti0Var, new p(df1Var, b20Var, null, 15), 1);
    }

    @Override // defpackage.jp2
    public void h(Object obj) {
        qd1 qd1Var = (qd1) this.o;
        ow3 ow3Var = (ow3) this.p;
        kj0 kj0Var = (kj0) this.q;
        try {
            ad0 ad0Var = (ad0) ow3Var.g();
            if (ad0Var != null) {
                ((Executor) qd1Var.q).execute(new ba3(kj0Var, ((xh1) qd1Var.p).o(ad0Var), 0));
            }
        } catch (u61 e) {
            Log.w("FirebaseRemoteConfig", "Exception publishing RolloutsState to subscriber. Continuing to listen for changes.", e);
        }
    }

    @Override // defpackage.eh0
    public Object then(ow3 ow3Var) {
        ad0 ad0Var;
        int i = this.n;
        URL url = null;
        Object obj = this.q;
        Object obj2 = this.p;
        Object obj3 = this.o;
        switch (i) {
            case 0:
                hd0 hd0Var = (hd0) obj3;
                ow3 ow3Var2 = (ow3) obj2;
                ow3 ow3Var3 = (ow3) obj;
                if (!ow3Var2.j()) {
                    return mt1.s(new t61("Firebase Installations failed to get installation auth token for config update listener connection.", ow3Var2.f()));
                }
                try {
                    if (!ow3Var3.j()) {
                        return mt1.s(new t61("Firebase Installations failed to get installation ID for config update listener connection.", ow3Var3.f()));
                    }
                    try {
                        url = new URL(hd0Var.c(hd0Var.n));
                    } catch (MalformedURLException unused) {
                        Log.e("FirebaseRemoteConfig", "URL is malformed");
                    }
                    HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                    hd0Var.i(httpURLConnection, (String) ow3Var3.g(), ((lo) ow3Var2.g()).a);
                    return mt1.t(httpURLConnection);
                } catch (IOException e) {
                    return mt1.s(new t61("Failed to open HTTP stream connection", e));
                }
            case 1:
                pw3 pw3Var = (pw3) obj3;
                AtomicBoolean atomicBoolean = (AtomicBoolean) obj2;
                wu4 wu4Var = (wu4) obj;
                if (ow3Var.j()) {
                    pw3Var.d(ow3Var.g());
                } else if (ow3Var.f() != null) {
                    pw3Var.c(ow3Var.f());
                } else if (atomicBoolean.getAndSet(true)) {
                    ((ef5) ((gt4) wu4Var.o).o).o(null);
                }
                return mt1.t(null);
            default:
                s61 s61Var = (s61) obj3;
                ow3 ow3Var4 = (ow3) obj2;
                ow3 ow3Var5 = (ow3) obj;
                if (!ow3Var4.j() || ow3Var4.g() == null) {
                    return mt1.t(Boolean.FALSE);
                }
                ad0 ad0Var2 = (ad0) ow3Var4.g();
                return (ow3Var5.j() && (ad0Var = (ad0) ow3Var5.g()) != null && ad0Var2.c.equals(ad0Var.c)) ? mt1.t(Boolean.FALSE) : s61Var.d.d(ad0Var2).d(s61Var.b, new r61(s61Var));
        }
    }
}
