package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ar extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public /* synthetic */ Object s;
    public final /* synthetic */ String t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ar(String str, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = str;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        hg2 hg2Var = (hg2) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
            case 0:
                ((ar) o(dh0Var, hg2Var)).q(t64Var);
                break;
            case 1:
                ((ar) o(dh0Var, hg2Var)).q(t64Var);
                break;
            case 2:
                ((ar) o(dh0Var, hg2Var)).q(t64Var);
                break;
            case 3:
                ((ar) o(dh0Var, hg2Var)).q(t64Var);
                break;
            case 4:
                ((ar) o(dh0Var, hg2Var)).q(t64Var);
                break;
            case 5:
                ((ar) o(dh0Var, hg2Var)).q(t64Var);
                break;
            default:
                ((ar) o(dh0Var, hg2Var)).q(t64Var);
                break;
        }
        return t64Var;
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        String str = this.t;
        switch (i) {
            case 0:
                ar arVar = new ar(str, dh0Var, 0);
                arVar.s = obj;
                return arVar;
            case 1:
                ar arVar2 = new ar(str, dh0Var, 1);
                arVar2.s = obj;
                return arVar2;
            case 2:
                ar arVar3 = new ar(str, dh0Var, 2);
                arVar3.s = obj;
                return arVar3;
            case 3:
                ar arVar4 = new ar(str, dh0Var, 3);
                arVar4.s = obj;
                return arVar4;
            case 4:
                ar arVar5 = new ar(str, dh0Var, 4);
                arVar5.s = obj;
                return arVar5;
            case 5:
                ar arVar6 = new ar(str, dh0Var, 5);
                arVar6.s = obj;
                return arVar6;
            default:
                ar arVar7 = new ar(str, dh0Var, 6);
                arVar7.s = obj;
                return arVar7;
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        t64 t64Var = t64.a;
        String str = this.t;
        hg2 hg2Var = (hg2) this.s;
        switch (i) {
            case 0:
                gg4.T(obj);
                hg2Var.e(x3.a, str);
                break;
            case 1:
                gg4.T(obj);
                hg2Var.e(qr.a, str);
                break;
            case 2:
                gg4.T(obj);
                hg2Var.e(ps.i, str);
                break;
            case 3:
                gg4.T(obj);
                hg2Var.e(o10.c, str);
                break;
            case 4:
                gg4.T(obj);
                if (str == null) {
                    hg2Var.d(o10.b);
                } else {
                    hg2Var.e(o10.b, str);
                }
                break;
            case 5:
                gg4.T(obj);
                if (str == null) {
                    hg2Var.d(o10.d);
                } else {
                    hg2Var.e(o10.d, str);
                }
                break;
            default:
                gg4.T(obj);
                if (str == null) {
                    hg2Var.d(o10.e);
                } else {
                    hg2Var.e(o10.e, str);
                }
                break;
        }
        return t64Var;
    }
}
