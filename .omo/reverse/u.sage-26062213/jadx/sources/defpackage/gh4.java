package defpackage;

import android.content.Context;
import android.os.Build;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gh4 extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public final /* synthetic */ Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ Object f111u;
    public final /* synthetic */ Object v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ gh4(Object obj, Object obj2, Object obj3, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = obj;
        this.f111u = obj2;
        this.v = obj3;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
        }
        return ((gh4) o(dh0Var, qi0Var)).q(t64Var);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        Object obj2 = this.v;
        Object obj3 = this.f111u;
        Object obj4 = this.t;
        switch (i) {
            case 0:
                return new gh4((hh4) obj4, (v42) obj3, (ag4) obj2, dh0Var, 0);
            default:
                return new gh4((ct2) obj4, (og4) obj3, (zo2) obj2, dh0Var, 1);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) throws Throwable {
        int i = this.r;
        Object obj2 = t64.a;
        Object obj3 = this.v;
        Object obj4 = this.t;
        ri0 ri0Var = ri0.n;
        Object obj5 = this.f111u;
        switch (i) {
            case 0:
                v42 v42Var = (v42) obj5;
                hh4 hh4Var = (hh4) obj4;
                og4 og4Var = hh4Var.a;
                int i2 = this.s;
                if (i2 == 0) {
                    gg4.T(obj);
                    Context context = hh4Var.b;
                    ag4 ag4Var = (ag4) obj3;
                    qd1 qd1Var = hh4Var.d;
                    this.s = 1;
                    String str = zf4.a;
                    if (og4Var.q && Build.VERSION.SDK_INT < 31) {
                        c73 c73Var = (c73) qd1Var.r;
                        c73Var.getClass();
                        Object objO = ca.O(ht4.p(c73Var), new qd(v42Var, og4Var, ag4Var, context, null, 14), this);
                        if (objO == ri0Var) {
                            obj2 = objO;
                        }
                    }
                    if (obj2 != ri0Var) {
                    }
                } else if (i2 == 1) {
                    gg4.T(obj);
                } else if (i2 != 2) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                String str2 = ih4.a;
                t72.g().c(str2, "Starting work for " + og4Var.c);
                e20 e20VarB = v42Var.b();
                this.s = 2;
                Object objA = ih4.a(e20VarB, v42Var, this);
                if (objA != ri0Var) {
                }
                break;
            default:
                og4 og4Var2 = (og4) obj5;
                int i3 = this.s;
                if (i3 == 0) {
                    gg4.T(obj);
                    a81 a81VarK = ((ct2) obj4).k(og4Var2);
                    uq uqVar = new uq(12, (zo2) obj3, og4Var2);
                    this.s = 1;
                    if (a81VarK.b(uqVar, this) == ri0Var) {
                    }
                } else if (i3 != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                break;
        }
        return ri0Var;
    }
}
