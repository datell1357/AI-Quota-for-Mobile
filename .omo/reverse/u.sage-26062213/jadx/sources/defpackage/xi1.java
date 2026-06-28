package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xi1 extends ji0 implements hr0 {
    public final Handler p;
    public final String q;
    public final boolean r;
    public final xi1 s;

    public xi1(Handler handler, String str, boolean z) {
        this.p = handler;
        this.q = str;
        this.r = z;
        this.s = z ? this : new xi1(handler, str, true);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof xi1)) {
            return false;
        }
        xi1 xi1Var = (xi1) obj;
        return xi1Var.p == this.p && xi1Var.r == this.r;
    }

    public final int hashCode() {
        return (this.r ? 1231 : 1237) ^ System.identityHashCode(this.p);
    }

    @Override // defpackage.ji0
    public final void n0(hi0 hi0Var, Runnable runnable) {
        if (this.p.post(runnable)) {
            return;
        }
        r0(hi0Var, runnable);
    }

    @Override // defpackage.ji0
    public final boolean p0(hi0 hi0Var) {
        return (this.r && nt1.g(Looper.myLooper(), this.p.getLooper())) ? false : true;
    }

    @Override // defpackage.ji0
    public final ji0 q0(int i) {
        c75.p(i);
        return this;
    }

    @Override // defpackage.hr0
    public final jv0 r(long j, oz3 oz3Var, hi0 hi0Var) {
        if (j > 4611686018427387903L) {
            j = 4611686018427387903L;
        }
        if (this.p.postDelayed(oz3Var, j)) {
            return new wi1(0, this, oz3Var);
        }
        r0(hi0Var, oz3Var);
        return tm2.n;
    }

    public final void r0(hi0 hi0Var, Runnable runnable) {
        n44.S(hi0Var, new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed"));
        zp0 zp0Var = zu0.a;
        lp0.p.n0(hi0Var, runnable);
    }

    @Override // defpackage.ji0
    public final String toString() {
        xi1 xi1Var;
        String str;
        zp0 zp0Var = zu0.a;
        xi1 xi1Var2 = n92.a;
        if (this == xi1Var2) {
            str = "Dispatchers.Main";
        } else {
            try {
                xi1Var = xi1Var2.s;
            } catch (UnsupportedOperationException unused) {
                xi1Var = null;
            }
            str = this == xi1Var ? "Dispatchers.Main.immediate" : null;
        }
        if (str != null) {
            return str;
        }
        String string = this.q;
        if (string == null) {
            string = this.p.toString();
        }
        if (!this.r) {
            return string;
        }
        return string + ".immediate";
    }

    @Override // defpackage.hr0
    public final void z(long j, o20 o20Var) {
        h7 h7Var = new h7(13, o20Var, this);
        if (j > 4611686018427387903L) {
            j = 4611686018427387903L;
        }
        if (this.p.postDelayed(h7Var, j)) {
            o20Var.z(new m(9, this, h7Var));
        } else {
            r0(o20Var.r, h7Var);
        }
    }

    public xi1(Handler handler) {
        this(handler, null, false);
    }
}
