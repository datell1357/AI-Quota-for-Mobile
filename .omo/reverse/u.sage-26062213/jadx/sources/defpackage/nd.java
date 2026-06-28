package defpackage;

import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nd extends bv3 implements pe1 {
    public we r;
    public s33 s;
    public int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ pd f221u;
    public final /* synthetic */ Object v;
    public final /* synthetic */ lw3 w;
    public final /* synthetic */ long x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nd(pd pdVar, Object obj, lw3 lw3Var, long j, dh0 dh0Var) {
        super(1, dh0Var);
        this.f221u = pdVar;
        this.v = obj;
        this.w = lw3Var;
        this.x = j;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        lw3 lw3Var = this.w;
        long j = this.x;
        return new nd(this.f221u, this.v, lw3Var, j, (dh0) obj).q(t64.a);
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        we weVar;
        s33 s33Var;
        lw3 lw3Var = this.w;
        int i = this.t;
        pd pdVar = this.f221u;
        try {
            if (i == 0) {
                gg4.T(obj);
                pdVar.c.p = (bf) pdVar.a.a.k(this.v);
                pdVar.e.setValue(lw3Var.c);
                pdVar.d.setValue(Boolean.TRUE);
                we weVar2 = pdVar.c;
                we weVar3 = new we(weVar2.n, weVar2.o.getValue(), c75.t(weVar2.p), weVar2.q, Long.MIN_VALUE, weVar2.s);
                s33 s33Var2 = new s33();
                long j = this.x;
                md mdVar = new md(pdVar, weVar3, s33Var2, 0);
                this.r = weVar3;
                this.s = s33Var2;
                this.t = 1;
                Object objF = k75.f(weVar3, lw3Var, j, mdVar, this);
                ri0 ri0Var = ri0.n;
                if (objF == ri0Var) {
                    return ri0Var;
                }
                weVar = weVar3;
                s33Var = s33Var2;
            } else {
                if (i != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                s33Var = this.s;
                weVar = this.r;
                gg4.T(obj);
            }
            se seVar = s33Var.n ? se.n : se.o;
            pd.b(pdVar);
            return new te(weVar, seVar);
        } catch (CancellationException e) {
            pd.b(pdVar);
            throw e;
        }
    }
}
