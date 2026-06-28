package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class rc0 {
    public static final /* synthetic */ AtomicReferenceFieldUpdater a = AtomicReferenceFieldUpdater.newUpdater(rc0.class, Object.class, "_next$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater b;
    public static final /* synthetic */ long c;
    public static final /* synthetic */ long d;
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ Object _prev$volatile;

    static {
        Unsafe unsafe = sa5.a;
        c = unsafe.objectFieldOffset(rc0.class.getDeclaredField("_next$volatile"));
        b = AtomicReferenceFieldUpdater.newUpdater(rc0.class, Object.class, "_prev$volatile");
        d = unsafe.objectFieldOffset(rc0.class.getDeclaredField("_prev$volatile"));
    }

    public rc0(rg3 rg3Var) {
        this._prev$volatile = rg3Var;
    }

    public final void a() {
        b.getClass();
        sa5.a.putObjectVolatile(this, d, (Object) null);
    }

    public final rc0 b() {
        rc0 rc0VarE = e();
        while (rc0VarE != null && rc0VarE.f()) {
            b.getClass();
            rc0VarE = (rc0) sa5.a.getObjectVolatile(rc0VarE, d);
        }
        return rc0VarE;
    }

    public final rc0 c() {
        Object objD = d();
        if (objD == qc0.a) {
            return null;
        }
        return (rc0) objD;
    }

    public final Object d() {
        a.getClass();
        return sa5.a.getObjectVolatile(this, c);
    }

    public final rc0 e() {
        b.getClass();
        return (rc0) sa5.a.getObjectVolatile(this, d);
    }

    public abstract boolean f();

    public final boolean g() {
        while (true) {
            a.getClass();
            Unsafe unsafe = sa5.a;
            long j = c;
            rc0 rc0Var = this;
            if (unsafe.compareAndSwapObject(rc0Var, j, (Object) null, qc0.a)) {
                return true;
            }
            if (unsafe.getObjectVolatile(rc0Var, j) != null) {
                return false;
            }
            this = rc0Var;
        }
    }

    public final void h() {
        rc0 rc0Var;
        Unsafe unsafe;
        if (c() == null) {
            return;
        }
        while (true) {
            rc0 rc0VarB = b();
            rc0 rc0VarC = c();
            rc0VarC.getClass();
            do {
                rc0Var = rc0VarC;
                if (!rc0Var.f()) {
                    break;
                } else {
                    rc0VarC = rc0Var.c();
                }
            } while (rc0VarC != null);
            while (true) {
                b.getClass();
                Unsafe unsafe2 = sa5.a;
                long j = d;
                Object objectVolatile = unsafe2.getObjectVolatile(rc0Var, j);
                rc0 rc0Var2 = ((rc0) objectVolatile) == null ? null : rc0VarB;
                do {
                    unsafe = sa5.a;
                    if (unsafe.compareAndSwapObject(rc0Var, d, objectVolatile, rc0Var2)) {
                        break;
                    }
                } while (unsafe.getObjectVolatile(rc0Var, j) == objectVolatile);
            }
            if (rc0VarB != null) {
                a.getClass();
                unsafe.putObjectVolatile(rc0VarB, c, rc0Var);
            }
            if (!rc0Var.f() || rc0Var.c() == null) {
                if (rc0VarB == null || !rc0VarB.f()) {
                    return;
                }
            }
        }
    }

    public final boolean i(rg3 rg3Var) {
        while (true) {
            a.getClass();
            Unsafe unsafe = sa5.a;
            long j = c;
            rc0 rc0Var = this;
            rg3 rg3Var2 = rg3Var;
            if (unsafe.compareAndSwapObject(rc0Var, j, (Object) null, rg3Var2)) {
                return true;
            }
            if (unsafe.getObjectVolatile(rc0Var, j) != null) {
                return false;
            }
            this = rc0Var;
            rg3Var = rg3Var2;
        }
    }
}
