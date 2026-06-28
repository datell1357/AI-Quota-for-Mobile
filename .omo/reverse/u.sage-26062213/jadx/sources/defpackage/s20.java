package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s20 {
    public boolean a;
    public r20 b;
    public boolean c;

    public final void a(r20 r20Var) {
        synchronized (this) {
            while (this.c) {
                try {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                    }
                } finally {
                }
            }
            if (this.b == r20Var) {
                return;
            }
            this.b = r20Var;
            if (this.a) {
                r20Var.onCancel();
            }
        }
    }
}
