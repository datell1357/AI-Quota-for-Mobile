package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b12 extends vz2 implements kx1, ne1 {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ int f23u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b12(int i, int i2, Class cls, Object obj, String str, String str2) {
        super(obj, cls, str, str2, i);
        this.f23u = i2;
    }

    @Override // defpackage.ne1
    public final Object a() {
        int i = this.f23u;
        Object obj = this.o;
        switch (i) {
            case 0:
                return ((tr3) obj).getValue();
            default:
                return obj.getClass().getSimpleName();
        }
    }

    @Override // defpackage.x10
    public final ex1 c() {
        y33.a.getClass();
        return this;
    }
}
