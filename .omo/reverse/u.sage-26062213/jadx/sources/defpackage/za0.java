package defpackage;

import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class za0 extends e83 implements df1 {
    public int p;
    public int q;
    public int r;
    public int s;
    public /* synthetic */ Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ ab0 f435u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public za0(ab0 ab0Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.f435u = ab0Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        return ((za0) o((dh0) obj2, (bi3) obj)).q(t64.a);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        za0 za0Var = new za0(this.f435u, dh0Var);
        za0Var.t = obj;
        return za0Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        bi3 bi3Var;
        int i;
        int i2;
        int i3;
        String strP;
        int i4;
        int i5;
        String str;
        ab0 ab0Var = this.f435u;
        dg2 dg2Var = ab0Var.n;
        sf2 sf2Var = ab0Var.p;
        int i6 = this.s;
        if (i6 == 0) {
            gg4.T(obj);
            bi3Var = (bi3) this.t;
            i = 0;
            i2 = 0;
            i3 = 0;
        } else {
            if (i6 != 1) {
                k21.n("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            i = this.r;
            i2 = this.q;
            i3 = this.p;
            bi3Var = (bi3) this.t;
            gg4.T(obj);
        }
        if (i3 >= Math.min(ab0Var.q + 10, sf2Var.b)) {
            return t64.a;
        }
        int i7 = i3 + 1;
        int iC = sf2Var.c(i3);
        switch (iC) {
            case 0:
                strP = "up";
                break;
            case 1:
                Object objF = dg2Var.f(i2);
                i2++;
                strP = "down " + objF;
                break;
            case 2:
                strP = di0.p(sf2Var.c(i7), sf2Var.c(i3 + 2), "remove ", " ");
                i7 = i3 + 3;
                break;
            case 3:
                int iC2 = sf2Var.c(i7);
                int iC3 = sf2Var.c(i3 + 2);
                int iC4 = sf2Var.c(i3 + 3);
                StringBuilder sbV = xw1.v("move ", iC2, " ", iC3, " ");
                sbV.append(iC4);
                strP = sbV.toString();
                i7 = i3 + 4;
                break;
            case 4:
                strP = "clear";
                break;
            case 5:
                i4 = i3 + 2;
                int iC5 = sf2Var.c(i7);
                i5 = i2 + 1;
                str = "insertBottomUp " + iC5 + " " + dg2Var.f(i2);
                int i8 = i4;
                strP = str;
                i7 = i8;
                i2 = i5;
                break;
            case 6:
                i4 = i3 + 2;
                int iC6 = sf2Var.c(i7);
                i5 = i2 + 1;
                str = "insertTopDown " + iC6 + " " + dg2Var.f(i2);
                int i82 = i4;
                strP = str;
                i7 = i82;
                i2 = i5;
                break;
            case 7:
                Object objF2 = dg2Var.f(i2);
                objF2.getClass();
                n44.R(2, objF2);
                i2 += 2;
                strP = "apply " + ((df1) objF2);
                break;
            case 8:
                strP = "reuse " + ab0Var.o.f(i);
                i++;
                break;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                strP = "recompose pending";
                break;
            default:
                strP = di0.q(iC, "unknown op: ");
                break;
        }
        this.t = bi3Var;
        this.p = i7;
        this.q = i2;
        this.r = i;
        this.s = 1;
        bi3Var.d(i3 + ": " + strP, this);
        return ri0.n;
    }
}
