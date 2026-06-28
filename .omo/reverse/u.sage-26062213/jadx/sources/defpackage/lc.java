package defpackage;

import android.os.Looper;
import android.view.Choreographer;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Random;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lc extends ThreadLocal {
    public final /* synthetic */ int a;

    public /* synthetic */ lc(int i) {
        this.a = i;
    }

    @Override // java.lang.ThreadLocal
    public final Object initialValue() {
        switch (this.a) {
            case 0:
                Choreographer choreographer = Choreographer.getInstance();
                Looper looperMyLooper = Looper.myLooper();
                if (looperMyLooper != null) {
                    nc ncVar = new nc(choreographer, w80.p(looperMyLooper));
                    return ca.B(ncVar, ncVar.y);
                }
                k21.n("no Looper on this thread");
                return null;
            case 1:
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
                simpleDateFormat.setLenient(false);
                simpleDateFormat.setTimeZone(hi4.a);
                return simpleDateFormat;
            case 2:
                return new Random();
            case 3:
                im4 im4Var = new im4();
                im4Var.n = 0;
                return im4Var;
            case 4:
                return 0L;
            case 5:
                dm0.R(Thread.currentThread());
                qf5 qf5Var = new qf5();
                qf5Var.a = false;
                qf5Var.b = null;
                Thread threadCurrentThread = Thread.currentThread();
                WeakHashMap weakHashMap = ye5.c;
                synchronized (weakHashMap) {
                    weakHashMap.put(threadCurrentThread, qf5Var);
                    break;
                }
                return qf5Var;
            default:
                return new Random();
        }
    }
}
