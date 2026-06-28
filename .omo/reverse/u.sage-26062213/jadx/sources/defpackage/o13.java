package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o13 implements qh0 {
    public final int a;
    public final zw2 b;
    public volatile n13 c;

    public o13(int i, zw2 zw2Var) {
        this.a = i == 0 ? 2 : i;
        this.b = zw2Var;
    }

    @Override // defpackage.qh0
    public final nh0 b(rl1 rl1Var) {
        if (this.c == null) {
            synchronized (this) {
                try {
                    if (this.c == null) {
                        int iF = di0.F(this.a);
                        if (iF == 0) {
                            this.c = new q13(new ou(1), s03.e(new ou(0), this.b), new lu(1), new lu(2), new pu(q13.g));
                        } else if (iF != 2) {
                            this.c = new p13(new ou(1), s03.e(new ou(0), this.b), new ay1(), new lu(2), new zx1());
                        } else {
                            this.c = new p13(new j13(2), s03.e(new ou(0), this.b), new lu(1), new lu(2), new pu(q13.g));
                        }
                    }
                } finally {
                }
            }
        }
        return this.c;
    }
}
