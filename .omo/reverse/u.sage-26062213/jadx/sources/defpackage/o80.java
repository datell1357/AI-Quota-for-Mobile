package defpackage;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o80 extends bv3 implements df1 {
    public int r;
    public final /* synthetic */ a81[] s;
    public final /* synthetic */ int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ AtomicInteger f237u;
    public final /* synthetic */ zy v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o80(a81[] a81VarArr, int i, AtomicInteger atomicInteger, zy zyVar, dh0 dh0Var) {
        super(2, dh0Var);
        this.s = a81VarArr;
        this.t = i;
        this.f237u = atomicInteger;
        this.v = zyVar;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        return ((o80) o((dh0) obj2, (qi0) obj)).q(t64.a);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        return new o80(this.s, this.t, this.f237u, this.v, dh0Var);
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        AtomicInteger atomicInteger = this.f237u;
        zy zyVar = this.v;
        try {
            if (i == 0) {
                gg4.T(obj);
                a81[] a81VarArr = this.s;
                int i2 = this.t;
                a81 a81Var = a81VarArr[i2];
                n80 n80Var = new n80(zyVar, i2);
                this.r = 1;
                Object objB = a81Var.b(n80Var, this);
                ri0 ri0Var = ri0.n;
                if (objB == ri0Var) {
                    return ri0Var;
                }
            } else {
                if (i != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                gg4.T(obj);
            }
            if (atomicInteger.decrementAndGet() == 0) {
                zyVar.a(null);
            }
            return t64.a;
        } finally {
            if (atomicInteger.decrementAndGet() == 0) {
                zyVar.a(null);
            }
        }
    }
}
