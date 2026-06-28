package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class b52 {
    public final bo2 n;
    public boolean o;
    public int p = -1;
    public final /* synthetic */ c52 q;

    public b52(c52 c52Var, bo2 bo2Var) {
        this.q = c52Var;
        this.n = bo2Var;
    }

    public final void a(boolean z) {
        if (z == this.o) {
            return;
        }
        this.o = z;
        int i = z ? 1 : -1;
        c52 c52Var = this.q;
        int i2 = c52Var.c;
        c52Var.c = i + i2;
        if (!c52Var.d) {
            c52Var.d = true;
            while (true) {
                try {
                    int i3 = c52Var.c;
                    if (i2 == i3) {
                        break;
                    }
                    boolean z2 = i2 == 0 && i3 > 0;
                    boolean z3 = i2 > 0 && i3 == 0;
                    if (z2) {
                        c52Var.e();
                    } else if (z3) {
                        c52Var.f();
                    }
                    i2 = i3;
                } catch (Throwable th) {
                    c52Var.d = false;
                    throw th;
                }
            }
            c52Var.d = false;
        }
        if (this.o) {
            c52Var.c(this);
        }
    }

    public boolean c(p22 p22Var) {
        return false;
    }

    public abstract boolean d();

    public void b() {
    }
}
