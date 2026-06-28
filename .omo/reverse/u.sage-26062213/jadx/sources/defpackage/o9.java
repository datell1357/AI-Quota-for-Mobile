package defpackage;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o9 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;

    public o9(q25 q25Var, boolean z) {
        this.n = 16;
        this.o = q25Var;
    }

    private final void a() {
        nw3 nw3VarB;
        long jNanoTime;
        nw3 nw3VarB2;
        tw3 tw3Var = (tw3) this.o;
        synchronized (tw3Var) {
            tw3Var.g++;
            nw3VarB = tw3Var.b();
        }
        if (nw3VarB == null) {
            return;
        }
        Thread threadCurrentThread = Thread.currentThread();
        String name = threadCurrentThread.getName();
        while (true) {
            try {
                threadCurrentThread.setName(nw3VarB.a);
                Logger logger = ((tw3) this.o).b;
                sw3 sw3Var = nw3VarB.c;
                sw3Var.getClass();
                boolean zIsLoggable = logger.isLoggable(Level.FINE);
                if (zIsLoggable) {
                    jNanoTime = System.nanoTime();
                    qn0.g(logger, nw3VarB, sw3Var, "starting");
                } else {
                    jNanoTime = -1;
                }
                try {
                    long jA = nw3VarB.a();
                    if (zIsLoggable) {
                        qn0.g(logger, nw3VarB, sw3Var, "finished run in " + qn0.q(System.nanoTime() - jNanoTime));
                    }
                    tw3 tw3Var2 = (tw3) this.o;
                    synchronized (tw3Var2) {
                        tw3.a(tw3Var2, nw3VarB, jA, true);
                        nw3VarB2 = tw3Var2.b();
                    }
                    if (nw3VarB2 == null) {
                        return;
                    } else {
                        nw3VarB = nw3VarB2;
                    }
                } catch (Throwable th) {
                    if (zIsLoggable) {
                        qn0.g(logger, nw3VarB, sw3Var, "failed a run in " + qn0.q(System.nanoTime() - jNanoTime));
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    tw3 tw3Var3 = (tw3) this.o;
                    synchronized (tw3Var3) {
                        tw3.a(tw3Var3, nw3VarB, -1L, false);
                        if (!(th2 instanceof InterruptedException)) {
                            throw th2;
                        }
                        Thread.currentThread().interrupt();
                        return;
                    }
                } finally {
                    threadCurrentThread.setName(name);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:188:0x050f  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0276  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instruction units count: 1362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.o9.run():void");
    }

    public /* synthetic */ o9(int i, Object obj) {
        this.n = i;
        this.o = obj;
    }

    public o9(pb5 pb5Var, rb5 rb5Var) {
        this.n = 20;
        this.o = pb5Var;
    }
}
