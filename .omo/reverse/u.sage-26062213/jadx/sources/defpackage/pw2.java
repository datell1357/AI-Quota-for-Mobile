package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pw2 implements u13, nw2 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ pw2(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.nw2
    public final Object a(String str, pe1 pe1Var, fh0 fh0Var) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                return ((vw2) obj).a(str, pe1Var, fh0Var);
            default:
                return ((ou3) obj).a(str, pe1Var, fh0Var);
        }
    }

    @Override // defpackage.u13
    public final jb3 b() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                return ((vw2) obj).a;
            default:
                return ((ou3) obj).a;
        }
    }
}
