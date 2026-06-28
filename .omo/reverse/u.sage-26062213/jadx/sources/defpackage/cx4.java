package defpackage;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cx4 implements fc5, jp2, bp2, wo2 {
    public final /* synthetic */ int n;
    public final Executor o;
    public final eh0 p;
    public final ef5 q;

    public /* synthetic */ cx4(Executor executor, eh0 eh0Var, ef5 ef5Var, int i) {
        this.n = i;
        this.o = executor;
        this.p = eh0Var;
        this.q = ef5Var;
    }

    @Override // defpackage.wo2
    public void a() {
        this.q.q();
    }

    @Override // defpackage.fc5
    public final void b(ow3 ow3Var) {
        switch (this.n) {
            case 0:
                this.o.execute(new rf1(16, (Object) this, (Object) ow3Var, false));
                break;
            default:
                this.o.execute(new rf1(17, (Object) this, (Object) ow3Var, false));
                break;
        }
    }

    @Override // defpackage.bp2
    public void c(Exception exc) {
        this.q.p(exc);
    }

    @Override // defpackage.jp2
    public void h(Object obj) {
        this.q.n(obj);
    }
}
