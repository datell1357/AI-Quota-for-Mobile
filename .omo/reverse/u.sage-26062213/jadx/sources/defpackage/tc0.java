package defpackage;

import android.util.Log;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tc0 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ long o;
    public final /* synthetic */ uc0 p;

    public tc0(uc0 uc0Var, int i, long j) {
        this.p = uc0Var;
        this.n = i;
        this.o = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        final uc0 uc0Var = this.p;
        int i = this.n;
        final long j = this.o;
        synchronized (uc0Var) {
            final int i2 = i - 1;
            final ef5 ef5VarC = uc0Var.c.c(3 - i2);
            final ow3 ow3VarB = uc0Var.d.b();
            mt1.Z(ef5VarC, ow3VarB).e(uc0Var.f, new eh0() { // from class: sc0
                @Override // defpackage.eh0
                public final Object then(ow3 ow3Var) throws JSONException {
                    Boolean boolValueOf;
                    uc0 uc0Var2 = uc0Var;
                    ef5 ef5Var = ef5VarC;
                    ow3 ow3Var2 = ow3VarB;
                    long j2 = j;
                    int i3 = i2;
                    if (!ef5Var.j()) {
                        return mt1.s(new t61("Failed to auto-fetch config update.", ef5Var.f()));
                    }
                    if (!ow3Var2.j()) {
                        return mt1.s(new t61("Failed to get activated config for auto-fetch", ow3Var2.f()));
                    }
                    dd0 dd0Var = (dd0) ef5Var.g();
                    ad0 ad0VarA = (ad0) ow3Var2.g();
                    ad0 ad0Var = dd0Var.b;
                    if (ad0Var != null) {
                        boolValueOf = Boolean.valueOf(ad0Var.f >= j2);
                    } else {
                        boolValueOf = Boolean.valueOf(dd0Var.a == 1);
                    }
                    if (!boolValueOf.booleanValue()) {
                        Log.d("FirebaseRemoteConfig", "Fetched template version is the same as SDK's current version. Retrying fetch.");
                        uc0Var2.a(i3, j2);
                        return mt1.t(null);
                    }
                    if (dd0Var.b == null) {
                        Log.d("FirebaseRemoteConfig", "The fetch succeeded, but the backend had no updates.");
                        return mt1.t(null);
                    }
                    if (ad0VarA == null) {
                        ad0VarA = ad0.d().a();
                    }
                    ad0 ad0Var2 = dd0Var.b;
                    JSONObject jSONObject = ad0VarA.e;
                    JSONObject jSONObject2 = ad0Var2.a;
                    JSONObject jSONObject3 = ad0Var2.b;
                    JSONObject jSONObject4 = ad0Var2.e;
                    JSONObject jSONObject5 = ad0.a(new JSONObject(jSONObject2.toString())).b;
                    HashMap mapC = ad0VarA.c();
                    HashMap mapC2 = ad0Var2.c();
                    HashMap mapB = ad0VarA.b();
                    HashMap mapB2 = ad0Var2.b();
                    HashSet hashSet = new HashSet();
                    JSONObject jSONObject6 = ad0VarA.b;
                    Iterator<String> itKeys = jSONObject6.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        if (!jSONObject3.has(next)) {
                            hashSet.add(next);
                        } else if (!jSONObject6.get(next).equals(jSONObject3.get(next))) {
                            hashSet.add(next);
                        } else if ((jSONObject.has(next) && !jSONObject4.has(next)) || (!jSONObject.has(next) && jSONObject4.has(next))) {
                            hashSet.add(next);
                        } else if (jSONObject.has(next) && jSONObject4.has(next) && !jSONObject.getJSONObject(next).toString().equals(jSONObject4.getJSONObject(next).toString())) {
                            hashSet.add(next);
                        } else if (mapC.containsKey(next) != mapC2.containsKey(next)) {
                            hashSet.add(next);
                        } else if (mapC.containsKey(next) && mapC2.containsKey(next) && !((Map) mapC.get(next)).equals(mapC2.get(next))) {
                            hashSet.add(next);
                        } else if (mapB.containsKey(next) != mapB2.containsKey(next)) {
                            hashSet.add(next);
                        } else if (mapB2.containsKey(next) && mapB.containsKey(next) && !((JSONObject) mapB2.get(next)).toString().equals(((JSONObject) mapB.get(next)).toString())) {
                            hashSet.add(next);
                        } else {
                            jSONObject5.remove(next);
                        }
                    }
                    Iterator<String> itKeys2 = jSONObject5.keys();
                    while (itKeys2.hasNext()) {
                        hashSet.add(itKeys2.next());
                    }
                    if (hashSet.isEmpty()) {
                        Log.d("FirebaseRemoteConfig", "Config was fetched, but no params changed.");
                        return mt1.t(null);
                    }
                    mm mmVar = new mm(hashSet);
                    synchronized (uc0Var2) {
                        Iterator it = uc0Var2.a.iterator();
                        while (it.hasNext()) {
                            ((ur) it.next()).b(mmVar);
                        }
                    }
                    return mt1.t(null);
                }
            });
        }
    }
}
