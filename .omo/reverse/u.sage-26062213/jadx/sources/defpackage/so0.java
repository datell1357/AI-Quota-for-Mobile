package defpackage;

import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class so0 extends bv3 implements df1 {
    public t33 r;
    public we s;
    public int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ float f320u;
    public final /* synthetic */ to0 v;
    public final /* synthetic */ h12 w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public so0(float f, to0 to0Var, h12 h12Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.f320u = f;
        this.v = to0Var;
        this.w = h12Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        return ((so0) o((dh0) obj2, (qi0) obj)).q(t64.a);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        return new so0(this.f320u, this.v, this.w, dh0Var);
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        float f;
        we weVar;
        t33 t33Var;
        we weVar2;
        sn0 sn0Var;
        k4 k4Var;
        Object objF;
        Object obj2;
        int i = this.t;
        if (i == 0) {
            gg4.T(obj);
            f = this.f320u;
            if (Math.abs(f) > 1.0f) {
                t33 t33Var2 = new t33();
                t33Var2.n = f;
                t33 t33Var3 = new t33();
                we weVarA = k30.a(28, f);
                try {
                    to0 to0Var = this.v;
                    sn0Var = to0Var.a;
                    k4Var = new k4(t33Var3, this.w, t33Var2, to0Var, 1);
                    this.r = t33Var2;
                    this.s = weVarA;
                    this.t = 1;
                    weVar = weVarA;
                } catch (CancellationException unused) {
                    weVar = weVarA;
                }
                try {
                    objF = k75.f(weVar, new rn0(sn0Var, k30.m, weVarA.o.getValue(), weVarA.p), Long.MIN_VALUE, k4Var, this);
                    obj2 = ri0.n;
                    if (objF != obj2) {
                        objF = t64.a;
                    }
                } catch (CancellationException unused2) {
                    t33Var = t33Var2;
                    weVar2 = weVar;
                    t33Var.n = ((Number) weVar2.n.b.k(weVar2.p)).floatValue();
                }
                if (objF == obj2) {
                    return obj2;
                }
                t33Var = t33Var2;
                f = t33Var.n;
            }
        } else {
            if (i != 1) {
                k21.n("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            weVar2 = this.s;
            t33Var = this.r;
            try {
                gg4.T(obj);
            } catch (CancellationException unused3) {
                t33Var.n = ((Number) weVar2.n.b.k(weVar2.p)).floatValue();
            }
            f = t33Var.n;
        }
        return new Float(f);
    }
}
