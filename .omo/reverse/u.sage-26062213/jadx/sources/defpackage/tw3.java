package defpackage;

import java.util.ArrayList;
import java.util.TimeZone;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tw3 {
    public static final Logger k;
    public static final tw3 l;
    public final ra3 a;
    public final Logger b;
    public int c;
    public boolean d;
    public long e;
    public int f;
    public int g;
    public final ArrayList h;
    public final ArrayList i;
    public final o9 j;

    static {
        Logger logger = Logger.getLogger(tw3.class.getName());
        logger.getClass();
        k = logger;
        l = new tw3(new ra3(new gi4(xw1.s(new StringBuilder(), hi4.b, " TaskRunner"), true)));
    }

    public tw3(ra3 ra3Var) {
        Logger logger = k;
        logger.getClass();
        this.a = ra3Var;
        this.b = logger;
        this.c = 10000;
        this.h = new ArrayList();
        this.i = new ArrayList();
        this.j = new o9(11, this);
    }

    public static final void a(tw3 tw3Var, nw3 nw3Var, long j, boolean z) {
        TimeZone timeZone = hi4.a;
        sw3 sw3Var = nw3Var.c;
        sw3Var.getClass();
        if (sw3Var.d != nw3Var) {
            k21.n("Check failed.");
            return;
        }
        boolean z2 = sw3Var.f;
        sw3Var.f = false;
        sw3Var.d = null;
        tw3Var.h.remove(sw3Var);
        if (j != -1 && !z2 && !sw3Var.c) {
            sw3Var.d(nw3Var, j, true);
        }
        if (sw3Var.e.isEmpty()) {
            return;
        }
        tw3Var.i.add(sw3Var);
        if (z) {
            return;
        }
        tw3Var.e();
    }

    public final nw3 b() {
        long j;
        nw3 nw3Var;
        boolean z;
        TimeZone timeZone = hi4.a;
        while (true) {
            ArrayList arrayList = this.i;
            if (arrayList.isEmpty()) {
                return null;
            }
            long jNanoTime = System.nanoTime();
            int size = arrayList.size();
            long jMin = Long.MAX_VALUE;
            int i = 0;
            nw3 nw3Var2 = null;
            while (true) {
                if (i >= size) {
                    j = jNanoTime;
                    nw3Var = null;
                    z = false;
                    break;
                }
                Object obj = arrayList.get(i);
                i++;
                nw3 nw3Var3 = (nw3) ((sw3) obj).e.get(0);
                j = jNanoTime;
                nw3Var = null;
                long jMax = Math.max(0L, nw3Var3.d - j);
                if (jMax > 0) {
                    jMin = Math.min(jMax, jMin);
                } else {
                    if (nw3Var2 != null) {
                        z = true;
                        break;
                    }
                    nw3Var2 = nw3Var3;
                }
                jNanoTime = j;
            }
            ArrayList arrayList2 = this.h;
            if (nw3Var2 != null) {
                TimeZone timeZone2 = hi4.a;
                nw3Var2.d = -1L;
                sw3 sw3Var = nw3Var2.c;
                sw3Var.getClass();
                sw3Var.e.remove(nw3Var2);
                arrayList.remove(sw3Var);
                sw3Var.d = nw3Var2;
                arrayList2.add(sw3Var);
                if (z || (!this.d && !arrayList.isEmpty())) {
                    e();
                }
                return nw3Var2;
            }
            if (this.d) {
                if (jMin >= this.e - j) {
                    return nw3Var;
                }
                notify();
                return nw3Var;
            }
            this.d = true;
            this.e = j + jMin;
            try {
                try {
                    TimeZone timeZone3 = hi4.a;
                    if (jMin > 0) {
                        long j2 = jMin / 1000000;
                        long j3 = jMin - (1000000 * j2);
                        if (j2 > 0 || jMin > 0) {
                            wait(j2, (int) j3);
                        }
                    }
                } catch (InterruptedException unused) {
                    TimeZone timeZone4 = hi4.a;
                    for (int size2 = arrayList2.size() - 1; -1 < size2; size2--) {
                        ((sw3) arrayList2.get(size2)).a();
                    }
                    for (int size3 = arrayList.size() - 1; -1 < size3; size3--) {
                        sw3 sw3Var2 = (sw3) arrayList.get(size3);
                        sw3Var2.a();
                        if (sw3Var2.e.isEmpty()) {
                            arrayList.remove(size3);
                        }
                    }
                }
            } finally {
                this.d = false;
            }
        }
    }

    public final void c(sw3 sw3Var) {
        sw3Var.getClass();
        TimeZone timeZone = hi4.a;
        if (sw3Var.d == null) {
            boolean zIsEmpty = sw3Var.e.isEmpty();
            ArrayList arrayList = this.i;
            if (zIsEmpty) {
                arrayList.remove(sw3Var);
            } else {
                byte[] bArr = fi4.a;
                arrayList.getClass();
                if (!arrayList.contains(sw3Var)) {
                    arrayList.add(sw3Var);
                }
            }
        }
        if (this.d) {
            notify();
        } else {
            e();
        }
    }

    public final sw3 d() {
        int i;
        synchronized (this) {
            i = this.c;
            this.c = i + 1;
        }
        return new sw3(this, di0.q(i, "Q"));
    }

    public final void e() {
        TimeZone timeZone = hi4.a;
        int i = this.f;
        if (i > this.g) {
            return;
        }
        this.f = i + 1;
        o9 o9Var = this.j;
        o9Var.getClass();
        ((ThreadPoolExecutor) this.a.o).execute(o9Var);
    }
}
