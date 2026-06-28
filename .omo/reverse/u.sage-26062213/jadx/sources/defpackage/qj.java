package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qj implements pj {
    public final /* synthetic */ String a;
    public final /* synthetic */ rj b;

    public qj(rj rjVar, String str) {
        this.b = rjVar;
        this.a = str;
    }

    @Override // defpackage.pj
    public final oj a(ul1 ul1Var) {
        om1 om1Var = (om1) ul1Var.b("http.request");
        return this.b.b(this.a, om1Var.getParams());
    }
}
