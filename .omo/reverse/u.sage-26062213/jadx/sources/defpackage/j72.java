package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class j72 {
    public static final /* synthetic */ AtomicReferenceFieldUpdater a = AtomicReferenceFieldUpdater.newUpdater(j72.class, Object.class, "_cur$volatile");
    public static final /* synthetic */ long b = sa5.a.objectFieldOffset(j72.class.getDeclaredField("_cur$volatile"));
    private volatile /* synthetic */ Object _cur$volatile = new l72(8, false);

    public final boolean a(Runnable runnable) {
        j72 j72Var;
        while (true) {
            a.getClass();
            Unsafe unsafe = sa5.a;
            long j = b;
            l72 l72Var = (l72) unsafe.getObjectVolatile(this, j);
            int iA = l72Var.a(runnable);
            if (iA == 0) {
                return true;
            }
            if (iA == 1) {
                l72 l72VarD = l72Var.d();
                while (true) {
                    Unsafe unsafe2 = sa5.a;
                    j72Var = this;
                    if (!unsafe2.compareAndSwapObject(j72Var, b, l72Var, l72VarD) && unsafe2.getObjectVolatile(j72Var, j) == l72Var) {
                        this = j72Var;
                    }
                }
            } else {
                if (iA == 2) {
                    return false;
                }
                j72Var = this;
            }
            this = j72Var;
        }
    }

    public final void b() {
        j72 j72Var;
        while (true) {
            a.getClass();
            Unsafe unsafe = sa5.a;
            long j = b;
            l72 l72Var = (l72) unsafe.getObjectVolatile(this, j);
            if (l72Var.c()) {
                return;
            }
            l72 l72VarD = l72Var.d();
            while (true) {
                Unsafe unsafe2 = sa5.a;
                j72Var = this;
                if (!unsafe2.compareAndSwapObject(j72Var, b, l72Var, l72VarD) && unsafe2.getObjectVolatile(j72Var, j) == l72Var) {
                    this = j72Var;
                }
            }
            this = j72Var;
        }
    }

    public final int c() {
        a.getClass();
        l72 l72Var = (l72) sa5.a.getObjectVolatile(this, b);
        l72Var.getClass();
        long j = l72.f.get(l72Var);
        return 1073741823 & (((int) ((j & 1152921503533105152L) >> 30)) - ((int) (1073741823 & j)));
    }

    public final Object d() {
        j72 j72Var;
        while (true) {
            a.getClass();
            Unsafe unsafe = sa5.a;
            long j = b;
            l72 l72Var = (l72) unsafe.getObjectVolatile(this, j);
            Object objE = l72Var.e();
            if (objE != l72.g) {
                return objE;
            }
            l72 l72VarD = l72Var.d();
            while (true) {
                Unsafe unsafe2 = sa5.a;
                j72Var = this;
                if (!unsafe2.compareAndSwapObject(j72Var, b, l72Var, l72VarD) && unsafe2.getObjectVolatile(j72Var, j) == l72Var) {
                    this = j72Var;
                }
            }
            this = j72Var;
        }
    }
}
