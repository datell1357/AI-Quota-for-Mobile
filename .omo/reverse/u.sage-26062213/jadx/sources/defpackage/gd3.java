package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gd3 implements pe1 {
    public static final gd3 o = new gd3(0);
    public static final gd3 p = new gd3(1);
    public final /* synthetic */ int n;

    public /* synthetic */ gd3(int i) {
        this.n = i;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        switch (this.n) {
            case 0:
                if (nt1.g(obj, Boolean.FALSE)) {
                    return new t70(t70.f);
                }
                obj.getClass();
                return new t70(c75.b(((Integer) obj).intValue()));
            default:
                return null;
        }
    }
}
