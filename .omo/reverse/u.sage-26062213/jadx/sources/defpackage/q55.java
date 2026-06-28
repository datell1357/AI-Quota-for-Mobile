package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class q55 extends ib0 {
    public boolean b;

    public q55(r45 r45Var) {
        super(r45Var);
        ((r45) this.a).A++;
    }

    public abstract boolean w();

    public final void x() {
        if (this.b) {
            return;
        }
        k21.n("Not initialized");
    }

    public final void y() {
        if (this.b) {
            k21.n("Can't initialize twice");
        } else {
            if (w()) {
                return;
            }
            ((r45) this.a).C.incrementAndGet();
            this.b = true;
        }
    }
}
