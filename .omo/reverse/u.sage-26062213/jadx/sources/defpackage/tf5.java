package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.RemoteException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tf5 {
    public static final HashMap n = new HashMap();
    public final Context a;
    public final sg0 b;
    public boolean g;
    public final Intent h;
    public ff5 l;
    public bz4 m;
    public final ArrayList d = new ArrayList();
    public final HashSet e = new HashSet();
    public final Object f = new Object();
    public final jb5 j = new IBinder.DeathRecipient() { // from class: jb5
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            tf5 tf5Var = this.a;
            int i = 0;
            tf5Var.b.a("reportBinderDeath", new Object[0]);
            if (tf5Var.i.get() != null) {
                mk0.b();
                return;
            }
            tf5Var.b.a("%s : Binder has died.", tf5Var.c);
            ArrayList arrayList = tf5Var.d;
            int size = arrayList.size();
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                RemoteException remoteException = new RemoteException(String.valueOf(tf5Var.c).concat(" : Binder has died."));
                pw3 pw3Var = ((f95) obj).n;
                if (pw3Var != null) {
                    pw3Var.c(remoteException);
                }
            }
            tf5Var.d.clear();
            synchronized (tf5Var.f) {
                tf5Var.d();
            }
        }
    };
    public final AtomicInteger k = new AtomicInteger(0);
    public final String c = "AppUpdateService";
    public final WeakReference i = new WeakReference(null);

    /* JADX WARN: Type inference failed for: r0v3, types: [jb5] */
    public tf5(Context context, sg0 sg0Var, Intent intent) {
        this.a = context;
        this.b = sg0Var;
        this.h = intent;
    }

    public static void b(tf5 tf5Var, d85 d85Var) {
        bz4 bz4Var = tf5Var.m;
        sg0 sg0Var = tf5Var.b;
        ArrayList arrayList = tf5Var.d;
        int i = 0;
        if (bz4Var != null || tf5Var.g) {
            if (!tf5Var.g) {
                d85Var.run();
                return;
            } else {
                sg0Var.a("Waiting to bind to the service.", new Object[0]);
                arrayList.add(d85Var);
                return;
            }
        }
        sg0Var.a("Initiate binding to the service.", new Object[0]);
        arrayList.add(d85Var);
        ff5 ff5Var = new ff5(tf5Var);
        tf5Var.l = ff5Var;
        tf5Var.g = true;
        if (tf5Var.a.bindService(tf5Var.h, ff5Var, 1)) {
            return;
        }
        sg0Var.a("Failed to bind to the service.", new Object[0]);
        tf5Var.g = false;
        int size = arrayList.size();
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            v00 v00Var = new v00("Failed to bind to the service.", 13);
            pw3 pw3Var = ((f95) obj).n;
            if (pw3Var != null) {
                pw3Var.c(v00Var);
            }
        }
        arrayList.clear();
    }

    public final Handler a() {
        Handler handler;
        HashMap map = n;
        synchronized (map) {
            try {
                if (!map.containsKey(this.c)) {
                    HandlerThread handlerThread = new HandlerThread(this.c, 10);
                    handlerThread.start();
                    map.put(this.c, new Handler(handlerThread.getLooper()));
                }
                handler = (Handler) map.get(this.c);
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    public final void c(pw3 pw3Var) {
        synchronized (this.f) {
            this.e.remove(pw3Var);
        }
        a().post(new xc5(0, this));
    }

    public final void d() {
        HashSet hashSet = this.e;
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((pw3) it.next()).c(new RemoteException(String.valueOf(this.c).concat(" : Binder has died.")));
        }
        hashSet.clear();
    }
}
