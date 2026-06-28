package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class f95 implements Runnable {
    public final pw3 n;

    public f95() {
        this.n = null;
    }

    public abstract void a();

    @Override // java.lang.Runnable
    public final void run() {
        try {
            a();
        } catch (Exception e) {
            pw3 pw3Var = this.n;
            if (pw3Var != null) {
                pw3Var.c(e);
            }
        }
    }

    public f95(pw3 pw3Var) {
        this.n = pw3Var;
    }
}
