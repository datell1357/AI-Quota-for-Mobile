package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o30 extends p30 {
    public static final /* synthetic */ AtomicIntegerFieldUpdater s = AtomicIntegerFieldUpdater.newUpdater(o30.class, "consumed$volatile");
    private volatile /* synthetic */ int consumed$volatile;
    public final n30 q;
    public final boolean r;

    public /* synthetic */ o30(n30 n30Var, boolean z) {
        this(n30Var, z, d01.n, -3, vy.n);
    }

    @Override // defpackage.p30, defpackage.a81
    public final Object b(b81 b81Var, dh0 dh0Var) throws Throwable {
        int i = this.o;
        ri0 ri0Var = ri0.n;
        if (i == -3) {
            boolean z = this.r;
            if (z && s.getAndSet(this, 1) == 1) {
                k21.n("ReceiveChannel.consumeAsFlow can be collected just once");
                return null;
            }
            Object objU = dm0.u(b81Var, this.q, z, dh0Var);
            if (objU == ri0Var) {
                return objU;
            }
        } else {
            Object objB = super.b(b81Var, dh0Var);
            if (objB == ri0Var) {
                return objB;
            }
        }
        return t64.a;
    }

    @Override // defpackage.p30
    public final String c() {
        return "channel=" + this.q;
    }

    @Override // defpackage.p30
    public final Object d(hz2 hz2Var, dh0 dh0Var) throws Throwable {
        Object objU = dm0.u(new zh3(hz2Var), this.q, this.r, dh0Var);
        return objU == ri0.n ? objU : t64.a;
    }

    @Override // defpackage.p30
    public final p30 e(hi0 hi0Var, int i, vy vyVar) {
        return new o30(this.q, this.r, hi0Var, i, vyVar);
    }

    @Override // defpackage.p30
    public final a81 f() {
        return new o30(this.q, this.r);
    }

    @Override // defpackage.p30
    public final n30 g(qi0 qi0Var) {
        if (!this.r || s.getAndSet(this, 1) != 1) {
            return this.o == -3 ? this.q : super.g(qi0Var);
        }
        k21.n("ReceiveChannel.consumeAsFlow can be collected just once");
        return null;
    }

    public o30(n30 n30Var, boolean z, hi0 hi0Var, int i, vy vyVar) {
        super(hi0Var, i, vyVar);
        this.q = n30Var;
        this.r = z;
    }
}
