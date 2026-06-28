package defpackage;

import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class j23 extends nw3 {
    public final /* synthetic */ int e = 0;
    public final /* synthetic */ Object f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j23(az0 az0Var, String str) {
        super(str);
        this.f = az0Var;
    }

    @Override // defpackage.nw3
    public final long a() {
        switch (this.e) {
            case 0:
                az0 az0Var = (az0) this.f;
                long jNanoTime = System.nanoTime();
                long j = (jNanoTime - az0Var.a) + 1;
                Iterator it = ((ConcurrentLinkedQueue) az0Var.d).iterator();
                it.getClass();
                i23 i23Var = null;
                long j2 = Long.MAX_VALUE;
                int i = 0;
                i23 i23Var2 = null;
                i23 i23Var3 = null;
                int i2 = 0;
                while (it.hasNext()) {
                    i23 i23Var4 = (i23) it.next();
                    i23Var4.getClass();
                    synchronized (i23Var4) {
                        if (az0Var.a(i23Var4, jNanoTime) > 0) {
                            i2++;
                        } else {
                            long j3 = i23Var4.q;
                            if (j3 < j) {
                                j = j3;
                                i23Var2 = i23Var4;
                            }
                            i++;
                            if (j3 < j2) {
                                j2 = j3;
                                i23Var3 = i23Var4;
                            }
                        }
                    }
                }
                if (i23Var2 != null) {
                    i23Var = i23Var2;
                } else if (i > 5) {
                    j = j2;
                    i23Var = i23Var3;
                } else {
                    j = -1;
                }
                if (i23Var == null) {
                    if (i23Var3 != null) {
                        return (j2 + az0Var.a) - jNanoTime;
                    }
                    if (i2 > 0) {
                        return az0Var.a;
                    }
                    return -1L;
                }
                synchronized (i23Var) {
                    if (i23Var.p.isEmpty() && i23Var.q == j) {
                        i23Var.j = true;
                        ((ConcurrentLinkedQueue) az0Var.d).remove(i23Var);
                        hi4.b(i23Var.e);
                        if (!((ConcurrentLinkedQueue) az0Var.d).isEmpty()) {
                            return 0L;
                        }
                        sw3 sw3Var = (sw3) az0Var.b;
                        synchronized (sw3Var.a) {
                            if (sw3Var.a()) {
                                sw3Var.a.c(sw3Var);
                            }
                            break;
                        }
                        return 0L;
                    }
                    return 0L;
                }
            default:
                ((ne1) this.f).a();
                return -1L;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j23(String str, ne1 ne1Var) {
        super(str);
        this.f = ne1Var;
    }
}
