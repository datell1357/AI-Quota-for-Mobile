package defpackage;

import android.content.Context;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ms extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public /* synthetic */ Object s;
    public /* synthetic */ boolean t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ms(Context context, dh0 dh0Var) {
        super(2, dh0Var);
        this.r = 7;
        this.s = context;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                ((ms) o((dh0) obj2, (hg2) obj)).q(t64Var);
                break;
            case 1:
                ((ms) o((dh0) obj2, (hg2) obj)).q(t64Var);
                break;
            case 2:
                ((ms) o((dh0) obj2, (hg2) obj)).q(t64Var);
                break;
            case 3:
                ((ms) o((dh0) obj2, (hg2) obj)).q(t64Var);
                break;
            case 4:
                ((ms) o((dh0) obj2, (hg2) obj)).q(t64Var);
                break;
            case 5:
                ((ms) o((dh0) obj2, (hg2) obj)).q(t64Var);
                break;
            case 6:
                ((ms) o((dh0) obj2, (hg2) obj)).q(t64Var);
                break;
            default:
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                ((ms) o((dh0) obj2, bool)).q(t64Var);
                break;
        }
        return t64Var;
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        switch (this.r) {
            case 0:
                ms msVar = new ms(this.t, dh0Var, 0);
                msVar.s = obj;
                return msVar;
            case 1:
                ms msVar2 = new ms(this.t, dh0Var, 1);
                msVar2.s = obj;
                return msVar2;
            case 2:
                ms msVar3 = new ms(this.t, dh0Var, 2);
                msVar3.s = obj;
                return msVar3;
            case 3:
                ms msVar4 = new ms(this.t, dh0Var, 3);
                msVar4.s = obj;
                return msVar4;
            case 4:
                ms msVar5 = new ms(this.t, dh0Var, 4);
                msVar5.s = obj;
                return msVar5;
            case 5:
                ms msVar6 = new ms(this.t, dh0Var, 5);
                msVar6.s = obj;
                return msVar6;
            case 6:
                ms msVar7 = new ms(this.t, dh0Var, 6);
                msVar7.s = obj;
                return msVar7;
            default:
                ms msVar8 = new ms((Context) this.s, dh0Var);
                msVar8.t = ((Boolean) obj).booleanValue();
                return msVar8;
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
                rx2 rx2Var = ps.i;
                hg2Var.e(ps.q, Boolean.valueOf(this.t));
                break;
            case 1:
                hg2 hg2Var2 = (hg2) this.s;
                gg4.T(obj);
                rx2 rx2Var2 = ps.i;
                hg2Var2.e(ps.k, Boolean.valueOf(this.t));
                break;
            case 2:
                hg2 hg2Var3 = (hg2) this.s;
                gg4.T(obj);
                rx2 rx2Var3 = ps.i;
                hg2Var3.e(ps.m, Boolean.valueOf(this.t));
                break;
            case 3:
                hg2 hg2Var4 = (hg2) this.s;
                gg4.T(obj);
                hg2Var4.e(o10.a, Boolean.valueOf(this.t));
                break;
            case 4:
                hg2 hg2Var5 = (hg2) this.s;
                gg4.T(obj);
                hg2Var5.e(us0.f, Boolean.valueOf(this.t));
                break;
            case 5:
                hg2 hg2Var6 = (hg2) this.s;
                gg4.T(obj);
                hg2Var6.e(us0.h, Boolean.valueOf(this.t));
                break;
            case 6:
                hg2 hg2Var7 = (hg2) this.s;
                gg4.T(obj);
                hg2Var7.e(us0.e, Boolean.valueOf(this.t));
                break;
            default:
                gg4.T(obj);
                vr2.a((Context) this.s, RescheduleReceiver.class, this.t);
                break;
        }
        return t64Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ms(boolean z, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = z;
    }
}
