package defpackage;

import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class eh4 extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public final /* synthetic */ hh4 t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ eh4(hh4 hh4Var, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = hh4Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
        }
        return ((eh4) o(dh0Var, qi0Var)).q(t64Var);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        hh4 hh4Var = this.t;
        switch (i) {
            case 0:
                return new eh4(hh4Var, dh0Var, 0);
            default:
                return new eh4(hh4Var, dh0Var, 1);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        Object ah4Var;
        int i = this.r;
        ri0 ri0Var = ri0.n;
        hh4 hh4Var = this.t;
        dh0 dh0Var = null;
        switch (i) {
            case 0:
                int i2 = this.s;
                if (i2 == 0) {
                    gg4.T(obj);
                    this.s = 1;
                    Object objA = hh4.a(hh4Var, this);
                    return objA == ri0Var ? ri0Var : objA;
                }
                if (i2 == 1) {
                    gg4.T(obj);
                    return obj;
                }
                k21.n("call to 'resume' before 'invoke' with coroutine");
                return null;
            default:
                int i3 = this.s;
                try {
                    if (i3 == 0) {
                        gg4.T(obj);
                        vu1 vu1Var = hh4Var.m;
                        eh4 eh4Var = new eh4(hh4Var, dh0Var, 0);
                        this.s = 1;
                        obj = ca.O(vu1Var, eh4Var, this);
                        if (obj == ri0Var) {
                            return ri0Var;
                        }
                    } else {
                        if (i3 != 1) {
                            k21.n("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        gg4.T(obj);
                    }
                    ah4Var = (dh4) obj;
                    break;
                } catch (wg4 e) {
                    ah4Var = new ch4(e.n);
                } catch (CancellationException unused) {
                    ah4Var = new ah4();
                } catch (Throwable th) {
                    t72.g().f(ih4.a, "Unexpected error in WorkerWrapper", th);
                    ah4Var = new ah4();
                }
                Object objN = hh4Var.h.n(new wc0(2, ah4Var, hh4Var));
                objN.getClass();
                return objN;
        }
    }
}
