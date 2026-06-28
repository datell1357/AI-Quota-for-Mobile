package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class b90 implements dh0 {
    public static final b90 o = new b90(0);
    public static final b90 p = new b90(1);
    public final /* synthetic */ int n;

    public /* synthetic */ b90(int i) {
        this.n = i;
    }

    @Override // defpackage.dh0
    public final hi0 e() {
        switch (this.n) {
            case 0:
                throw new IllegalStateException("This continuation is already complete");
            default:
                return d01.n;
        }
    }

    @Override // defpackage.dh0
    public final void g(Object obj) {
        switch (this.n) {
            case 0:
                throw new IllegalStateException("This continuation is already complete");
            default:
                return;
        }
    }

    public String toString() {
        switch (this.n) {
            case 0:
                return "This continuation is already complete";
            default:
                return super.toString();
        }
    }

    private final void a(Object obj) {
    }
}
