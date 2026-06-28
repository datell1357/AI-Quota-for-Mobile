package defpackage;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fd extends xx1 implements df1 {
    public static final fd A;
    public static final fd B;
    public static final fd C;
    public static final fd D;
    public static final fd E;
    public static final fd F;
    public static final fd G;
    public static final fd H;
    public static final fd I;
    public static final fd J;
    public static final fd K;
    public static final fd L;
    public static final fd M;
    public static final fd N;
    public static final fd O;
    public static final fd P;
    public static final fd Q;
    public static final fd R;
    public static final fd S;
    public static final fd p;
    public static final fd q;
    public static final fd r;
    public static final fd s;
    public static final fd t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final fd f96u;
    public static final fd v;
    public static final fd w;
    public static final fd x;
    public static final fd y;
    public static final fd z;
    public final /* synthetic */ int o;

    static {
        int i = 2;
        p = new fd(i, 0);
        q = new fd(i, 1);
        r = new fd(i, 2);
        s = new fd(i, 3);
        t = new fd(i, 4);
        f96u = new fd(i, 5);
        v = new fd(i, 6);
        w = new fd(i, 7);
        x = new fd(i, 8);
        y = new fd(i, 9);
        z = new fd(i, 10);
        A = new fd(i, 11);
        B = new fd(i, 12);
        C = new fd(i, 13);
        D = new fd(i, 14);
        E = new fd(i, 15);
        F = new fd(i, 16);
        G = new fd(i, 17);
        H = new fd(i, 18);
        I = new fd(i, 19);
        J = new fd(i, 20);
        K = new fd(i, 21);
        L = new fd(i, 22);
        M = new fd(i, 23);
        N = new fd(i, 24);
        O = new fd(i, 25);
        P = new fd(i, 26);
        Q = new fd(i, 27);
        R = new fd(i, 28);
        S = new fd(i, 29);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ fd(int i, int i2) {
        super(i);
        this.o = i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11, types: [ug2] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14, types: [ug2] */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r9v32 */
    /* JADX WARN: Type inference failed for: r9v33, types: [md2] */
    /* JADX WARN: Type inference failed for: r9v37 */
    /* JADX WARN: Type inference failed for: r9v38, types: [md2] */
    /* JADX WARN: Type inference failed for: r9v39, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v40 */
    /* JADX WARN: Type inference failed for: r9v41 */
    /* JADX WARN: Type inference failed for: r9v42 */
    /* JADX WARN: Type inference failed for: r9v43 */
    /* JADX WARN: Type inference failed for: r9v62 */
    /* JADX WARN: Type inference failed for: r9v63 */
    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.o;
        int i2 = 0;
        z = false;
        boolean z2 = false;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                qj0.r((xy1) obj).setUpdateBlock((pe1) obj2);
                return t64Var;
            case 1:
                qj0.r((xy1) obj).setReleaseBlock((pe1) obj2);
                return t64Var;
            case 2:
                qj0.r((xy1) obj).setModifier((nd2) obj2);
                return t64Var;
            case 3:
                qj0.r((xy1) obj).setDensity((as0) obj2);
                return t64Var;
            case 4:
                qj0.r((xy1) obj).setLifecycleOwner((p22) obj2);
                return t64Var;
            case 5:
                qj0.r((xy1) obj).setSavedStateRegistryOwner((yc3) obj2);
                return t64Var;
            case 6:
                pb4 pb4VarR = qj0.r((xy1) obj);
                int iOrdinal = ((hy1) obj2).ordinal();
                if (iOrdinal != 0) {
                    if (iOrdinal != 1) {
                        p61.x();
                        return null;
                    }
                    i2 = 1;
                }
                pb4VarR.setLayoutDirection(i2);
                return t64Var;
            case 7:
                long j = ((rs1) obj).a;
                long j2 = ((rs1) obj2).a;
                Map map = ic4.a;
                return tv4.Q(0.0f, 400.0f, new rs1(4294967297L), 1);
            case 8:
                b11 b11Var = (b11) obj2;
                if (((b11) obj) == b11Var && b11Var == b11.p) {
                    z2 = true;
                }
                return Boolean.valueOf(z2);
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                String str = (String) obj;
                ld2 ld2Var = (ld2) obj2;
                if (str.length() == 0) {
                    return ld2Var.toString();
                }
                return str + ", " + ld2Var;
            case 10:
                ag1 ag1Var = (ag1) obj;
                int iIntValue = ((Number) obj2).intValue();
                if (!ag1Var.N(iIntValue & 1, (iIntValue & 3) != 2)) {
                    ag1Var.Q();
                }
                return t64Var;
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                ag1 ag1Var2 = (ag1) obj;
                int iIntValue2 = ((Number) obj2).intValue();
                if (!ag1Var2.N(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    ag1Var2.Q();
                }
                return t64Var;
            case 12:
                ag1 ag1Var3 = (ag1) obj;
                int iIntValue3 = ((Number) obj2).intValue();
                if (!ag1Var3.N(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    ag1Var3.Q();
                }
                return t64Var;
            case 13:
                ((Number) obj2).intValue();
                ((xy1) ((lb0) obj)).getClass();
                return t64Var;
            case 14:
                ((xy1) ((lb0) obj)).e0((db2) obj2);
                return t64Var;
            case 15:
                ((xy1) ((lb0) obj)).f0((nd2) obj2);
                return t64Var;
            case 16:
                hc0 hc0Var = (hc0) obj2;
                xy1 xy1Var = (xy1) ((lb0) obj);
                xy1Var.O = hc0Var;
                bo boVar = xy1Var.S;
                is3 is3Var = kc0.h;
                hu2 hu2Var = (hu2) hc0Var;
                hu2Var.getClass();
                xy1Var.b0((as0) bi4.F(hu2Var, is3Var));
                hu2 hu2Var2 = (hu2) hc0Var;
                hy1 hy1Var = (hy1) bi4.F(hu2Var2, kc0.n);
                if (xy1Var.M != hy1Var) {
                    xy1Var.M = hy1Var;
                    xy1Var.E();
                    xy1 xy1VarU = xy1Var.u();
                    if (xy1VarU != null) {
                        xy1VarU.C();
                    } else {
                        sr2 sr2Var = xy1Var.A;
                        if (sr2Var != null) {
                            ((q9) sr2Var).invalidate();
                        }
                    }
                    xy1Var.D();
                    for (md2 md2Var = (md2) boVar.g; md2Var != null; md2Var = md2Var.s) {
                        md2Var.q0();
                    }
                }
                xy1Var.g0((nb4) bi4.F(hu2Var2, kc0.t));
                md2 md2Var2 = (md2) boVar.g;
                if ((md2Var2.q & 32768) != 0) {
                    while (md2Var2 != null) {
                        if ((md2Var2.p & 32768) != 0) {
                            ?? G2 = md2Var2;
                            ?? ug2Var = 0;
                            while (G2 != 0) {
                                if (G2 instanceof fc0) {
                                    md2 md2Var3 = ((md2) ((fc0) G2)).n;
                                    if (md2Var3.A) {
                                        nm2.c(md2Var3);
                                    } else {
                                        md2Var3.w = true;
                                    }
                                } else if ((G2.p & 32768) != 0 && (G2 instanceof kr0)) {
                                    md2 md2Var4 = ((kr0) G2).C;
                                    int i3 = 0;
                                    ug2Var = ug2Var;
                                    G2 = G2;
                                    while (md2Var4 != null) {
                                        if ((md2Var4.p & 32768) != 0) {
                                            i3++;
                                            ug2Var = ug2Var;
                                            if (i3 == 1) {
                                                G2 = md2Var4;
                                            } else {
                                                if (ug2Var == 0) {
                                                    ug2Var = new ug2(new md2[16]);
                                                }
                                                if (G2 != 0) {
                                                    ug2Var.c(G2);
                                                    G2 = 0;
                                                }
                                                ug2Var.c(md2Var4);
                                            }
                                        }
                                        md2Var4 = md2Var4.s;
                                        ug2Var = ug2Var;
                                        G2 = G2;
                                    }
                                    if (i3 == 1) {
                                    }
                                }
                                G2 = w80.g(ug2Var);
                            }
                        }
                        if ((md2Var2.q & 32768) != 0) {
                            md2Var2 = md2Var2.s;
                        }
                    }
                }
                return t64Var;
            case 17:
                Collection collection = (List) obj;
                List list = (List) obj2;
                if (collection == null) {
                    collection = g01.n;
                }
                return o70.s0(collection, list);
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                return (ia) obj;
            case 19:
                List list2 = (List) obj;
                List list3 = (List) obj2;
                if (list2 == null) {
                    return list3;
                }
                ArrayList arrayList = new ArrayList(list2);
                arrayList.addAll(list3);
                return arrayList;
            case 20:
                return (qg0) obj;
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                return (za) obj;
            case 22:
                return (t64) obj;
            case ConnectionResult.API_DISABLED /* 23 */:
                return (t64) obj;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                throw new IllegalStateException("merge function called on unmergeable property IsDialog. A dialog should not be a child of a clickable/focusable node.");
            case 25:
                throw new IllegalStateException("merge function called on unmergeable property IsPopup. A popup should not be a child of a clickable/focusable node.");
            case 26:
                return (t64) obj;
            case 27:
                throw new IllegalStateException("merge function called on unmergeable property PaneTitle.");
            case 28:
                q93 q93Var = (q93) obj;
                int i4 = ((q93) obj2).a;
                return q93Var;
            default:
                return (jl3) obj;
        }
    }
}
