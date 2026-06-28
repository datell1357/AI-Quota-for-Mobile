package defpackage;

import android.util.Log;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Random;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class uc0 {
    public final LinkedHashSet a;
    public final HttpURLConnection b;
    public final ed0 c;
    public final yc0 d;
    public final ur e;
    public final ScheduledExecutorService f;
    public final jd0 i;
    public final Random g = new Random();
    public boolean j = false;
    public final Clock h = DefaultClock.getInstance();

    public uc0(HttpURLConnection httpURLConnection, ed0 ed0Var, yc0 yc0Var, LinkedHashSet linkedHashSet, ur urVar, ScheduledExecutorService scheduledExecutorService, jd0 jd0Var) {
        this.b = httpURLConnection;
        this.c = ed0Var;
        this.d = yc0Var;
        this.a = linkedHashSet;
        this.e = urVar;
        this.f = scheduledExecutorService;
        this.i = jd0Var;
    }

    public final void a(int i, long j) {
        if (i == 0) {
            d(new x61("Unable to fetch the latest version of the template.", 4));
            return;
        }
        this.f.schedule(new tc0(this, i, j), this.g.nextInt(4), TimeUnit.SECONDS);
    }

    public final void b(InputStream inputStream) throws IOException {
        JSONObject jSONObject;
        boolean zIsEmpty;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "utf-8"));
        String strConcat = "";
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                break;
            }
            strConcat = strConcat.concat(line);
            if (line.contains("}")) {
                int iIndexOf = strConcat.indexOf(123);
                int iLastIndexOf = strConcat.lastIndexOf(125);
                strConcat = (iIndexOf < 0 || iLastIndexOf < 0 || iIndexOf >= iLastIndexOf) ? "" : strConcat.substring(iIndexOf, iLastIndexOf + 1);
                if (!strConcat.isEmpty()) {
                    try {
                        jSONObject = new JSONObject(strConcat);
                    } catch (JSONException e) {
                        d(new t61("Unable to parse config update message.", e.getCause()));
                        Log.e("FirebaseRemoteConfig", "Unable to parse latest config update message.", e);
                    }
                    if (jSONObject.has("featureDisabled") && jSONObject.getBoolean("featureDisabled")) {
                        this.e.a(new x61("The server is temporarily unavailable. Try again in a few minutes.", 5));
                        break;
                    }
                    synchronized (this) {
                        zIsEmpty = this.a.isEmpty();
                    }
                    if (zIsEmpty) {
                        break;
                    }
                    if (jSONObject.has("latestTemplateVersionNumber")) {
                        long j = ((jd0) this.c.h).a.getLong("last_template_version", 0L);
                        long j2 = jSONObject.getLong("latestTemplateVersionNumber");
                        if (j2 > j) {
                            a(3, j2);
                        }
                    }
                    if (jSONObject.has("retryIntervalSeconds")) {
                        e(jSONObject.getInt("retryIntervalSeconds"));
                    }
                    strConcat = "";
                } else {
                    continue;
                }
            }
        }
        bufferedReader.close();
    }

    public final void c() {
        HttpURLConnection httpURLConnection = this.b;
        if (httpURLConnection == null) {
            return;
        }
        InputStream inputStream = null;
        try {
            try {
                try {
                    inputStream = httpURLConnection.getInputStream();
                    b(inputStream);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                } catch (IOException e) {
                    Log.d("FirebaseRemoteConfig", "Exception thrown when closing connection stream. Retrying connection...", e);
                }
            } catch (IOException e2) {
                if (!this.j) {
                    Log.d("FirebaseRemoteConfig", "Real-time connection was closed due to an exception.", e2);
                }
                if (inputStream != null) {
                    inputStream.close();
                }
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    inputStream.close();
                } catch (IOException e3) {
                    Log.d("FirebaseRemoteConfig", "Exception thrown when closing connection stream. Retrying connection...", e3);
                }
            }
            throw th;
        }
    }

    public final synchronized void d(u61 u61Var) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((ur) it.next()).a(u61Var);
        }
    }

    public final synchronized void e(int i) {
        Date date = new Date(new Date(this.h.currentTimeMillis()).getTime() + (((long) i) * 1000));
        jd0 jd0Var = this.i;
        synchronized (jd0Var.d) {
            jd0Var.a.edit().putLong("realtime_backoff_end_time_in_millis", date.getTime()).apply();
        }
    }
}
