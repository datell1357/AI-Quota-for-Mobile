package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class su0 extends vu0 implements si0, dh0 {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f322u = AtomicReferenceFieldUpdater.newUpdater(su0.class, Object.class, "_reusableCancellableContinuation$volatile");
    public static final /* synthetic */ long v = sa5.a.objectFieldOffset(su0.class.getDeclaredField("_reusableCancellableContinuation$volatile"));
    private volatile /* synthetic */ Object _reusableCancellableContinuation$volatile;
    public final ji0 q;
    public final fh0 r;
    public Object s;
    public final Object t;

    public su0(ji0 ji0Var, fh0 fh0Var) {
        super(-1);
        this.q = ji0Var;
        this.r = fh0Var;
        this.s = tu0.a;
        this.t = iy3.b(fh0Var.e());
    }

    @Override // defpackage.si0
    public final si0 c() {
        return this.r;
    }

    @Override // defpackage.dh0
    public final hi0 e() {
        return this.r.e();
    }

    @Override // defpackage.dh0
    public final void g(Object obj) throws ru0 {
        Throwable thA = g83.a(obj);
        Object c90Var = thA == null ? obj : new c90(thA, false);
        fh0 fh0Var = this.r;
        hi0 hi0VarE = fh0Var.e();
        ji0 ji0Var = this.q;
        if (tu0.c(ji0Var, hi0VarE)) {
            this.s = c90Var;
            this.p = 0;
            tu0.b(ji0Var, fh0Var.e(), this);
            return;
        }
        l21 l21VarA = my3.a();
        if (l21VarA.p >= 4294967296L) {
            this.s = c90Var;
            this.p = 0;
            l21VarA.s0(this);
            return;
        }
        l21VarA.t0(true);
        try {
            hi0 hi0VarE2 = fh0Var.e();
            Object objC = iy3.c(hi0VarE2, this.t);
            try {
                fh0Var.g(obj);
                while (l21VarA.v0()) {
                }
            } finally {
                iy3.a(hi0VarE2, objC);
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    @Override // defpackage.vu0
    public final Object m() {
        Object obj = this.s;
        this.s = tu0.a;
        return obj;
    }

    public final void n() {
        do {
            f322u.getClass();
        } while (sa5.a.getObjectVolatile(this, v) == tu0.b);
    }

    public final o20 o() {
        su0 su0Var;
        while (true) {
            f322u.getClass();
            Unsafe unsafe = sa5.a;
            long j = v;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            sg0 sg0Var = tu0.b;
            if (objectVolatile == null) {
                unsafe.putObjectVolatile(this, j, sg0Var);
                return null;
            }
            if (objectVolatile instanceof o20) {
                while (true) {
                    Unsafe unsafe2 = sa5.a;
                    su0Var = this;
                    if (unsafe2.compareAndSwapObject(su0Var, v, objectVolatile, sg0Var)) {
                        return (o20) objectVolatile;
                    }
                    if (unsafe2.getObjectVolatile(su0Var, j) != objectVolatile) {
                        break;
                    }
                    this = su0Var;
                }
            } else {
                su0Var = this;
                if (objectVolatile != sg0Var && !(objectVolatile instanceof Throwable)) {
                    mk0.k(objectVolatile, "Inconsistent state ");
                    return null;
                }
            }
            this = su0Var;
        }
    }

    public final o20 p() {
        f322u.getClass();
        Object objectVolatile = sa5.a.getObjectVolatile(this, v);
        if (objectVolatile instanceof o20) {
            return (o20) objectVolatile;
        }
        return null;
    }

    public final boolean q() {
        f322u.getClass();
        return sa5.a.getObjectVolatile(this, v) != null;
    }

    public final boolean s(Throwable th) {
        su0 su0Var;
        Throwable th2;
        Unsafe unsafe;
        while (true) {
            f322u.getClass();
            Unsafe unsafe2 = sa5.a;
            long j = v;
            Object objectVolatile = unsafe2.getObjectVolatile(this, j);
            sg0 sg0Var = tu0.b;
            if (nt1.g(objectVolatile, sg0Var)) {
                while (true) {
                    Unsafe unsafe3 = sa5.a;
                    su0 su0Var2 = this;
                    th2 = th;
                    su0Var = su0Var2;
                    if (unsafe3.compareAndSwapObject(su0Var2, v, sg0Var, th2)) {
                        return true;
                    }
                    if (unsafe3.getObjectVolatile(su0Var, j) != sg0Var) {
                        break;
                    }
                    this = su0Var;
                    th = th2;
                }
            } else {
                su0Var = this;
                th2 = th;
                if (objectVolatile instanceof Throwable) {
                    return true;
                }
                do {
                    unsafe = sa5.a;
                    if (unsafe.compareAndSwapObject(su0Var, v, objectVolatile, (Object) null)) {
                        return false;
                    }
                } while (unsafe.getObjectVolatile(su0Var, j) == objectVolatile);
            }
            this = su0Var;
            th = th2;
        }
    }

    public final Throwable t(o20 o20Var) {
        Unsafe unsafe;
        su0 su0Var;
        o20 o20Var2;
        while (true) {
            f322u.getClass();
            Unsafe unsafe2 = sa5.a;
            long j = v;
            Object objectVolatile = unsafe2.getObjectVolatile(this, j);
            sg0 sg0Var = tu0.b;
            if (objectVolatile != sg0Var) {
                su0 su0Var2 = this;
                if (!(objectVolatile instanceof Throwable)) {
                    mk0.k(objectVolatile, "Inconsistent state ");
                    return null;
                }
                do {
                    unsafe = sa5.a;
                    if (unsafe.compareAndSwapObject(su0Var2, v, objectVolatile, (Object) null)) {
                        return (Throwable) objectVolatile;
                    }
                } while (unsafe.getObjectVolatile(su0Var2, j) == objectVolatile);
                k21.f("Failed requirement.");
                return null;
            }
            while (true) {
                Unsafe unsafe3 = sa5.a;
                su0Var = this;
                o20Var2 = o20Var;
                if (unsafe3.compareAndSwapObject(su0Var, v, sg0Var, o20Var2)) {
                    return null;
                }
                if (unsafe3.getObjectVolatile(su0Var, j) != sg0Var) {
                    break;
                }
                this = su0Var;
                o20Var = o20Var2;
            }
            this = su0Var;
            o20Var = o20Var2;
        }
    }

    public final String toString() {
        return "DispatchedContinuation[" + this.q + ", " + qn0.I(this.r) + ']';
    }

    @Override // defpackage.vu0
    public final dh0 d() {
        return this;
    }
}
