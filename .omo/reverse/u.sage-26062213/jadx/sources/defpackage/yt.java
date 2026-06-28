package defpackage;

import com.google.android.gms.common.ConnectionResult;
import u.sage.a;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yt extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public final /* synthetic */ a t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ yt(a aVar, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = aVar;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        ri0 ri0Var = ri0.n;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
            case 5:
                ((yt) o(dh0Var, qi0Var)).q(t64Var);
                break;
            case 8:
                ((yt) o(dh0Var, qi0Var)).q(t64Var);
                break;
        }
        return ((yt) o(dh0Var, qi0Var)).q(t64Var);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        a aVar = this.t;
        switch (i) {
            case 0:
                return new yt(aVar, dh0Var, 0);
            case 1:
                return new yt(aVar, dh0Var, 1);
            case 2:
                return new yt(aVar, dh0Var, 2);
            case 3:
                return new yt(aVar, dh0Var, 3);
            case 4:
                return new yt(aVar, dh0Var, 4);
            case 5:
                return new yt(aVar, dh0Var, 5);
            case 6:
                return new yt(aVar, dh0Var, 6);
            case 7:
                return new yt(aVar, dh0Var, 7);
            case 8:
                return new yt(aVar, dh0Var, 8);
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                return new yt(aVar, dh0Var, 9);
            default:
                return new yt(aVar, dh0Var, 10);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        int i2 = 3;
        int i3 = 0;
        t64 t64Var = t64.a;
        int i4 = 2;
        a aVar = this.t;
        ri0 ri0Var = ri0.n;
        int i5 = 1;
        dh0 dh0Var = null;
        switch (i) {
            case 0:
                int i6 = this.s;
                if (i6 == 0) {
                    gg4.T(obj);
                    a81 a81VarA = aVar.f().a();
                    this.s = 1;
                    obj = qj0.H(a81VarA, this);
                    if (obj != ri0Var) {
                    }
                } else if (i6 == 1) {
                    gg4.T(obj);
                } else if (i6 != 2) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                w3 w3Var = (w3) obj;
                if (w3Var.l()) {
                    ra3 ra3Var = ez3.a;
                    aVar.j();
                    ra3Var.getClass();
                    ra3.c(new Object[0]);
                    n1 n1VarF = aVar.f();
                    w3 w3VarA = w3.a(w3Var, aVar.f().d(), 2031);
                    this.s = 2;
                    if (n1VarF.g(w3VarA, this) != ri0Var) {
                    }
                }
                break;
            case 1:
                int i7 = this.s;
                if (i7 == 0) {
                    gg4.T(obj);
                    ps psVarS = aVar.s();
                    this.s = 1;
                    if (psVarS.i(true, this) != ri0Var) {
                    }
                } else if (i7 == 1) {
                    gg4.T(obj);
                } else if (i7 != 2) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                zp0 zp0Var = zu0.a;
                xi1 xi1Var = n92.a;
                zt ztVar = new zt(aVar, dh0Var, i3);
                this.s = 2;
                if (ca.O(xi1Var, ztVar, this) != ri0Var) {
                }
                break;
            case 2:
                int i8 = this.s;
                if (i8 == 0) {
                    gg4.T(obj);
                    ra3 ra3Var2 = ez3.a;
                    aVar.j();
                    ra3Var2.getClass();
                    ra3.c(new Object[0]);
                    ps psVarS2 = aVar.s();
                    this.s = 1;
                    if (psVarS2.i(false, this) == ri0Var) {
                    }
                } else if (i8 != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                ra3 ra3Var3 = ez3.a;
                aVar.j();
                ra3Var3.getClass();
                ra3.c(new Object[0]);
                break;
            case 3:
                int i9 = this.s;
                if (i9 == 0) {
                    gg4.T(obj);
                    sm2 sm2Var = sm2.o;
                    yt ytVar = new yt(aVar, dh0Var, i4);
                    this.s = 1;
                    if (ca.O(sm2Var, ytVar, this) != ri0Var) {
                    }
                } else if (i9 == 1) {
                    gg4.T(obj);
                } else if (i9 != 2) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                zp0 zp0Var2 = zu0.a;
                xi1 xi1Var2 = n92.a;
                zt ztVar2 = new zt(aVar, dh0Var, i5);
                this.s = 2;
                if (ca.O(xi1Var2, ztVar2, this) != ri0Var) {
                }
                break;
            case 4:
                int i10 = this.s;
                if (i10 == 0) {
                    gg4.T(obj);
                    this.s = 1;
                    Object objI = qj0.I(aVar.x, new du(i4, dh0Var, i5), this);
                    if (objI != ri0Var) {
                        objI = t64Var;
                    }
                    if (objI == ri0Var) {
                    }
                } else if (i10 != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                aVar.x("OnStartCommand");
                break;
            case 5:
                int i11 = this.s;
                if (i11 == 0) {
                    gg4.T(obj);
                    b23 b23Var = a.E;
                    dj2 dj2Var = new dj2(aVar);
                    this.s = 1;
                    b23Var.n.b(dj2Var, this);
                } else if (i11 != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                    p61.q();
                }
                break;
            case 6:
                int i12 = this.s;
                if (i12 == 0) {
                    gg4.T(obj);
                    a81 a81Var = (a81) ((nv3) aVar.f().c).getValue();
                    au auVar = new au(aVar, i3);
                    this.s = 1;
                    if (a81Var.b(auVar, this) == ri0Var) {
                    }
                } else if (i12 != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                break;
            case 7:
                int i13 = this.s;
                if (i13 == 0) {
                    gg4.T(obj);
                    a81 a81Var2 = (a81) aVar.s().d.getValue();
                    a81 a81Var3 = (a81) aVar.s().e.getValue();
                    bu buVar = new bu(3, null);
                    au auVar2 = new au(aVar, i5);
                    this.s = 1;
                    Object objO = w80.o(this, auVar2, ag0.p, new t81(buVar, dh0Var, i4), new a81[]{a81Var2, a81Var3});
                    if (objO != ri0Var) {
                        objO = t64Var;
                    }
                    if (objO == ri0Var) {
                    }
                } else if (i13 != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                break;
            case 8:
                int i14 = this.s;
                if (i14 != 0) {
                    if (i14 != 1) {
                        k21.n("call to 'resume' before 'invoke' with coroutine");
                    } else {
                        gg4.T(obj);
                    }
                    break;
                } else {
                    gg4.T(obj);
                    ur3 ur3VarK = aVar.o().k();
                    au auVar3 = new au(aVar, i4);
                    this.s = 1;
                    if (ur3VarK.b(auVar3, this) == ri0Var) {
                    }
                }
                p61.q();
                break;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                int i15 = this.s;
                if (i15 == 0) {
                    gg4.T(obj);
                    a81 a81Var4 = (a81) aVar.o().j.getValue();
                    au auVar4 = new au(aVar, i2);
                    this.s = 1;
                    if (a81Var4.b(auVar4, this) == ri0Var) {
                    }
                } else if (i15 != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                break;
            default:
                int i16 = this.s;
                if (i16 == 0) {
                    gg4.T(obj);
                    wr3 wr3Var = aVar.y;
                    du duVar = new du(i4, dh0Var, i3);
                    this.s = 1;
                    Object objI2 = qj0.I(wr3Var, duVar, this);
                    if (objI2 == ri0Var) {
                    }
                } else if (i16 != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                break;
        }
        return ri0Var;
    }
}
