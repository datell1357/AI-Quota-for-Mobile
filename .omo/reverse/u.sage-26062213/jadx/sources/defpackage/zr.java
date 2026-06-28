package defpackage;

import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zr extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public /* synthetic */ Object s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ zr(int i, dh0 dh0Var, int i2) {
        super(i, dh0Var);
        this.r = i2;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                ((zr) o((dh0) obj2, (hg2) obj)).q(t64Var);
                return t64Var;
            case 1:
                ((zr) o((dh0) obj2, (d84) obj)).q(t64Var);
                return t64Var;
            case 2:
                ((zr) o((dh0) obj2, (d84) obj)).q(t64Var);
                return t64Var;
            case 3:
                ((zr) o((dh0) obj2, (hg2) obj)).q(t64Var);
                return t64Var;
            case 4:
                return ((zr) o((dh0) obj2, (sr3) obj)).q(t64Var);
            case 5:
                return ((zr) o((dh0) obj2, (f33) obj)).q(t64Var);
            case 6:
                ((zr) o((dh0) obj2, (String) obj)).q(t64Var);
                return t64Var;
            default:
                return ((zr) o((dh0) obj2, (mm3) obj)).q(t64Var);
        }
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        switch (this.r) {
            case 0:
                zr zrVar = new zr(2, dh0Var, 0);
                zrVar.s = obj;
                return zrVar;
            case 1:
                zr zrVar2 = new zr(2, dh0Var, 1);
                zrVar2.s = obj;
                return zrVar2;
            case 2:
                zr zrVar3 = new zr(2, dh0Var, 2);
                zrVar3.s = obj;
                return zrVar3;
            case 3:
                zr zrVar4 = new zr(2, dh0Var, 3);
                zrVar4.s = obj;
                return zrVar4;
            case 4:
                zr zrVar5 = new zr(2, dh0Var, 4);
                zrVar5.s = obj;
                return zrVar5;
            case 5:
                zr zrVar6 = new zr(2, dh0Var, 5);
                zrVar6.s = obj;
                return zrVar6;
            case 6:
                zr zrVar7 = new zr(2, dh0Var, 6);
                zrVar7.s = obj;
                return zrVar7;
            default:
                zr zrVar8 = new zr(2, dh0Var, 7);
                zrVar8.s = obj;
                return zrVar8;
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                hg2 hg2Var = (hg2) this.s;
                gg4.T(obj);
                hg2Var.d(ps.i);
                return t64Var;
            case 1:
                d84 d84Var = (d84) this.s;
                gg4.T(obj);
                ra3 ra3Var = ez3.a;
                if (d84Var != null) {
                    new Long(d84Var.b());
                }
                ra3Var.getClass();
                ra3.c(new Object[0]);
                return t64Var;
            case 2:
                d84 d84Var2 = (d84) this.s;
                gg4.T(obj);
                ra3 ra3Var2 = ez3.a;
                if (d84Var2 != null) {
                    zs3.X0(937, d84Var2.toString());
                }
                ra3Var2.getClass();
                ra3.c(new Object[0]);
                return t64Var;
            case 3:
                hg2 hg2Var2 = (hg2) this.s;
                gg4.T(obj);
                hg2Var2.b();
                hg2Var2.a.clear();
                return t64Var;
            case 4:
                gg4.T(obj);
                return Boolean.valueOf(!(((sr3) this.s) instanceof y51));
            case 5:
                gg4.T(obj);
                return Boolean.valueOf(((f33) this.s) == f33.n);
            case 6:
                gg4.T(obj);
                Log.e("FirebaseSessions", "Error failed to fetch the remote configs: " + ((String) this.s));
                return t64Var;
            default:
                gg4.T(obj);
                return Boolean.valueOf(((mm3) this.s) != mm3.n);
        }
    }
}
