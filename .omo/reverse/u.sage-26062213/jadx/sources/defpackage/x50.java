package defpackage;

import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import com.google.android.gms.common.ConnectionResult;
import u.sage.ClaudeUsageService;
import u.sage.MainApplication;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class x50 extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public /* synthetic */ Object t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x50(n12 n12Var, int i, dh0 dh0Var) {
        super(2, dh0Var);
        this.r = 9;
        this.t = n12Var;
        this.s = i;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) throws Throwable {
        int i = this.r;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                ((x50) o((dh0) obj2, (qi0) obj)).q(t64Var);
                return ri0.n;
            case 1:
                return ((x50) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 2:
                return ((x50) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 3:
                return ((x50) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 4:
                return ((x50) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 5:
                return ((x50) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 6:
                return ((x50) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 7:
                return ((x50) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 8:
                return ((x50) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                ((x50) o((dh0) obj2, (jf3) obj)).q(t64Var);
                return t64Var;
            case 10:
                return ((x50) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                return ((x50) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 12:
                return ((x50) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 13:
                return ((x50) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 14:
                return ((x50) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 15:
                return ((x50) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 16:
                return ((x50) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 17:
                return ((x50) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                return ((x50) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 19:
                return ((x50) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 20:
                return ((x50) o((dh0) obj2, (qi0) obj)).q(t64Var);
            default:
                return ((x50) o((dh0) obj2, (qi0) obj)).q(t64Var);
        }
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = 2;
        switch (this.r) {
            case 0:
                return new x50((ClaudeUsageService) this.t, dh0Var, 0);
            case 1:
                return new x50((ConstraintTrackingWorker) this.t, dh0Var, 1);
            case 2:
                return new x50((no0) this.t, dh0Var, i);
            case 3:
                return new x50((lf3) this.t, dh0Var, 3);
            case 4:
                return new x50((k81) this.t, dh0Var, 4);
            case 5:
                return new x50((na1) this.t, dh0Var, 5);
            case 6:
                return new x50((bu1) this.t, dh0Var, 6);
            case 7:
                return new x50((ju1) this.t, dh0Var, 7);
            case 8:
                return new x50((xh1) this.t, dh0Var, 8);
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                return new x50((n12) this.t, this.s, dh0Var);
            case 10:
                return new x50((pd) this.t, dh0Var, 10);
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                return new x50((us0) this.t, dh0Var, 11);
            case 12:
                return new x50((MainApplication) this.t, dh0Var, 12);
            case 13:
                return new x50((lb2) this.t, dh0Var, 13);
            case 14:
                return new x50((me2) this.t, dh0Var, 14);
            case 15:
                x50 x50Var = new x50(i, dh0Var);
                x50Var.t = obj;
                return x50Var;
            case 16:
                return new x50((dc) this.t, dh0Var, 16);
            case 17:
                return new x50((z80) this.t, dh0Var, 17);
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                return new x50((pg3) this.t, dh0Var, 18);
            case 19:
                return new x50((fv3) this.t, dh0Var, 19);
            case 20:
                return new x50((bz3) this.t, dh0Var, 20);
            default:
                return new x50((v24) this.t, dh0Var, 21);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) throws Throwable {
        Object objJ;
        qi0 qi0Var;
        int i = this.r;
        t64 t64Var = t64.a;
        ri0 ri0Var = ri0.n;
        int i2 = 1;
        dh0 dh0Var = null;
        switch (i) {
            case 0:
                int i3 = this.s;
                if (i3 != 0) {
                    if (i3 != 1) {
                        k21.n("call to 'resume' before 'invoke' with coroutine");
                    } else {
                        gg4.T(obj);
                        p61.q();
                    }
                    return null;
                }
                gg4.T(obj);
                ClaudeUsageService claudeUsageService = (ClaudeUsageService) this.t;
                us0 us0Var = claudeUsageService.O;
                if (us0Var == null) {
                    nt1.X("developerDataStore");
                    throw null;
                }
                b23 b23Var = us0Var.b;
                t50 t50Var = new t50(i2, claudeUsageService);
                this.s = 1;
                b23Var.n.b(t50Var, this);
                return ri0Var;
            case 1:
                int i4 = this.s;
                if (i4 != 0) {
                    if (i4 == 1) {
                        gg4.T(obj);
                        return obj;
                    }
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                gg4.T(obj);
                ConstraintTrackingWorker constraintTrackingWorker = (ConstraintTrackingWorker) this.t;
                this.s = 1;
                Object objE = ConstraintTrackingWorker.e(constraintTrackingWorker, this);
                return objE == ri0Var ? ri0Var : objE;
            case 2:
                no0 no0Var = (no0) this.t;
                int i5 = this.s;
                if (i5 != 0) {
                    if (i5 == 1) {
                        gg4.T(obj);
                        return t64Var;
                    }
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                gg4.T(obj);
                u33 u33Var = new u33();
                u33 u33Var2 = new u33();
                u33 u33Var3 = new u33();
                a81 a81VarA = no0Var.B.a();
                v30 v30Var = new v30(1, u33Var, u33Var2, u33Var3, no0Var);
                this.s = 1;
                return a81VarA.b(v30Var, this) == ri0Var ? ri0Var : t64Var;
            case 3:
                int i6 = this.s;
                if (i6 != 0) {
                    if (i6 == 1) {
                        gg4.T(obj);
                        return t64Var;
                    }
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                gg4.T(obj);
                lf3 lf3Var = (lf3) this.t;
                int iG = lf3Var.f.g();
                this.s = 1;
                Object objI = tv4.i(lf3Var, iG - lf3Var.a.g(), new yq3(7, dh0Var), this);
                if (objI != ri0Var) {
                    objI = t64Var;
                }
                return objI == ri0Var ? ri0Var : t64Var;
            case 4:
                int i7 = this.s;
                if (i7 != 0) {
                    if (i7 == 1) {
                        gg4.T(obj);
                        return t64Var;
                    }
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                gg4.T(obj);
                k81 k81Var = (k81) this.t;
                this.s = 1;
                Object objB = k81Var.b(ym2.n, this);
                if (objB != ri0Var) {
                    objB = t64Var;
                }
                return objB == ri0Var ? ri0Var : t64Var;
            case 5:
                int i8 = this.s;
                if (i8 == 0) {
                    gg4.T(obj);
                    na1 na1Var = (na1) this.t;
                    this.s = 1;
                    return k75.l(na1Var, null, this) == ri0Var ? ri0Var : t64Var;
                }
                if (i8 == 1) {
                    gg4.T(obj);
                    return t64Var;
                }
                k21.n("call to 'resume' before 'invoke' with coroutine");
                return null;
            case 6:
                int i9 = this.s;
                if (i9 == 0) {
                    gg4.T(obj);
                    bu1 bu1Var = (bu1) this.t;
                    this.s = 1;
                    return bu1Var.a(this) == ri0Var ? ri0Var : t64Var;
                }
                if (i9 == 1) {
                    gg4.T(obj);
                    return t64Var;
                }
                k21.n("call to 'resume' before 'invoke' with coroutine");
                return null;
            case 7:
                int i10 = this.s;
                if (i10 == 0) {
                    gg4.T(obj);
                    a81 a81VarB = ((ju1) this.t).c.b();
                    this.s = 1;
                    objJ = qj0.J(a81VarB, this);
                    if (objJ == ri0Var) {
                        return ri0Var;
                    }
                } else {
                    if (i10 != 1) {
                        k21.n("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    gg4.T(obj);
                    objJ = obj;
                }
                hg2 hg2Var = (hg2) objJ;
                return hg2Var != null ? hg2Var.a() : h01.n;
            case 8:
                int i11 = this.s;
                if (i11 != 0) {
                    if (i11 == 1) {
                        gg4.T(obj);
                        return t64Var;
                    }
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                gg4.T(obj);
                we weVar = (we) ((xh1) this.t).o;
                Float f = new Float(0.0f);
                yq3 yq3VarQ = tv4.Q(0.0f, 400.0f, new Float(0.5f), 1);
                this.s = 1;
                return k75.i(weVar, f, yq3VarQ, true, null, this, 8) == ri0Var ? ri0Var : t64Var;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                gg4.T(obj);
                ((n12) this.t).l(this.s);
                return t64Var;
            case 10:
                int i12 = this.s;
                if (i12 != 0) {
                    if (i12 == 1) {
                        gg4.T(obj);
                        return t64Var;
                    }
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                gg4.T(obj);
                pd pdVar = (pd) this.t;
                Float f2 = new Float(360.0f);
                oq1 oq1VarA = tv4.A(tv4.V(4666, 2, ny0.c), 4);
                this.s = 1;
                return pd.c(pdVar, f2, oq1VarA, this) == ri0Var ? ri0Var : t64Var;
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                int i13 = this.s;
                if (i13 != 0) {
                    if (i13 == 1) {
                        gg4.T(obj);
                        return obj;
                    }
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                gg4.T(obj);
                b23 b23Var2 = ((us0) this.t).c;
                this.s = 1;
                Object objH = qj0.H(b23Var2, this);
                return objH == ri0Var ? ri0Var : objH;
            case 12:
                MainApplication mainApplication = (MainApplication) this.t;
                int i14 = this.s;
                if (i14 != 0) {
                    if (i14 == 1) {
                        gg4.T(obj);
                        return t64Var;
                    }
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                gg4.T(obj);
                ri3 ri3Var = mainApplication.q;
                if (ri3Var == null) {
                    nt1.X("serviceAvailabilityManager");
                    throw null;
                }
                b23 b23Var3 = ri3Var.c;
                int i15 = 3;
                t50 t50Var2 = new t50(i15, mainApplication);
                this.s = 1;
                b23Var3.b(new uq(new u33(), t50Var2, i15), this);
                return ri0Var;
            case 13:
                int i16 = this.s;
                if (i16 != 0) {
                    if (i16 == 1) {
                        gg4.T(obj);
                        return obj;
                    }
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                gg4.T(obj);
                mb2 mb2Var = ((lb2) this.t).a;
                this.s = 1;
                Object objC = mb2Var.c(this);
                return objC == ri0Var ? ri0Var : objC;
            case 14:
                int i17 = this.s;
                if (i17 != 0) {
                    if (i17 == 1) {
                        gg4.T(obj);
                        return obj;
                    }
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                gg4.T(obj);
                zy zyVar = ((me2) this.t).g;
                this.s = 1;
                Object objR = dm0.r(new n(zyVar, dh0Var, 27), this);
                return objR == ri0Var ? ri0Var : objR;
            case 15:
                int i18 = this.s;
                if (i18 == 0) {
                    gg4.T(obj);
                    qi0Var = (qi0) this.t;
                } else {
                    if (i18 != 1) {
                        k21.n("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    qi0Var = (qi0) this.t;
                    gg4.T(obj);
                }
                while (n44.t0(qi0Var.d())) {
                    z82 z82Var = new z82(18);
                    this.t = qi0Var;
                    this.s = 1;
                    hi0 hi0Var = this.o;
                    hi0Var.getClass();
                    if (c75.E(hi0Var).a(z82Var, this) == ri0Var) {
                        return ri0Var;
                    }
                }
                return t64Var;
            case 16:
                int i19 = this.s;
                if (i19 != 0) {
                    if (i19 == 1) {
                        gg4.T(obj);
                        return t64Var;
                    }
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                gg4.T(obj);
                pd pdVar2 = ((dc) this.t).N;
                Float f3 = new Float(0.0f);
                this.s = 1;
                return pdVar2.e(f3, this) == ri0Var ? ri0Var : t64Var;
            case 17:
                int i20 = this.s;
                if (i20 != 0) {
                    if (i20 == 1) {
                        gg4.T(obj);
                        return obj;
                    }
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                gg4.T(obj);
                z80 z80Var = (z80) this.t;
                this.s = 1;
                Object objS = z80Var.s(this);
                return objS == ri0Var ? ri0Var : objS;
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                int i21 = this.s;
                if (i21 == 0) {
                    gg4.T(obj);
                    pg3 pg3Var = (pg3) this.t;
                    this.s = 1;
                    return pg3.x(pg3Var, this) == ri0Var ? ri0Var : t64Var;
                }
                if (i21 == 1) {
                    gg4.T(obj);
                    return t64Var;
                }
                k21.n("call to 'resume' before 'invoke' with coroutine");
                return null;
            case 19:
                fv3 fv3Var = (fv3) this.t;
                int i22 = this.s;
                if (i22 == 0) {
                    gg4.T(obj);
                    PointerInputEventHandler pointerInputEventHandler = fv3Var.D;
                    this.s = 2;
                    return pointerInputEventHandler.invoke(fv3Var, this) == ri0Var ? ri0Var : t64Var;
                }
                if (i22 == 1 || i22 == 2) {
                    gg4.T(obj);
                    return t64Var;
                }
                k21.n("call to 'resume' before 'invoke' with coroutine");
                return null;
            case 20:
                bz3 bz3Var = (bz3) this.t;
                int i23 = this.s;
                if (i23 != 0) {
                    if (i23 == 1) {
                        gg4.T(obj);
                        return t64Var;
                    }
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                gg4.T(obj);
                u33 u33Var4 = new u33();
                a81 a81VarA2 = bz3Var.B.a();
                uq uqVar = new uq(11, u33Var4, bz3Var);
                this.s = 1;
                return a81VarA2.b(uqVar, this) == ri0Var ? ri0Var : t64Var;
            default:
                int i24 = this.s;
                if (i24 == 0) {
                    gg4.T(obj);
                    v24 v24Var = (v24) this.t;
                    this.s = 1;
                    return v24Var.f(this) == ri0Var ? ri0Var : t64Var;
                }
                if (i24 == 1) {
                    gg4.T(obj);
                    return t64Var;
                }
                k21.n("call to 'resume' before 'invoke' with coroutine");
                return null;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ x50(int i, dh0 dh0Var) {
        super(i, dh0Var);
        this.r = 15;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ x50(Object obj, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = obj;
    }
}
