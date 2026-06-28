package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class pr0 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ qr0 o;
    public final /* synthetic */ Runnable p;
    public final /* synthetic */ wu4 q;

    public /* synthetic */ pr0(qr0 qr0Var, Runnable runnable, wu4 wu4Var, int i) {
        this.n = i;
        this.o = qr0Var;
        this.p = runnable;
        this.q = wu4Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.n;
        final wu4 wu4Var = this.q;
        final Runnable runnable = this.p;
        qr0 qr0Var = this.o;
        switch (i) {
            case 0:
                final int i2 = 0;
                qr0Var.n.execute(new Runnable() { // from class: nr0
                    @Override // java.lang.Runnable
                    public final void run() throws Exception {
                        int i3 = i2;
                        wu4 wu4Var2 = wu4Var;
                        Runnable runnable2 = runnable;
                        switch (i3) {
                            case 0:
                                try {
                                    runnable2.run();
                                    return;
                                } catch (Exception e) {
                                    ((sr0) wu4Var2.o).k(e);
                                    throw e;
                                }
                            case 1:
                                try {
                                    runnable2.run();
                                    return;
                                } catch (Exception e2) {
                                    ((sr0) wu4Var2.o).k(e2);
                                    return;
                                }
                            default:
                                sr0 sr0Var = (sr0) wu4Var2.o;
                                try {
                                    runnable2.run();
                                    sr0Var.j(null);
                                    return;
                                } catch (Exception e3) {
                                    sr0Var.k(e3);
                                    return;
                                }
                        }
                    }
                });
                break;
            case 1:
                final int i3 = 2;
                qr0Var.n.execute(new Runnable() { // from class: nr0
                    @Override // java.lang.Runnable
                    public final void run() throws Exception {
                        int i32 = i3;
                        wu4 wu4Var2 = wu4Var;
                        Runnable runnable2 = runnable;
                        switch (i32) {
                            case 0:
                                try {
                                    runnable2.run();
                                    return;
                                } catch (Exception e) {
                                    ((sr0) wu4Var2.o).k(e);
                                    throw e;
                                }
                            case 1:
                                try {
                                    runnable2.run();
                                    return;
                                } catch (Exception e2) {
                                    ((sr0) wu4Var2.o).k(e2);
                                    return;
                                }
                            default:
                                sr0 sr0Var = (sr0) wu4Var2.o;
                                try {
                                    runnable2.run();
                                    sr0Var.j(null);
                                    return;
                                } catch (Exception e3) {
                                    sr0Var.k(e3);
                                    return;
                                }
                        }
                    }
                });
                break;
            default:
                final int i4 = 1;
                qr0Var.n.execute(new Runnable() { // from class: nr0
                    @Override // java.lang.Runnable
                    public final void run() throws Exception {
                        int i32 = i4;
                        wu4 wu4Var2 = wu4Var;
                        Runnable runnable2 = runnable;
                        switch (i32) {
                            case 0:
                                try {
                                    runnable2.run();
                                    return;
                                } catch (Exception e) {
                                    ((sr0) wu4Var2.o).k(e);
                                    throw e;
                                }
                            case 1:
                                try {
                                    runnable2.run();
                                    return;
                                } catch (Exception e2) {
                                    ((sr0) wu4Var2.o).k(e2);
                                    return;
                                }
                            default:
                                sr0 sr0Var = (sr0) wu4Var2.o;
                                try {
                                    runnable2.run();
                                    sr0Var.j(null);
                                    return;
                                } catch (Exception e3) {
                                    sr0Var.k(e3);
                                    return;
                                }
                        }
                    }
                });
                break;
        }
    }
}
