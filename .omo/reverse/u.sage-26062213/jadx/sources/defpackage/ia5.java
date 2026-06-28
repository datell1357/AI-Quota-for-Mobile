package defpackage;

import android.os.Looper;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ia5 extends j05 {
    public rk4 c;
    public boolean d;
    public final gt4 e;
    public final x23 f;
    public final pc4 g;

    public ia5(r45 r45Var) {
        super(r45Var);
        this.d = true;
        this.e = new gt4(10, this);
        this.f = new x23(this);
        this.g = new pc4(20, this);
    }

    @Override // defpackage.j05
    public final boolean y() {
        return false;
    }

    public final void z() {
        v();
        if (this.c == null) {
            this.c = new rk4(Looper.getMainLooper());
        }
    }
}
