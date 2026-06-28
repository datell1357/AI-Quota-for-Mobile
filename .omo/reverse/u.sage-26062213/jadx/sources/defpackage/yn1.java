package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yn1 implements qh0 {
    public final /* synthetic */ int a;
    public volatile oh0 b;

    @Override // defpackage.qh0
    public final nh0 b(rl1 rl1Var) {
        switch (this.a) {
            case 0:
                if (((py) this.b) == null) {
                    synchronized (this) {
                        try {
                            if (((py) this.b) == null) {
                                this.b = new py();
                            }
                        } finally {
                        }
                        break;
                    }
                }
                return (py) this.b;
            default:
                if (((py) this.b) == null) {
                    synchronized (this) {
                        try {
                            if (((py) this.b) == null) {
                                this.b = new py(null, 2);
                            }
                        } finally {
                        }
                        break;
                    }
                }
                return (py) this.b;
        }
    }
}
