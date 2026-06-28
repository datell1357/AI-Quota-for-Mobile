package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class ab5 extends ta5 {
    public boolean c;

    public ab5(pb5 pb5Var) {
        super(pb5Var);
        this.b.r++;
    }

    public final void w() {
        if (this.c) {
            return;
        }
        k21.n("Not initialized");
    }

    public final void x() {
        if (this.c) {
            k21.n("Can't initialize twice");
            return;
        }
        y();
        this.b.s++;
        this.c = true;
    }

    public abstract void y();
}
