package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class l21 extends ji0 {
    public static final /* synthetic */ int s = 0;
    public long p;
    public boolean q;
    public vh r;

    @Override // defpackage.ji0
    public final ji0 q0(int i) {
        c75.p(i);
        return this;
    }

    public final void r0(boolean z) {
        long j = this.p - (z ? 4294967296L : 1L);
        this.p = j;
        if (j <= 0 && this.q) {
            shutdown();
        }
    }

    public final void s0(vu0 vu0Var) {
        vh vhVar = this.r;
        if (vhVar == null) {
            vhVar = new vh();
            this.r = vhVar;
        }
        vhVar.addLast(vu0Var);
    }

    public abstract void shutdown();

    public final void t0(boolean z) {
        this.p = (z ? 4294967296L : 1L) + this.p;
        if (z) {
            return;
        }
        this.q = true;
    }

    public abstract long u0();

    public final boolean v0() {
        vh vhVar = this.r;
        if (vhVar == null) {
            return false;
        }
        vu0 vu0Var = (vu0) (vhVar.isEmpty() ? null : vhVar.removeFirst());
        if (vu0Var == null) {
            return false;
        }
        vu0Var.run();
        return true;
    }
}
