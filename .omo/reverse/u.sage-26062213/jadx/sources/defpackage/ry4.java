package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ry4 implements b05 {
    public static final ry4 b = new ry4(0);
    public final /* synthetic */ int a;

    public /* synthetic */ ry4(int i) {
        this.a = i;
    }

    @Override // defpackage.b05
    public final e15 b(Class cls) {
        switch (this.a) {
            case 0:
                if (!sy4.class.isAssignableFrom(cls)) {
                    k21.f("Unsupported message type: ".concat(cls.getName()));
                    return null;
                }
                try {
                    return (e15) sy4.a(cls.asSubclass(sy4.class)).h(3);
                } catch (Exception e) {
                    k21.i("Unable to get message info for ".concat(cls.getName()), e);
                    return null;
                }
            default:
                throw new IllegalStateException("This should never be called.");
        }
    }

    @Override // defpackage.b05
    public final boolean d(Class cls) {
        switch (this.a) {
            case 0:
                return sy4.class.isAssignableFrom(cls);
            default:
                return false;
        }
    }
}
