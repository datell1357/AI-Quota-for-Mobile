package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yw1 extends e83 implements ff1 {
    public int p;
    public /* synthetic */ zn0 q;
    public final /* synthetic */ d90 r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yw1(d90 d90Var, dh0 dh0Var) {
        super(3, dh0Var);
        this.r = d90Var;
    }

    @Override // defpackage.ff1
    public final Object d(Object obj, Object obj2, Object obj3) {
        yw1 yw1Var = new yw1(this.r, (dh0) obj3);
        yw1Var.q = (zn0) obj;
        return yw1Var.q(t64.a);
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        d90 d90Var = this.r;
        vi2 vi2Var = (vi2) d90Var.p;
        int i = this.p;
        if (i == 0) {
            gg4.T(obj);
            zn0 zn0Var = this.q;
            byte bT = vi2Var.t();
            if (bT == 1) {
                return d90Var.l(true);
            }
            if (bT == 0) {
                return d90Var.l(false);
            }
            if (bT != 6) {
                if (bT == 8) {
                    return d90Var.k();
                }
                vi2.l(vi2Var, "Can't begin reading element, unexpected token", 0, null, 6);
                throw null;
            }
            this.p = 1;
            obj = d90.a(d90Var, zn0Var, this);
            ri0 ri0Var = ri0.n;
            if (obj == ri0Var) {
                return ri0Var;
            }
        } else {
            if (i != 1) {
                k21.n("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            gg4.T(obj);
        }
        return (xv1) obj;
    }
}
