package defpackage;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class o20 extends vu0 implements n20, si0, jc4 {
    public static final /* synthetic */ AtomicIntegerFieldUpdater s = AtomicIntegerFieldUpdater.newUpdater(o20.class, "_decisionAndIndex$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater t = AtomicReferenceFieldUpdater.newUpdater(o20.class, Object.class, "_state$volatile");

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f232u;
    public static final /* synthetic */ long v;
    public static final /* synthetic */ long w;
    private volatile /* synthetic */ int _decisionAndIndex$volatile;
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;
    public final dh0 q;
    public final hi0 r;

    static {
        Unsafe unsafe = sa5.a;
        w = unsafe.objectFieldOffset(o20.class.getDeclaredField("_state$volatile"));
        f232u = AtomicReferenceFieldUpdater.newUpdater(o20.class, Object.class, "_parentHandle$volatile");
        v = unsafe.objectFieldOffset(o20.class.getDeclaredField("_parentHandle$volatile"));
    }

    public o20(int i, dh0 dh0Var) {
        super(i);
        this.q = dh0Var;
        this.r = dh0Var.e();
        this._decisionAndIndex$volatile = 536870911;
        this._state$volatile = y5.a;
    }

    public static void C(Object obj, Object obj2) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + obj + ", already has " + obj2).toString());
    }

    public static Object I(zm2 zm2Var, Object obj, int i, ff1 ff1Var) {
        if (obj instanceof c90) {
            return obj;
        }
        if (i != 1 && i != 2) {
            return obj;
        }
        if (ff1Var != null || (zm2Var instanceof j20)) {
            return new a90(obj, zm2Var instanceof j20 ? (j20) zm2Var : null, ff1Var, (Throwable) null, 16);
        }
        return obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x00ce, code lost:
    
        C(r11, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00d1, code lost:
    
        throw null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A(defpackage.zm2 r11) {
        /*
            Method dump skipped, instruction units count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.o20.A(zm2):void");
    }

    public final boolean B() {
        return this.p == 2 && ((su0) this.q).q();
    }

    public String D() {
        return "CancellableContinuation";
    }

    public final void E() {
        Throwable thT;
        dh0 dh0Var = this.q;
        su0 su0Var = dh0Var instanceof su0 ? (su0) dh0Var : null;
        if (su0Var == null || (thT = su0Var.t(this)) == null) {
            return;
        }
        q();
        l(thT);
    }

    public final boolean F() {
        t.getClass();
        Unsafe unsafe = sa5.a;
        long j = w;
        Object objectVolatile = unsafe.getObjectVolatile(this, j);
        if ((objectVolatile instanceof a90) && ((a90) objectVolatile).d != null) {
            q();
            return false;
        }
        s.set(this, 536870911);
        unsafe.putObjectVolatile(this, j, y5.a);
        return true;
    }

    public final void G(Object obj, int i, ff1 ff1Var) throws ru0 {
        o20 o20Var;
        while (true) {
            t.getClass();
            Unsafe unsafe = sa5.a;
            long j = w;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            if (!(objectVolatile instanceof zm2)) {
                o20 o20Var2 = this;
                if (objectVolatile instanceof t20) {
                    t20 t20Var = (t20) objectVolatile;
                    if (t20.c.compareAndSet(t20Var, 0, 1)) {
                        if (ff1Var != null) {
                            o20Var2.o(ff1Var, t20Var.a, obj);
                            return;
                        }
                        return;
                    }
                }
                mk0.k(obj, "Already resumed, but proposed with update ");
                return;
            }
            Object objI = I((zm2) objectVolatile, obj, i, ff1Var);
            while (true) {
                Unsafe unsafe2 = sa5.a;
                o20Var = this;
                if (unsafe2.compareAndSwapObject(o20Var, w, objectVolatile, objI)) {
                    if (!o20Var.B()) {
                        o20Var.q();
                    }
                    o20Var.s(i);
                    return;
                } else if (unsafe2.getObjectVolatile(o20Var, j) != objectVolatile) {
                    break;
                } else {
                    this = o20Var;
                }
            }
            this = o20Var;
        }
    }

    public final void H(ji0 ji0Var) throws ru0 {
        dh0 dh0Var = this.q;
        su0 su0Var = dh0Var instanceof su0 ? (su0) dh0Var : null;
        G(t64.a, (su0Var != null ? su0Var.q : null) == ji0Var ? 4 : this.p, null);
    }

    public final sg0 J(Object obj, ff1 ff1Var) {
        o20 o20Var;
        while (true) {
            t.getClass();
            Unsafe unsafe = sa5.a;
            long j = w;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            if (!(objectVolatile instanceof zm2)) {
                return null;
            }
            Object objI = I((zm2) objectVolatile, obj, this.p, ff1Var);
            while (true) {
                Unsafe unsafe2 = sa5.a;
                o20Var = this;
                if (unsafe2.compareAndSwapObject(o20Var, w, objectVolatile, objI)) {
                    boolean zB = o20Var.B();
                    sg0 sg0Var = p20.a;
                    if (!zB) {
                        o20Var.q();
                    }
                    return sg0Var;
                }
                if (unsafe2.getObjectVolatile(o20Var, j) != objectVolatile) {
                    break;
                }
                this = o20Var;
            }
            this = o20Var;
        }
    }

    @Override // defpackage.jc4
    public final void a(rg3 rg3Var, int i) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i2;
        do {
            atomicIntegerFieldUpdater = s;
            i2 = atomicIntegerFieldUpdater.get(this);
            if ((i2 & 536870911) != 536870911) {
                k21.n("invokeOnCancellation should be called at most once");
                return;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i2, ((i2 >> 29) << 29) + i));
        A(rg3Var);
    }

    @Override // defpackage.vu0
    public final void b(CancellationException cancellationException) {
        CancellationException cancellationException2;
        o20 o20Var;
        while (true) {
            t.getClass();
            Unsafe unsafe = sa5.a;
            long j = w;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            if (objectVolatile instanceof zm2) {
                k21.n("Not completed");
                return;
            }
            if (objectVolatile instanceof c90) {
                return;
            }
            if (objectVolatile instanceof a90) {
                a90 a90Var = (a90) objectVolatile;
                if (a90Var.e != null) {
                    k21.n("Must be called at most once");
                    return;
                }
                a90 a90VarA = a90.a(a90Var, null, cancellationException, 15);
                while (true) {
                    Unsafe unsafe2 = sa5.a;
                    o20 o20Var2 = this;
                    if (unsafe2.compareAndSwapObject(o20Var2, w, objectVolatile, a90VarA)) {
                        j20 j20Var = a90Var.b;
                        if (j20Var != null) {
                            o20Var2.n(j20Var, cancellationException);
                        }
                        ff1 ff1Var = a90Var.c;
                        if (ff1Var != null) {
                            o20Var2.o(ff1Var, cancellationException, a90Var.a);
                            return;
                        }
                        return;
                    }
                    if (unsafe2.getObjectVolatile(o20Var2, j) != objectVolatile) {
                        cancellationException2 = cancellationException;
                        o20Var = o20Var2;
                        break;
                    }
                    this = o20Var2;
                }
            } else {
                o20 o20Var3 = this;
                CancellationException cancellationException3 = cancellationException;
                a90 a90Var2 = new a90(objectVolatile, (j20) null, (ff1) null, cancellationException3, 14);
                cancellationException2 = cancellationException3;
                while (true) {
                    a90 a90Var3 = a90Var2;
                    Unsafe unsafe3 = sa5.a;
                    o20Var = o20Var3;
                    boolean zCompareAndSwapObject = unsafe3.compareAndSwapObject(o20Var, w, objectVolatile, a90Var3);
                    a90Var2 = a90Var3;
                    if (zCompareAndSwapObject) {
                        return;
                    }
                    if (unsafe3.getObjectVolatile(o20Var, j) != objectVolatile) {
                        break;
                    } else {
                        o20Var3 = o20Var;
                    }
                }
            }
            cancellationException = cancellationException2;
            this = o20Var;
        }
    }

    @Override // defpackage.si0
    public final si0 c() {
        dh0 dh0Var = this.q;
        if (dh0Var instanceof si0) {
            return (si0) dh0Var;
        }
        return null;
    }

    @Override // defpackage.vu0
    public final dh0 d() {
        return this.q;
    }

    @Override // defpackage.dh0
    public final hi0 e() {
        return this.r;
    }

    @Override // defpackage.vu0
    public final Throwable f(Object obj) {
        Throwable thF = super.f(obj);
        if (thF != null) {
            return thF;
        }
        return null;
    }

    @Override // defpackage.dh0
    public final void g(Object obj) {
        Throwable thA = g83.a(obj);
        if (thA != null) {
            obj = new c90(thA, false);
        }
        G(obj, this.p, null);
    }

    @Override // defpackage.n20
    public final void h(Object obj, ff1 ff1Var) throws ru0 {
        G(obj, this.p, ff1Var);
    }

    @Override // defpackage.n20
    public final sg0 i(Object obj, ff1 ff1Var) {
        return J(obj, ff1Var);
    }

    @Override // defpackage.vu0
    public final Object j(Object obj) {
        return obj instanceof a90 ? ((a90) obj).a : obj;
    }

    @Override // defpackage.n20
    public final boolean l(Throwable th) {
        Throwable cancellationException;
        o20 o20Var;
        while (true) {
            t.getClass();
            Unsafe unsafe = sa5.a;
            long j = w;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            if (!(objectVolatile instanceof zm2)) {
                return false;
            }
            boolean z = (objectVolatile instanceof j20) || (objectVolatile instanceof rg3);
            if (th == null) {
                cancellationException = new CancellationException("Continuation " + this + " was cancelled normally");
            } else {
                cancellationException = th;
            }
            t20 t20Var = new t20(cancellationException, z);
            while (true) {
                Unsafe unsafe2 = sa5.a;
                o20Var = this;
                if (unsafe2.compareAndSwapObject(o20Var, w, objectVolatile, t20Var)) {
                    zm2 zm2Var = (zm2) objectVolatile;
                    if (zm2Var instanceof j20) {
                        o20Var.n((j20) objectVolatile, th);
                    } else if (zm2Var instanceof rg3) {
                        o20Var.p((rg3) objectVolatile, th);
                    }
                    if (!o20Var.B()) {
                        o20Var.q();
                    }
                    o20Var.s(o20Var.p);
                    return true;
                }
                if (unsafe2.getObjectVolatile(o20Var, j) != objectVolatile) {
                    break;
                }
                this = o20Var;
            }
            this = o20Var;
        }
    }

    @Override // defpackage.vu0
    public final Object m() {
        return w();
    }

    public final void n(j20 j20Var, Throwable th) {
        try {
            switch (j20Var.a) {
                case 0:
                    ((ScheduledFuture) j20Var.b).cancel(false);
                    break;
                case 1:
                    ((pe1) j20Var.b).k(th);
                    break;
                default:
                    ((jv0) j20Var.b).a();
                    break;
            }
        } catch (Throwable th2) {
            qj0.N(this.r, new v00(1, "Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    public final void o(ff1 ff1Var, Throwable th, Object obj) {
        hi0 hi0Var = this.r;
        try {
            ff1Var.d(th, obj, hi0Var);
        } catch (Throwable th2) {
            qj0.N(hi0Var, new v00(1, "Exception in resume onCancellation handler for " + this, th2));
        }
    }

    public final void p(rg3 rg3Var, Throwable th) {
        hi0 hi0Var = this.r;
        int i = s.get(this) & 536870911;
        if (i == 536870911) {
            k21.n("The index for Segment.onCancellation(..) is broken");
            return;
        }
        try {
            rg3Var.l(i, hi0Var);
        } catch (Throwable th2) {
            qj0.N(hi0Var, new v00(1, "Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    public final void q() {
        jv0 jv0VarU = u();
        if (jv0VarU == null) {
            return;
        }
        jv0VarU.a();
        f232u.getClass();
        sa5.a.putObjectVolatile(this, v, tm2.n);
    }

    @Override // defpackage.n20
    public final void r(Object obj) throws ru0 {
        s(this.p);
    }

    public final void s(int i) throws ru0 {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i2;
        do {
            atomicIntegerFieldUpdater = s;
            i2 = atomicIntegerFieldUpdater.get(this);
            int i3 = i2 >> 29;
            if (i3 != 0) {
                if (i3 != 1) {
                    k21.n("Already resumed");
                    return;
                }
                boolean z = i == 4;
                dh0 dh0Var = this.q;
                if (!z && (dh0Var instanceof su0)) {
                    boolean z2 = i == 1 || i == 2;
                    int i4 = this.p;
                    if (z2 == (i4 == 1 || i4 == 2)) {
                        su0 su0Var = (su0) dh0Var;
                        ji0 ji0Var = su0Var.q;
                        hi0 hi0VarE = su0Var.r.e();
                        if (tu0.c(ji0Var, hi0VarE)) {
                            tu0.b(ji0Var, hi0VarE, this);
                            return;
                        }
                        l21 l21VarA = my3.a();
                        if (l21VarA.p >= 4294967296L) {
                            l21VarA.s0(this);
                            return;
                        }
                        l21VarA.t0(true);
                        try {
                            nt1.Q(this, dh0Var, true);
                            do {
                            } while (l21VarA.v0());
                        } finally {
                            try {
                            } finally {
                            }
                        }
                        return;
                    }
                }
                nt1.Q(this, dh0Var, z);
                return;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i2, 1073741824 + (536870911 & i2)));
    }

    public Throwable t(bv1 bv1Var) {
        return bv1Var.N();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(D());
        sb.append('(');
        sb.append(qn0.I(this.q));
        sb.append("){");
        Object objW = w();
        sb.append(objW instanceof zm2 ? "Active" : objW instanceof t20 ? "Cancelled" : "Completed");
        sb.append("}@");
        sb.append(qn0.u(this));
        return sb.toString();
    }

    public final jv0 u() {
        f232u.getClass();
        return (jv0) sa5.a.getObjectVolatile(this, v);
    }

    public final Object v() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i;
        tu1 tu1Var;
        boolean zB = B();
        do {
            atomicIntegerFieldUpdater = s;
            i = atomicIntegerFieldUpdater.get(this);
            int i2 = i >> 29;
            if (i2 != 0) {
                if (i2 != 2) {
                    k21.n("Already suspended");
                    return null;
                }
                if (zB) {
                    E();
                }
                Object objW = w();
                if (objW instanceof c90) {
                    throw ((c90) objW).a;
                }
                int i3 = this.p;
                if ((i3 != 1 && i3 != 2) || (tu1Var = (tu1) this.r.K(mj1.W)) == null || tu1Var.b()) {
                    return j(objW);
                }
                CancellationException cancellationExceptionN = tu1Var.N();
                b(cancellationExceptionN);
                throw cancellationExceptionN;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, 536870912 + (536870911 & i)));
        if (u() == null) {
            y();
        }
        if (zB) {
            E();
        }
        return ri0.n;
    }

    public final Object w() {
        t.getClass();
        return sa5.a.getObjectVolatile(this, w);
    }

    public final void x() {
        jv0 jv0VarY = y();
        if (jv0VarY == null || (w() instanceof zm2)) {
            return;
        }
        jv0VarY.a();
        f232u.getClass();
        sa5.a.putObjectVolatile(this, v, tm2.n);
    }

    public final jv0 y() {
        tu1 tu1Var = (tu1) this.r.K(mj1.W);
        if (tu1Var == null) {
            return null;
        }
        jv0 jv0VarS0 = n44.s0(tu1Var, true, new m40(this));
        while (true) {
            f232u.getClass();
            Unsafe unsafe = sa5.a;
            long j = v;
            o20 o20Var = this;
            if (unsafe.compareAndSwapObject(o20Var, j, (Object) null, jv0VarS0) || unsafe.getObjectVolatile(o20Var, j) != null) {
                break;
            }
            this = o20Var;
        }
        return jv0VarS0;
    }

    public final void z(pe1 pe1Var) {
        A(new j20(1, pe1Var));
    }
}
