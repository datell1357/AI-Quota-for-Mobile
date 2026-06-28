package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rl2 extends cr {
    public final int b;

    static {
        t72.i("NetworkNotRoamingCtrlr");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rl2(yl2 yl2Var) {
        super(yl2Var);
        yl2Var.getClass();
        this.b = 7;
    }

    @Override // defpackage.bf0
    public final boolean a(og4 og4Var) {
        og4Var.getClass();
        return og4Var.j.a == zl2.q;
    }

    @Override // defpackage.cr
    public final int d() {
        return this.b;
    }

    @Override // defpackage.cr
    public final boolean e(Object obj) {
        wl2 wl2Var = (wl2) obj;
        wl2Var.getClass();
        return (wl2Var.a && wl2Var.d && !wl2Var.e) ? false : true;
    }
}
