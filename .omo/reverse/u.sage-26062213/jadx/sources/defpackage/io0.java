package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class io0 implements qh0 {
    public final zw2 a;
    public volatile ho0 b;

    public io0(zw2 zw2Var) {
        this.a = zw2Var;
    }

    @Override // defpackage.qh0
    public final nh0 b(rl1 rl1Var) {
        if (this.b == null) {
            synchronized (this) {
                try {
                    if (this.b == null) {
                        this.b = new ho0(new m13(false, new ou(7), new ou(1), s03.e(new ou(5), this.a), new ou(6), new lu(1), new lu(2), new lu(0), new ou(3), new ou(4)), new k13(false, new lu(4), new ou(1), s03.e(new ou(2), this.a), new lu(1), new lu(2), new lu(0)), new py(new u80[]{s03.e(new ou(0), this.a), new ou(1), new lu(2), new lu(0), new pu(new String[]{"EEE, dd-MMM-yy HH:mm:ss z"})}));
                    }
                } finally {
                }
            }
        }
        return this.b;
    }
}
