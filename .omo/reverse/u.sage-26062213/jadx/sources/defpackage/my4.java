package defpackage;

import com.google.android.gms.common.util.Clock;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class my4 implements Runnable {
    public final long n;
    public final long o;
    public final boolean p;
    public final /* synthetic */ uy4 q;

    public my4(uy4 uy4Var, boolean z) {
        Objects.requireNonNull(uy4Var);
        this.q = uy4Var;
        Clock clock = uy4Var.a;
        this.n = clock.currentTimeMillis();
        this.o = clock.elapsedRealtime();
        this.p = z;
    }

    public abstract void a();

    @Override // java.lang.Runnable
    public final void run() {
        uy4 uy4Var = this.q;
        if (uy4Var.f) {
            b();
            return;
        }
        try {
            a();
        } catch (Exception e) {
            uy4Var.d(e, false, this.p);
            b();
        }
    }

    public void b() {
    }
}
