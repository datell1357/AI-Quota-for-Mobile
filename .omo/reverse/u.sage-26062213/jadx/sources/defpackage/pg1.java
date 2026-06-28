package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pg1 implements pc2 {
    public static final pg1 b = new pg1(0);
    public final /* synthetic */ int a;

    public /* synthetic */ pg1(int i) {
        this.a = i;
    }

    @Override // defpackage.pc2
    public final v13 a(Class cls) {
        switch (this.a) {
            case 0:
                if (!sg1.class.isAssignableFrom(cls)) {
                    k21.f("Unsupported message type: ".concat(cls.getName()));
                    return null;
                }
                try {
                    return (v13) sg1.d(cls.asSubclass(sg1.class)).c(3);
                } catch (Exception e) {
                    k21.i("Unable to get message info for ".concat(cls.getName()), e);
                    return null;
                }
            default:
                throw new IllegalStateException("This should never be called.");
        }
    }

    @Override // defpackage.pc2
    public final boolean b(Class cls) {
        switch (this.a) {
            case 0:
                return sg1.class.isAssignableFrom(cls);
            default:
                return false;
        }
    }
}
