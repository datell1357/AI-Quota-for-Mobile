package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface oy1 extends jr0 {
    default int O(k82 k82Var, ya2 ya2Var, int i) {
        return h0(new tt1(k82Var, k82Var.getLayoutDirection()), new kp0(ya2Var, pm2.n, qm2.n, 2), nf0.b(0, i, 7)).b();
    }

    default int e(k82 k82Var, ya2 ya2Var, int i) {
        return h0(new tt1(k82Var, k82Var.getLayoutDirection()), new kp0(ya2Var, pm2.o, qm2.n, 2), nf0.b(0, i, 7)).b();
    }

    eb2 h0(gb2 gb2Var, ya2 ya2Var, long j);

    default int l(k82 k82Var, ya2 ya2Var, int i) {
        return h0(new tt1(k82Var, k82Var.getLayoutDirection()), new kp0(ya2Var, pm2.o, qm2.o, 2), nf0.b(i, 0, 13)).a();
    }

    default int y(k82 k82Var, ya2 ya2Var, int i) {
        return h0(new tt1(k82Var, k82Var.getLayoutDirection()), new kp0(ya2Var, pm2.n, qm2.o, 2), nf0.b(i, 0, 13)).a();
    }
}
