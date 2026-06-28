package defpackage;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.util.BiConsumer;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.firebase.remoteconfig.internal.ConfigFetchHttpClient;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s53 implements w61 {
    public static final Clock j = DefaultClock.getInstance();
    public static final Random k = new Random();
    public static final HashMap l = new HashMap();
    public final Context b;
    public final ScheduledExecutorService c;
    public final e61 d;
    public final n61 e;
    public final a61 f;
    public final n03 g;
    public final String h;
    public final HashMap a = new HashMap();
    public final HashMap i = new HashMap();

    public s53(Context context, ScheduledExecutorService scheduledExecutorService, e61 e61Var, n61 n61Var, a61 a61Var, n03 n03Var) {
        this.b = context;
        this.c = scheduledExecutorService;
        this.d = e61Var;
        this.e = n61Var;
        this.f = a61Var;
        this.g = n03Var;
        e61Var.a();
        this.h = e61Var.c.b;
        AtomicReference atomicReference = r53.a;
        Application application = (Application) context.getApplicationContext();
        AtomicReference atomicReference2 = r53.a;
        if (atomicReference2.get() == null) {
            r53 r53Var = new r53();
            while (true) {
                if (atomicReference2.compareAndSet(null, r53Var)) {
                    BackgroundDetector.initialize(application);
                    BackgroundDetector.getInstance().addListener(r53Var);
                    break;
                } else if (atomicReference2.get() != null) {
                    break;
                }
            }
        }
        mt1.m(scheduledExecutorService, new vc0(2, this));
    }

    public final synchronized s61 a() {
        s53 s53Var;
        yc0 yc0VarC;
        yc0 yc0VarC2;
        yc0 yc0VarC3;
        jd0 jd0Var;
        fd0 fd0Var;
        final xh1 xh1Var;
        qd1 qd1Var;
        try {
            try {
                yc0VarC = c("fetch");
                yc0VarC2 = c("activate");
                yc0VarC3 = c("defaults");
                try {
                    try {
                        boolean z = false;
                        jd0Var = new jd0(this.b.getSharedPreferences("frc_" + this.h + "_firebase_settings", 0));
                        fd0Var = new fd0(this.c, yc0VarC2, yc0VarC3);
                        e61 e61Var = this.d;
                        n03 n03Var = this.g;
                        e61Var.a();
                        if (e61Var.b.equals("[DEFAULT]")) {
                            xh1Var = new xh1();
                            xh1Var.o = Collections.synchronizedMap(new HashMap());
                            xh1Var.n = n03Var;
                        } else {
                            xh1Var = null;
                        }
                        if (xh1Var != null) {
                            BiConsumer biConsumer = new BiConsumer() { // from class: q53
                                @Override // com.google.android.gms.common.util.BiConsumer
                                public final void accept(Object obj, Object obj2) {
                                    JSONObject jSONObjectOptJSONObject;
                                    xh1 xh1Var2 = xh1Var;
                                    String str = (String) obj;
                                    ad0 ad0Var = (ad0) obj2;
                                    g8 g8Var = (g8) ((n03) xh1Var2.n).get();
                                    if (g8Var == null) {
                                        return;
                                    }
                                    JSONObject jSONObject = ad0Var.e;
                                    if (jSONObject.length() < 1) {
                                        return;
                                    }
                                    JSONObject jSONObject2 = ad0Var.b;
                                    if (jSONObject2.length() >= 1 && (jSONObjectOptJSONObject = jSONObject.optJSONObject(str)) != null) {
                                        String strOptString = jSONObjectOptJSONObject.optString("choiceId");
                                        if (strOptString.isEmpty()) {
                                            return;
                                        }
                                        synchronized (((Map) xh1Var2.o)) {
                                            try {
                                                if (strOptString.equals(((Map) xh1Var2.o).get(str))) {
                                                    return;
                                                }
                                                ((Map) xh1Var2.o).put(str, strOptString);
                                                Bundle bundle = new Bundle();
                                                bundle.putString("arm_key", str);
                                                bundle.putString("arm_value", jSONObject2.optString(str));
                                                bundle.putString("personalization_id", jSONObjectOptJSONObject.optString("personalizationId"));
                                                bundle.putInt("arm_index", jSONObjectOptJSONObject.optInt("armIndex", -1));
                                                bundle.putString("group", jSONObjectOptJSONObject.optString("group"));
                                                h8 h8Var = (h8) g8Var;
                                                h8Var.a("fp", "personalization_assignment", bundle);
                                                Bundle bundle2 = new Bundle();
                                                bundle2.putString("_fpid", strOptString);
                                                h8Var.a("fp", "_fpc", bundle2);
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                    }
                                }
                            };
                            synchronized (fd0Var.a) {
                                fd0Var.a.add(biConsumer);
                            }
                        }
                        xh1 xh1Var2 = new xh1();
                        xh1Var2.n = yc0VarC2;
                        xh1Var2.o = yc0VarC3;
                        ScheduledExecutorService scheduledExecutorService = this.c;
                        qd1Var = new qd1(12, z);
                        qd1Var.r = Collections.newSetFromMap(new ConcurrentHashMap());
                        qd1Var.o = yc0VarC2;
                        qd1Var.p = xh1Var2;
                        qd1Var.q = scheduledExecutorService;
                    } catch (Throwable th) {
                        s53Var = this;
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    s53Var = this;
                }
            } catch (Throwable th3) {
                th = th3;
                s53Var = this;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
        }
        return b(this.d, this.e, this.f, this.c, yc0VarC, yc0VarC2, yc0VarC3, d(yc0VarC, jd0Var), fd0Var, jd0Var, qd1Var);
    }

    public final synchronized s61 b(e61 e61Var, n61 n61Var, a61 a61Var, Executor executor, yc0 yc0Var, yc0 yc0Var2, yc0 yc0Var3, ed0 ed0Var, fd0 fd0Var, jd0 jd0Var, qd1 qd1Var) {
        if (!this.a.containsKey("firebase")) {
            e61Var.a();
            a61 a61Var2 = e61Var.b.equals("[DEFAULT]") ? a61Var : null;
            Context context = this.b;
            synchronized (this) {
                s61 s61Var = new s61(a61Var2, executor, yc0Var, yc0Var2, yc0Var3, ed0Var, fd0Var, jd0Var, new gw4(e61Var, n61Var, ed0Var, yc0Var2, context, jd0Var, this.c), qd1Var);
                yc0Var2.b();
                yc0Var3.b();
                yc0Var.b();
                this.a.put("firebase", s61Var);
                l.put("firebase", s61Var);
            }
        }
        return (s61) this.a.get("firebase");
    }

    public final yc0 c(String str) {
        kd0 kd0Var;
        yc0 yc0Var;
        String strR = xw1.r("frc_", this.h, "_firebase_", str, ".json");
        ScheduledExecutorService scheduledExecutorService = this.c;
        Context context = this.b;
        HashMap map = kd0.c;
        synchronized (kd0.class) {
            try {
                HashMap map2 = kd0.c;
                if (!map2.containsKey(strR)) {
                    map2.put(strR, new kd0(context, strR));
                }
                kd0Var = (kd0) map2.get(strR);
            } finally {
            }
        }
        HashMap map3 = yc0.d;
        synchronized (yc0.class) {
            try {
                String str2 = kd0Var.b;
                HashMap map4 = yc0.d;
                if (!map4.containsKey(str2)) {
                    map4.put(str2, new yc0(scheduledExecutorService, kd0Var));
                }
                yc0Var = (yc0) map4.get(str2);
            } finally {
            }
        }
        return yc0Var;
    }

    public final synchronized ed0 d(yc0 yc0Var, jd0 jd0Var) {
        ed0 ed0Var;
        try {
            n61 n61Var = this.e;
            e61 e61Var = this.d;
            e61Var.a();
            Object ea0Var = e61Var.b.equals("[DEFAULT]") ? this.g : new ea0(6);
            ScheduledExecutorService scheduledExecutorService = this.c;
            Clock clock = j;
            Random random = k;
            e61 e61Var2 = this.d;
            e61Var2.a();
            String str = e61Var2.c.a;
            e61 e61Var3 = this.d;
            e61Var3.a();
            ConfigFetchHttpClient configFetchHttpClient = new ConfigFetchHttpClient(this.b, e61Var3.c.b, str, jd0Var.a.getLong("fetch_timeout_in_seconds", 60L), jd0Var.a.getLong("fetch_timeout_in_seconds", 60L));
            HashMap map = this.i;
            ed0Var = new ed0();
            ed0Var.a = n61Var;
            ed0Var.b = ea0Var;
            ed0Var.c = scheduledExecutorService;
            ed0Var.d = clock;
            ed0Var.e = random;
            ed0Var.f = yc0Var;
            ed0Var.g = configFetchHttpClient;
            ed0Var.h = jd0Var;
            ed0Var.i = map;
        } catch (Throwable th) {
            throw th;
        }
        return ed0Var;
    }
}
