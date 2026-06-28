package defpackage;

import java.util.LinkedHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ox2 extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public /* synthetic */ Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ df1 f248u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ox2(df1 df1Var, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.f248u = df1Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        hg2 hg2Var = (hg2) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
        }
        return ((ox2) o(dh0Var, hg2Var)).q(t64Var);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        df1 df1Var = this.f248u;
        switch (i) {
            case 0:
                ox2 ox2Var = new ox2(df1Var, dh0Var, 0);
                ox2Var.t = obj;
                return ox2Var;
            default:
                ox2 ox2Var2 = new ox2(df1Var, dh0Var, 1);
                ox2Var2.t = obj;
                return ox2Var2;
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        df1 df1Var = this.f248u;
        ri0 ri0Var = ri0.n;
        switch (i) {
            case 0:
                int i2 = this.s;
                if (i2 == 0) {
                    gg4.T(obj);
                    hg2 hg2Var = (hg2) this.t;
                    this.s = 1;
                    obj = df1Var.f(hg2Var, this);
                    if (obj == ri0Var) {
                        return ri0Var;
                    }
                } else {
                    if (i2 != 1) {
                        k21.n("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    gg4.T(obj);
                }
                hg2 hg2Var2 = (hg2) obj;
                hg2Var2.getClass();
                ((AtomicBoolean) hg2Var2.b.o).set(true);
                return hg2Var2;
            default:
                int i3 = this.s;
                if (i3 == 0) {
                    gg4.T(obj);
                    hg2 hg2Var3 = new hg2(new LinkedHashMap(((hg2) this.t).a()), false);
                    this.t = hg2Var3;
                    this.s = 1;
                    return df1Var.f(hg2Var3, this) == ri0Var ? ri0Var : hg2Var3;
                }
                if (i3 != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                hg2 hg2Var4 = (hg2) this.t;
                gg4.T(obj);
                return hg2Var4;
        }
    }
}
