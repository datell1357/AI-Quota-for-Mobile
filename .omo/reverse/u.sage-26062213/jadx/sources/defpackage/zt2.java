package defpackage;

import android.os.Trace;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zt2 {
    public final ec0 a;
    public final zb0 b;
    public final ag1 c;
    public final df1 d;
    public final boolean e;
    public final g64 f;
    public final Object g;
    public final AtomicReference h = new AtomicReference(bu2.p);
    public long i = c75.w();
    public lg2 j;
    public final l53 k;
    public final i33 l;

    public zt2(ec0 ec0Var, zb0 zb0Var, ag1 ag1Var, ng2 ng2Var, df1 df1Var, boolean z, g64 g64Var, Object obj) {
        this.a = ec0Var;
        this.b = zb0Var;
        this.c = ag1Var;
        this.d = df1Var;
        this.e = z;
        this.f = g64Var;
        this.g = obj;
        lg2 lg2Var = ud3.a;
        lg2Var.getClass();
        this.j = lg2Var;
        l53 l53Var = new l53();
        l53Var.g(ng2Var, ag1Var.y());
        this.k = l53Var;
        this.l = new i33(g64Var.p);
    }

    public final void a() throws Exception {
        AtomicReference atomicReference = this.h;
        try {
            switch (((bu2) atomicReference.get()).ordinal()) {
                case 0:
                    throw new IllegalStateException("The paused composition is invalid because of a previous exception");
                case 1:
                    throw new IllegalStateException("The paused composition has been cancelled");
                case 2:
                case 3:
                case 4:
                    throw new IllegalStateException("The paused composition has not completed yet");
                case 5:
                    b();
                    bu2 bu2Var = bu2.s;
                    bu2 bu2Var2 = bu2.t;
                    while (!atomicReference.compareAndSet(bu2Var, bu2Var2)) {
                        if (atomicReference.get() != bu2Var) {
                            ix2.b("Unexpected state change from: " + bu2Var + " to: " + bu2Var2 + ".");
                            return;
                        }
                    }
                    return;
                case 6:
                    throw new IllegalStateException("The paused composition has already been applied");
                default:
                    throw new v00(7);
            }
        } catch (Exception e) {
            atomicReference.set(bu2.n);
            throw e;
        }
    }

    public final void b() {
        Trace.beginSection("PausedComposition:applyChanges");
        try {
            synchronized (this.g) {
                try {
                    this.l.a(this.f, this.k);
                    this.k.c();
                    this.k.d();
                } finally {
                    this.k.b();
                    this.a.D = null;
                }
            }
        } finally {
            Trace.endSection();
        }
    }

    public final boolean c() {
        return ((bu2) this.h.get()).compareTo(bu2.s) >= 0;
    }

    public final void d() {
        bu2 bu2Var;
        bu2 bu2Var2;
        boolean z;
        while (true) {
            AtomicReference atomicReference = this.h;
            bu2Var = bu2.q;
            bu2Var2 = bu2.s;
            if (atomicReference.compareAndSet(bu2Var, bu2Var2)) {
                z = true;
                break;
            } else if (atomicReference.get() != bu2Var) {
                z = false;
                break;
            }
        }
        if (z) {
            return;
        }
        ix2.b("Unexpected state change from: " + bu2Var + " to: " + bu2Var2 + ".");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final boolean e(sm3 sm3Var) throws Exception {
        bu2 bu2Var = bu2.r;
        AtomicReference atomicReference = this.h;
        try {
            int iOrdinal = ((bu2) atomicReference.get()).ordinal();
            bu2 bu2Var2 = bu2.q;
            ec0 ec0Var = this.a;
            zb0 zb0Var = this.b;
            switch (iOrdinal) {
                case 0:
                    throw new IllegalStateException("The paused composition is invalid because of a previous exception");
                case 1:
                    throw new IllegalStateException("The paused composition has been cancelled");
                case 2:
                    ag1 ag1Var = this.c;
                    boolean z = this.e;
                    if (z) {
                        ag1Var.z = 0;
                        ag1Var.y = true;
                    }
                    this.j = zb0Var.b(ec0Var, sm3Var, this.d);
                    if (z) {
                        if (ag1Var.F || ag1Var.z != 0) {
                            ix2.a("Cannot disable reuse from root if it was caused by other groups");
                        }
                        ag1Var.z = -1;
                        ag1Var.y = false;
                    }
                    bu2 bu2Var3 = bu2.p;
                    while (true) {
                        if (!atomicReference.compareAndSet(bu2Var3, bu2Var2)) {
                            if (atomicReference.get() != bu2Var3) {
                                ix2.b("Unexpected state change from: " + bu2Var3 + " to: " + bu2Var2 + ".");
                            }
                        }
                    }
                    if (this.j.g()) {
                        d();
                    }
                    return c();
                case 3:
                    while (true) {
                        if (!atomicReference.compareAndSet(bu2Var2, bu2Var)) {
                            if (atomicReference.get() != bu2Var2) {
                                ix2.b("Unexpected state change from: " + bu2Var2 + " to: " + bu2Var + ".");
                            }
                        }
                    }
                    long j = this.i;
                    try {
                        this.i = c75.w();
                        this.j = zb0Var.n(ec0Var, sm3Var, this.j);
                        this.i = j;
                        while (true) {
                            if (!atomicReference.compareAndSet(bu2Var, bu2Var2)) {
                                if (atomicReference.get() != bu2Var) {
                                    ix2.b("Unexpected state change from: " + bu2Var + " to: " + bu2Var2 + ".");
                                }
                            }
                        }
                        if (this.j.g()) {
                            d();
                        }
                        return c();
                    } catch (Throwable th) {
                        this.i = j;
                        while (true) {
                            if (!atomicReference.compareAndSet(bu2Var, bu2Var2)) {
                                if (atomicReference.get() != bu2Var) {
                                    ix2.b("Unexpected state change from: " + bu2Var + " to: " + bu2Var2 + ".");
                                }
                            }
                        }
                        throw th;
                    }
                case 4:
                    wb0.b("Recursive call to resume()");
                    throw new v00(6);
                case 5:
                    throw new IllegalStateException("Pausable composition is complete and apply() should be applied");
                case 6:
                    throw new IllegalStateException("The paused composition has been applied");
                default:
                    throw new v00(7);
            }
        } catch (Exception e) {
            atomicReference.set(bu2.n);
            throw e;
        }
    }
}
