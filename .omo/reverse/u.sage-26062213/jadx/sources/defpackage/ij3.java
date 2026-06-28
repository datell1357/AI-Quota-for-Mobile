package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ij3 implements i41 {
    public final /* synthetic */ int a;
    public final Object b;

    public /* synthetic */ ij3(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    public static ij3 a(Object obj) {
        if (obj != null) {
            return new ij3(2, obj);
        }
        q73.r("instance cannot be null");
        return null;
    }

    @Override // defpackage.m03
    public final Object get() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                return new hj3((uj3) ((k03) obj).get());
            case 1:
                return new ek3((km3) ((k03) obj).get());
            default:
                return obj;
        }
    }
}
