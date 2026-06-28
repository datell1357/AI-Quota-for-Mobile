package defpackage;

import java.util.concurrent.CountDownLatch;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xc0 implements jp2, bp2, wo2 {
    public final /* synthetic */ int n;
    public final CountDownLatch o;

    public xc0(int i) {
        this.n = i;
        switch (i) {
            case 1:
                this.o = new CountDownLatch(1);
                break;
            default:
                this.o = new CountDownLatch(1);
                break;
        }
    }

    @Override // defpackage.wo2
    public final void a() {
        switch (this.n) {
            case 0:
                this.o.countDown();
                break;
            default:
                this.o.countDown();
                break;
        }
    }

    @Override // defpackage.bp2
    public final void c(Exception exc) {
        switch (this.n) {
            case 0:
                this.o.countDown();
                break;
            default:
                this.o.countDown();
                break;
        }
    }

    @Override // defpackage.jp2
    public final void h(Object obj) {
        switch (this.n) {
            case 0:
                this.o.countDown();
                break;
            default:
                this.o.countDown();
                break;
        }
    }
}
