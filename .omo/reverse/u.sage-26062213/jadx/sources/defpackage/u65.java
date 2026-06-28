package defpackage;

import android.os.Bundle;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class u65 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ AtomicReference o;
    public final /* synthetic */ m75 p;

    public u65(m75 m75Var, AtomicReference atomicReference, int i) {
        this.n = i;
        switch (i) {
            case 1:
                this.o = atomicReference;
                Objects.requireNonNull(m75Var);
                this.p = m75Var;
                break;
            case 2:
                this.o = atomicReference;
                Objects.requireNonNull(m75Var);
                this.p = m75Var;
                break;
            case 3:
                this.o = atomicReference;
                Objects.requireNonNull(m75Var);
                this.p = m75Var;
                break;
            case 4:
                this.o = atomicReference;
                Objects.requireNonNull(m75Var);
                this.p = m75Var;
                break;
            default:
                this.o = atomicReference;
                Objects.requireNonNull(m75Var);
                this.p = m75Var;
                break;
        }
    }

    private final void a() {
        AtomicReference atomicReference = this.o;
        synchronized (atomicReference) {
            try {
                try {
                    r45 r45Var = (r45) this.p.a;
                    atomicReference.set(Double.valueOf(r45Var.d.F(r45Var.q().B(), e05.e0)));
                } finally {
                    this.o.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.n) {
            case 0:
                AtomicReference atomicReference = this.o;
                synchronized (atomicReference) {
                    try {
                        try {
                            r45 r45Var = (r45) this.p.a;
                            atomicReference.set(Boolean.valueOf(r45Var.d.G(r45Var.q().B(), e05.a0)));
                        } finally {
                        }
                    } finally {
                    }
                }
                return;
            case 1:
                AtomicReference atomicReference2 = this.o;
                synchronized (atomicReference2) {
                    try {
                        try {
                            r45 r45Var2 = (r45) this.p.a;
                            atomicReference2.set(r45Var2.d.C(r45Var2.q().B(), e05.b0));
                        } finally {
                        }
                    } finally {
                    }
                }
                return;
            case 2:
                AtomicReference atomicReference3 = this.o;
                synchronized (atomicReference3) {
                    try {
                        try {
                            r45 r45Var3 = (r45) this.p.a;
                            atomicReference3.set(Long.valueOf(r45Var3.d.D(r45Var3.q().B(), e05.c0)));
                        } finally {
                        }
                    } finally {
                    }
                }
                return;
            case 3:
                AtomicReference atomicReference4 = this.o;
                synchronized (atomicReference4) {
                    try {
                        try {
                            r45 r45Var4 = (r45) this.p.a;
                            atomicReference4.set(Integer.valueOf(r45Var4.d.E(r45Var4.q().B(), e05.d0)));
                        } finally {
                        }
                    } finally {
                    }
                }
                return;
            case 4:
                a();
                return;
            case 5:
                m75 m75Var = this.p;
                f35 f35Var = ((r45) m75Var.a).e;
                r45.j(f35Var);
                Bundle bundleJ = f35Var.n.J();
                o95 o95VarO = ((r45) m75Var.a).o();
                AtomicReference atomicReference5 = this.o;
                o95VarO.v();
                o95VarO.w();
                o95VarO.J(new e30(o95VarO, atomicReference5, o95VarO.L(false), bundleJ, 10, false));
                return;
            default:
                o95 o95VarO2 = ((r45) this.p.a).o();
                wa5 wa5VarY = wa5.Y(v75.r);
                AtomicReference atomicReference6 = this.o;
                o95VarO2.v();
                o95VarO2.w();
                o95VarO2.J(new e30(o95VarO2, atomicReference6, o95VarO2.L(false), wa5VarY, 11, false));
                return;
        }
    }

    public /* synthetic */ u65(m75 m75Var, AtomicReference atomicReference, int i, boolean z) {
        this.n = i;
        this.p = m75Var;
        this.o = atomicReference;
    }
}
