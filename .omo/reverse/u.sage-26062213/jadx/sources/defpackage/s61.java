package defpackage;

import android.os.Build;
import android.util.Log;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s61 {
    public final a61 a;
    public final Executor b;
    public final yc0 c;
    public final yc0 d;
    public final yc0 e;
    public final ed0 f;
    public final fd0 g;
    public final jd0 h;
    public final gw4 i;
    public final qd1 j;

    public s61(a61 a61Var, Executor executor, yc0 yc0Var, yc0 yc0Var2, yc0 yc0Var3, ed0 ed0Var, fd0 fd0Var, jd0 jd0Var, gw4 gw4Var, qd1 qd1Var) {
        this.a = a61Var;
        this.b = executor;
        this.c = yc0Var;
        this.d = yc0Var2;
        this.e = yc0Var3;
        this.f = ed0Var;
        this.g = fd0Var;
        this.h = jd0Var;
        this.i = gw4Var;
        this.j = qd1Var;
    }

    public static ArrayList f(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            HashMap map = new HashMap();
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObject.getString(next));
            }
            arrayList.add(map);
        }
        return arrayList;
    }

    public final ef5 a() {
        ow3 ow3VarB = this.c.b();
        ow3 ow3VarB2 = this.d.b();
        return mt1.Z(ow3VarB, ow3VarB2).e(this.b, new gd0(this, ow3VarB, ow3VarB2, 3));
    }

    public final void b(ur urVar) {
        gw4 gw4Var = this.i;
        synchronized (gw4Var) {
            ((LinkedHashSet) gw4Var.o).add(urVar);
            gw4Var.e();
        }
    }

    public final ef5 c() {
        ed0 ed0Var = this.f;
        long j = ((jd0) ed0Var.h).a.getLong("minimum_fetch_interval_in_seconds", 43200L);
        HashMap map = new HashMap((Map) ed0Var.i);
        map.put("X-Firebase-RC-Fetch-Type", "BASE/1");
        return ((yc0) ed0Var.f).b().e((Executor) ed0Var.c, new cd0(ed0Var, j, map)).l(i61.n, new p61(2)).l(this.b, new r61(this));
    }

    public final void d(boolean z) {
        HttpURLConnection httpURLConnection;
        gw4 gw4Var = this.i;
        synchronized (gw4Var) {
            hd0 hd0Var = (hd0) gw4Var.p;
            synchronized (hd0Var.r) {
                try {
                    hd0Var.e = z;
                    uc0 uc0Var = hd0Var.g;
                    if (uc0Var != null) {
                        uc0Var.j = z;
                    }
                    if (Build.VERSION.SDK_INT >= 26 && z && (httpURLConnection = hd0Var.f) != null) {
                        httpURLConnection.disconnect();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (!z) {
                gw4Var.e();
            }
        }
    }

    public final void e(LinkedHashMap linkedHashMap) {
        HashMap map = new HashMap();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof byte[]) {
                map.put((String) entry.getKey(), new String((byte[]) value));
            } else {
                map.put((String) entry.getKey(), value.toString());
            }
        }
        try {
            zc0 zc0VarD = ad0.d();
            zc0VarD.a = new JSONObject(map);
            this.e.d(zc0VarD.a()).l(i61.n, new p61(1));
        } catch (JSONException e) {
            Log.e("FirebaseRemoteConfig", "The provided defaults map could not be processed.", e);
            mt1.t(null);
        }
    }
}
