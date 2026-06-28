package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qh1 extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public final /* synthetic */ wh1 t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ qh1(wh1 wh1Var, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = wh1Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
        }
        return ((qh1) o(dh0Var, qi0Var)).q(t64Var);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        wh1 wh1Var = this.t;
        switch (i) {
            case 0:
                return new qh1(wh1Var, dh0Var, 0);
            default:
                return new qh1(wh1Var, dh0Var, 1);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        ri0 ri0Var = ri0.n;
        wh1 wh1Var = this.t;
        dh0 dh0Var = null;
        switch (i) {
            case 0:
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
                m10 m10Var = wh1Var.c;
                this.s = 1;
                Serializable serializableA = m10Var.a(this);
                return serializableA == ri0Var ? ri0Var : serializableA;
            default:
                int i3 = this.s;
                t64 t64Var = t64.a;
                try {
                    if (i3 == 0) {
                        gg4.T(obj);
                        wh1Var.f().signOut();
                        m10 m10Var2 = wh1Var.c;
                        this.s = 1;
                        m10Var2.getClass();
                        ez3.a.getClass();
                        ra3.c(new Object[0]);
                        Object objO = ht4.o(m10Var2.a, new zr(2, dh0Var, 3), this);
                        if (objO != ri0Var) {
                            objO = t64Var;
                        }
                        if (objO == ri0Var) {
                            return ri0Var;
                        }
                    } else {
                        if (i3 != 1) {
                            k21.n("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        gg4.T(obj);
                    }
                    ez3.a.getClass();
                    ra3.c(new Object[0]);
                    break;
                } catch (Exception unused) {
                    ez3.a.getClass();
                    ra3.g(new Object[0]);
                }
                return t64Var;
        }
    }
}
