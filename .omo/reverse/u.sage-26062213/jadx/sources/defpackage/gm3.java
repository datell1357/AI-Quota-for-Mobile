package defpackage;

import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gm3 extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public final /* synthetic */ km3 t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ gm3(km3 km3Var, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = km3Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
        }
        return ((gm3) o(dh0Var, qi0Var)).q(t64Var);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        km3 km3Var = this.t;
        switch (i) {
            case 0:
                return new gm3(km3Var, dh0Var, 0);
            default:
                return new gm3(km3Var, dh0Var, 1);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        Object obj2 = t64.a;
        int i2 = 5;
        ri0 ri0Var = ri0.n;
        km3 km3Var = this.t;
        dh0 dh0Var = null;
        switch (i) {
            case 0:
                int i3 = this.s;
                if (i3 != 0) {
                    if (i3 == 1) {
                        gg4.T(obj);
                        return obj2;
                    }
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                gg4.T(obj);
                vq vqVar = new vq(2, km3Var.e.b(), new t81(km3Var, dh0Var, 3));
                t50 t50Var = new t50(i2, km3Var);
                this.s = 1;
                return vqVar.b(t50Var, this) == ri0Var ? ri0Var : obj2;
            default:
                int i4 = this.s;
                try {
                    if (i4 == 0) {
                        gg4.T(obj);
                        lm0 lm0Var = km3Var.e;
                        im3 im3Var = new im3(km3Var, dh0Var, 0);
                        this.s = 1;
                        if (lm0Var.a(im3Var, this) == ri0Var) {
                            obj2 = ri0Var;
                        }
                    } else {
                        if (i4 != 1) {
                            k21.n("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        gg4.T(obj);
                    }
                    return obj2;
                } catch (Exception e) {
                    Log.d("FirebaseSessions", "App backgrounded, failed to update data. Message: " + e.getMessage());
                    gj3 gj3Var = km3Var.h;
                    if (gj3Var == null) {
                        nt1.X("localSessionData");
                        throw null;
                    }
                    km3Var.d.getClass();
                    km3Var.h = gj3.a(gj3Var, null, iz3.a(), null, 5);
                    return obj2;
                }
        }
    }
}
