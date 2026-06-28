package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class d20 extends b2 {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ e20 f61u;

    public d20(e20 e20Var) {
        this.f61u = e20Var;
    }

    @Override // defpackage.b2
    public final String h() {
        b20 b20Var = (b20) this.f61u.n.get();
        if (b20Var == null) {
            return "Completer object has been garbage collected, future will fail soon";
        }
        return "tag=[" + b20Var.a + "]";
    }
}
