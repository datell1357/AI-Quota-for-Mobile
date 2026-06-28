package defpackage;

import android.os.Process;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gj extends Thread {
    public final /* synthetic */ int n = 0;

    public /* synthetic */ gj(String str) {
        super(str);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        ReentrantLock reentrantLock;
        switch (this.n) {
            case 0:
                break;
            default:
                Process.setThreadPriority(19);
                synchronized (this) {
                    while (true) {
                        try {
                            wait();
                        } catch (InterruptedException unused) {
                            return;
                        }
                    }
                }
                break;
        }
        while (true) {
            try {
                d90 d90Var = hj.h;
                reentrantLock = hj.j;
                reentrantLock.lock();
            } catch (InterruptedException unused2) {
            }
            try {
                hj hjVarM = qv3.m();
                if (hjVarM == hj.i) {
                    hj.i = null;
                    reentrantLock.unlock();
                    return;
                } else {
                    reentrantLock.unlock();
                    if (hjVarM != null) {
                        hjVarM.k();
                    }
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
    }

    public /* synthetic */ gj(ThreadGroup threadGroup, String str) {
        super(threadGroup, str);
    }
}
