package defpackage;

import android.os.Handler;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class et4 {
    public static volatile rk4 d;
    public final s55 a;
    public final rf1 b;
    public volatile long c;

    public et4(s55 s55Var) {
        Preconditions.checkNotNull(s55Var);
        this.a = s55Var;
        this.b = new rf1(15, (Object) this, (Object) s55Var, false);
    }

    public abstract void a();

    public final void b(long j) {
        c();
        if (j >= 0) {
            s55 s55Var = this.a;
            this.c = s55Var.f().currentTimeMillis();
            if (d().postDelayed(this.b, j)) {
                return;
            }
            s55Var.c().f.b(Long.valueOf(j), "Failed to schedule delayed post. time");
        }
    }

    public final void c() {
        this.c = 0L;
        d().removeCallbacks(this.b);
    }

    public final Handler d() {
        rk4 rk4Var;
        if (d != null) {
            return d;
        }
        synchronized (et4.class) {
            try {
                if (d == null) {
                    d = new rk4(this.a.e().getMainLooper());
                }
                rk4Var = d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return rk4Var;
    }
}
