package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class v85 extends et4 {
    public final /* synthetic */ int e;
    public final /* synthetic */ o95 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ v85(o95 o95Var, r45 r45Var, int i) {
        super(r45Var);
        this.e = i;
        this.f = o95Var;
    }

    @Override // defpackage.et4
    public final void a() {
        int i = this.e;
        o95 o95Var = this.f;
        switch (i) {
            case 0:
                o95Var.v();
                if (o95Var.M()) {
                    a25 a25Var = ((r45) o95Var.a).f;
                    r45.l(a25Var);
                    a25Var.n.a("Inactivity, disconnecting from the service");
                    o95Var.D();
                    break;
                }
                break;
            default:
                a25 a25Var2 = ((r45) o95Var.a).f;
                r45.l(a25Var2);
                a25Var2.i.a("Tasks have been queued for a long time");
                break;
        }
    }
}
