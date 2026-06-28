package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class j13 extends ou {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ j13(int i) {
        super(1);
        this.b = i;
    }

    @Override // defpackage.ou, defpackage.ih0
    public final void a(ku kuVar, jh0 jh0Var) throws mh0 {
        switch (this.b) {
            case 0:
                if (b(kuVar, jh0Var)) {
                    return;
                }
                throw new mh0(cm1.a("Illegal 'path' attribute \"" + kuVar.s + "\". Path of origin: \"" + jh0Var.c + "\""));
            case 1:
                if (b(kuVar, jh0Var)) {
                    return;
                }
                throw new mh0(cm1.a("Illegal 'path' attribute \"" + kuVar.s + "\". Path of origin: \"" + jh0Var.c + "\""));
            default:
                return;
        }
    }

    private final void j(ku kuVar, jh0 jh0Var) {
    }
}
