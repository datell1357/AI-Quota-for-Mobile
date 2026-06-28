package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ja0 extends c7 implements df1 {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ int f148u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ja0(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, i2, cls, obj, str, str2);
        this.f148u = i3;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.f148u;
        t64 t64Var = t64.a;
        Object obj3 = this.n;
        switch (i) {
            case 0:
                ka0 ka0Var = (ka0) obj3;
                ka0Var.c(((Number) obj2).intValue(), (ag1) obj);
                break;
            case 1:
                wf3 wf3Var = (wf3) obj3;
                ca.y(wf3Var.Y.c(), null, null, new uf3(wf3Var, ((ra4) obj).a, null, 2), 3);
                break;
            default:
                wf3 wf3Var2 = (wf3) obj3;
                ca.y(wf3Var2.Y.c(), null, null, new uf3(wf3Var2, ((ra4) obj).a, null, 1), 3);
                break;
        }
        return t64Var;
    }
}
