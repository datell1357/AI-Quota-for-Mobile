package defpackage;

import androidx.work.CoroutineWorker;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vi0 extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public final /* synthetic */ CoroutineWorker t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ vi0(CoroutineWorker coroutineWorker, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = coroutineWorker;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
            case 0:
                ((vi0) o(dh0Var, qi0Var)).q(t64Var);
                return t64Var;
            default:
                return ((vi0) o(dh0Var, qi0Var)).q(t64Var);
        }
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        CoroutineWorker coroutineWorker = this.t;
        switch (i) {
            case 0:
                return new vi0(coroutineWorker, dh0Var, 0);
            default:
                return new vi0(coroutineWorker, dh0Var, 1);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        switch (this.r) {
            case 0:
                int i = this.s;
                if (i == 0) {
                    gg4.T(obj);
                    this.s = 1;
                    k21.n("Not implemented");
                } else {
                    if (i == 1) {
                        gg4.T(obj);
                        return obj;
                    }
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                }
                return null;
            default:
                int i2 = this.s;
                if (i2 != 0) {
                    if (i2 == 1) {
                        gg4.T(obj);
                        return obj;
                    }
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                gg4.T(obj);
                this.s = 1;
                Object objC = this.t.c(this);
                ri0 ri0Var = ri0.n;
                return objC == ri0Var ? ri0Var : objC;
        }
    }
}
