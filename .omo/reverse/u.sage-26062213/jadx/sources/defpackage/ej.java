package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ej implements Runnable {
    public static Handler t;
    public boolean r;
    public final /* synthetic */ fj s;
    public volatile int o = 1;
    public final AtomicBoolean p = new AtomicBoolean();
    public final AtomicBoolean q = new AtomicBoolean();
    public final jd2 n = new jd2(this, new id2(0, this));

    public ej(fj fjVar) {
        this.s = fjVar;
    }

    public final void a(Object obj) {
        Handler handler;
        synchronized (ej.class) {
            try {
                if (t == null) {
                    t = new Handler(Looper.getMainLooper());
                }
                handler = t;
            } catch (Throwable th) {
                throw th;
            }
        }
        handler.post(new rf1(8, (Object) this, obj, false));
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.r = false;
        this.s.executePendingTask();
    }
}
