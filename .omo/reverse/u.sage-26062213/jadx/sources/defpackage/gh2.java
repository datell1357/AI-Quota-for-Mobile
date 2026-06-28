package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gh2 implements n20, jc4 {
    public final o20 n;
    public final /* synthetic */ hh2 o;

    public gh2(hh2 hh2Var, o20 o20Var) {
        this.o = hh2Var;
        this.n = o20Var;
    }

    @Override // defpackage.jc4
    public final void a(rg3 rg3Var, int i) {
        this.n.a(rg3Var, i);
    }

    @Override // defpackage.dh0
    public final hi0 e() {
        return this.n.r;
    }

    @Override // defpackage.dh0
    public final void g(Object obj) {
        this.n.g(obj);
    }

    @Override // defpackage.n20
    public final void h(Object obj, ff1 ff1Var) throws ru0 {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = hh2.w;
        hh2 hh2Var = this.o;
        atomicReferenceFieldUpdater.set(hh2Var, null);
        v vVar = new v(18, hh2Var, this);
        o20 o20Var = this.n;
        o20Var.G((t64) obj, o20Var.p, new mn0(5, vVar));
    }

    @Override // defpackage.n20
    public final sg0 i(Object obj, ff1 ff1Var) {
        hh2 hh2Var = this.o;
        mn0 mn0Var = new mn0(hh2Var, this);
        sg0 sg0VarJ = this.n.J((t64) obj, mn0Var);
        if (sg0VarJ != null) {
            hh2.w.set(hh2Var, null);
        }
        return sg0VarJ;
    }

    @Override // defpackage.n20
    public final boolean l(Throwable th) {
        return this.n.l(th);
    }

    @Override // defpackage.n20
    public final void r(Object obj) throws ru0 {
        this.n.r(obj);
    }
}
