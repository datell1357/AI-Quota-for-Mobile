package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sm0 extends bv3 implements ff1 {
    public final /* synthetic */ int r = 1;
    public int s;
    public /* synthetic */ Object t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sm0(fn0 fn0Var, dh0 dh0Var) {
        super(3, dh0Var);
        this.t = fn0Var;
    }

    @Override // defpackage.ff1
    public final Object d(Object obj, Object obj2, Object obj3) {
        int i = this.r;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                return new sm0((fn0) this.t, (dh0) obj3).q(t64Var);
            default:
                ((Boolean) obj2).getClass();
                sm0 sm0Var = new sm0(3, (dh0) obj3);
                sm0Var.t = (j51) obj;
                return sm0Var.q(t64Var);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) throws IOException {
        int i = this.r;
        ri0 ri0Var = ri0.n;
        int i2 = 1;
        dh0 dh0Var = null;
        switch (i) {
            case 0:
                int i3 = this.s;
                if (i3 == 0) {
                    gg4.T(obj);
                    fn0 fn0Var = (fn0) this.t;
                    this.s = 1;
                    if (fn0.c(fn0Var, this) == ri0Var) {
                        return ri0Var;
                    }
                } else {
                    if (i3 != 1) {
                        k21.n("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    gg4.T(obj);
                }
                return t64.a;
            default:
                int i4 = this.s;
                if (i4 == 0) {
                    gg4.T(obj);
                    j51 j51Var = (j51) this.t;
                    this.s = 1;
                    if (!j51Var.c.get()) {
                        Object objH = zf5.h(j51Var.a, new zm0(j51Var, dh0Var, i2), this);
                        return objH == ri0Var ? ri0Var : objH;
                    }
                    k21.n("This scope has already been closed.");
                } else {
                    if (i4 == 1) {
                        gg4.T(obj);
                        return obj;
                    }
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                }
                return null;
        }
    }

    public /* synthetic */ sm0(int i, dh0 dh0Var) {
        super(i, dh0Var);
    }
}
