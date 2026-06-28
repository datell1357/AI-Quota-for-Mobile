package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class g20 implements ff1 {
    public static final g20 o = new g20(0);
    public static final g20 p = new g20(1);
    public final /* synthetic */ int n;

    public /* synthetic */ g20(int i) {
        this.n = i;
    }

    @Override // defpackage.ff1
    public final Object d(Object obj, Object obj2, Object obj3) {
        int i = this.n;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                try {
                    xw1.y((w73) obj2);
                    break;
                } catch (RuntimeException e) {
                    throw e;
                } catch (Exception unused) {
                }
                return t64Var;
            default:
                ((Number) obj3).intValue();
                return t64Var;
        }
    }
}
