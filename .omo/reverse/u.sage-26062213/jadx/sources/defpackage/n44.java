package defpackage;

import android.graphics.Matrix;
import android.view.View;
import com.google.android.gms.auth.blockstore.BlockstoreClient;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class n44 implements vn0, xb0 {
    public static o83 c = null;
    public static so1 e = null;
    public static final float f = 0.38f;
    public static final float[] a = new float[91];
    public static final mh b = new mh(1);
    public static final Object d = new Object();

    public static final fl0 A0(ka1 ka1Var, int i) {
        int iOrdinal = ka1Var.L0().ordinal();
        fl0 fl0Var = fl0.n;
        if (iOrdinal != 0) {
            fl0 fl0Var2 = fl0.o;
            if (iOrdinal == 1) {
                ka1 ka1VarA = gg4.A(ka1Var);
                if (ka1VarA == null) {
                    k21.f("ActiveParent with no focused child");
                    return null;
                }
                fl0 fl0VarA0 = A0(ka1VarA, i);
                fl0 fl0Var3 = fl0VarA0 != fl0Var ? fl0VarA0 : null;
                if (fl0Var3 != null) {
                    return fl0Var3;
                }
                if (ka1Var.D) {
                    return fl0Var;
                }
                ka1Var.D = true;
                try {
                    ca1 ca1VarI0 = ka1Var.I0();
                    k20 k20Var = new k20(i);
                    dh dhVar = (dh) ((q9) w80.S(ka1Var)).getFocusOwner();
                    ka1 ka1VarF = dhVar.f();
                    ca1VarI0.k.k(k20Var);
                    ka1 ka1VarF2 = dhVar.f();
                    if (!k20Var.b) {
                        return (ka1VarF == ka1VarF2 || ka1VarF2 == null) ? fl0Var : ea1.d == ea1.c ? fl0Var2 : fl0.p;
                    }
                    ea1 ea1Var = ea1.b;
                    return fl0Var2;
                } finally {
                    ka1Var.D = false;
                }
            }
            if (iOrdinal == 2) {
                return fl0Var2;
            }
            if (iOrdinal != 3) {
                p61.x();
                return null;
            }
        }
        return fl0Var;
    }

    public static final fl0 B0(ka1 ka1Var, int i) {
        if (!ka1Var.E) {
            ka1Var.E = true;
            try {
                ca1 ca1VarI0 = ka1Var.I0();
                k20 k20Var = new k20(i);
                dh dhVar = (dh) ((q9) w80.S(ka1Var)).getFocusOwner();
                ka1 ka1VarF = dhVar.f();
                ca1VarI0.j.k(k20Var);
                ka1 ka1VarF2 = dhVar.f();
                boolean z = k20Var.b;
                fl0 fl0Var = fl0.o;
                if (z) {
                    ea1 ea1Var = ea1.b;
                    return fl0Var;
                }
                if (ka1VarF != ka1VarF2 && ka1VarF2 != null) {
                    return ea1.d == ea1.c ? fl0Var : fl0.p;
                }
            } finally {
                ka1Var.E = false;
            }
        }
        return fl0.n;
    }

    public static final void C(boolean z, ne1 ne1Var, ag1 ag1Var, int i, int i2) {
        boolean z2;
        int i3;
        ag1Var.X(-361453782);
        int i4 = i2 & 1;
        int i5 = 2;
        if (i4 != 0) {
            i3 = i | 6;
            z2 = z;
        } else {
            z2 = z;
            i3 = (ag1Var.g(z2) ? 4 : 2) | i;
        }
        int i6 = i3 | (ag1Var.h(ne1Var) ? 32 : 16);
        int i7 = 0;
        boolean z3 = false;
        if (ag1Var.N(i6 & 1, (i6 & 19) != 18)) {
            boolean z4 = i4 != 0 ? true : z2;
            Object objA = (dk2) ag1Var.j(x62.a);
            if (objA == null) {
                ag1Var.W(535274673);
                objA = y62.a(ag1Var);
            } else {
                ag1Var.W(535271790);
            }
            ag1Var.p(false);
            if (objA == null) {
                k21.n("No NavigationEventDispatcherOwner was provided via LocalNavigationEventDispatcherOwner and no OnBackPressedDispatcherOwner was provided via LocalOnBackPressedDispatcherOwner. Please provide one of the two.");
                return;
            }
            boolean zF = ag1Var.f(objA);
            Object objK = ag1Var.K();
            Object obj = rb0.a;
            Object obj2 = objK;
            if (zF || objK == obj) {
                dk2 dk2Var = objA instanceof dk2 ? (dk2) objA : null;
                ck2 navigationEventDispatcher = dk2Var != null ? dk2Var.getNavigationEventDispatcher() : null;
                vo2 vo2Var = objA instanceof vo2 ? (vo2) objA : null;
                Object vpVar = new vp(navigationEventDispatcher, vo2Var != null ? vo2Var.getOnBackPressedDispatcher() : null);
                ag1Var.g0(vpVar);
                obj2 = vpVar;
            }
            Object obj3 = (vp) obj2;
            long j = ag1Var.T;
            boolean zF2 = ag1Var.f(obj3) | ag1Var.e(j);
            Object objK2 = ag1Var.K();
            Object obj4 = objK2;
            if (zF2 || objK2 == obj) {
                ra0 ra0Var = new ra0(new wp(j, objA));
                ra0Var.c = new l6(7);
                ag1Var.g0(ra0Var);
                obj4 = ra0Var;
            }
            ra0 ra0Var2 = (ra0) obj4;
            ag1Var.W(-585307852);
            boolean zH = ag1Var.h(ra0Var2) | ((i6 & 112) == 32);
            Object objK3 = ag1Var.K();
            Object obj5 = objK3;
            if (zH || objK3 == obj) {
                Object h4Var = new h4(i5, ra0Var2, ne1Var, z3 ? 1 : 0);
                ag1Var.g0(h4Var);
                obj5 = h4Var;
            }
            zf5.g((ne1) obj5, ag1Var);
            Boolean boolValueOf = Boolean.valueOf(z4);
            int i8 = i6 & 14;
            boolean zH2 = ag1Var.h(ra0Var2) | (i8 == 4);
            Object objK4 = ag1Var.K();
            Object obj6 = objK4;
            if (zH2 || objK4 == obj) {
                Object xpVar = new xp(ra0Var2, z4, i7);
                ag1Var.g0(xpVar);
                obj6 = xpVar;
            }
            kt4.g(boolValueOf, ra0Var2, null, (pe1) obj6, ag1Var, i8);
            boolean zH3 = ag1Var.h(obj3) | ag1Var.h(ra0Var2);
            Object objK5 = ag1Var.K();
            Object obj7 = objK5;
            if (zH3 || objK5 == obj) {
                Object mVar = new m(3, obj3, ra0Var2);
                ag1Var.g0(mVar);
                obj7 = mVar;
            }
            zf5.b(obj3, ra0Var2, (pe1) obj7, ag1Var);
            ag1Var.p(false);
            z2 = z4;
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new yp(z2, ne1Var, i, i2);
        }
    }

    public static final fl0 C0(ka1 ka1Var, int i) {
        md2 md2VarG;
        bo boVar;
        int iOrdinal = ka1Var.L0().ordinal();
        fl0 fl0Var = fl0.n;
        if (iOrdinal != 0) {
            if (iOrdinal == 1) {
                ka1 ka1VarA = gg4.A(ka1Var);
                if (ka1VarA != null) {
                    return A0(ka1VarA, i);
                }
                k21.f("ActiveParent with no focused child");
                return null;
            }
            if (iOrdinal != 2) {
                if (iOrdinal != 3) {
                    p61.x();
                    return null;
                }
                if (!ka1Var.n.A) {
                    ar1.b("visitAncestors called on an unattached node");
                }
                md2 md2Var = ka1Var.n.r;
                xy1 xy1VarR = w80.R(ka1Var);
                loop0: while (true) {
                    if (xy1VarR == null) {
                        md2VarG = null;
                        break;
                    }
                    if ((((md2) xy1VarR.S.g).q & 1024) != 0) {
                        while (md2Var != null) {
                            if ((md2Var.p & 1024) != 0) {
                                md2VarG = md2Var;
                                ug2 ug2Var = null;
                                while (md2VarG != null) {
                                    if (md2VarG instanceof ka1) {
                                        break loop0;
                                    }
                                    if ((md2VarG.p & 1024) != 0 && (md2VarG instanceof kr0)) {
                                        int i2 = 0;
                                        for (md2 md2Var2 = ((kr0) md2VarG).C; md2Var2 != null; md2Var2 = md2Var2.s) {
                                            if ((md2Var2.p & 1024) != 0) {
                                                i2++;
                                                if (i2 == 1) {
                                                    md2VarG = md2Var2;
                                                } else {
                                                    if (ug2Var == null) {
                                                        ug2Var = new ug2(new md2[16]);
                                                    }
                                                    if (md2VarG != null) {
                                                        ug2Var.c(md2VarG);
                                                        md2VarG = null;
                                                    }
                                                    ug2Var.c(md2Var2);
                                                }
                                            }
                                        }
                                        if (i2 == 1) {
                                        }
                                    }
                                    md2VarG = w80.g(ug2Var);
                                }
                            }
                            md2Var = md2Var.r;
                        }
                    }
                    xy1VarR = xy1VarR.u();
                    md2Var = (xy1VarR == null || (boVar = xy1VarR.S) == null) ? null : (gw3) boVar.f;
                }
                ka1 ka1Var2 = (ka1) md2VarG;
                if (ka1Var2 == null) {
                    return fl0Var;
                }
                int iOrdinal2 = ka1Var2.L0().ordinal();
                if (iOrdinal2 == 0) {
                    return B0(ka1Var2, i);
                }
                if (iOrdinal2 == 1) {
                    return C0(ka1Var2, i);
                }
                if (iOrdinal2 == 2) {
                    return fl0.o;
                }
                if (iOrdinal2 != 3) {
                    p61.x();
                    return null;
                }
                fl0 fl0VarC0 = C0(ka1Var2, i);
                fl0 fl0Var2 = fl0VarC0 != fl0Var ? fl0VarC0 : null;
                return fl0Var2 == null ? B0(ka1Var2, i) : fl0Var2;
            }
        }
        return fl0Var;
    }

    public static final void D(ne1 ne1Var, vt0 vt0Var, ka0 ka0Var, ag1 ag1Var, int i) {
        ag1Var.X(826668973);
        int i2 = 2;
        int i3 = i | (ag1Var.h(ne1Var) ? 4 : 2) | (ag1Var.f(vt0Var) ? 32 : 16);
        int i4 = 0;
        if (ag1Var.N(i3 & 1, (i3 & 147) != 146)) {
            View view = (View) ag1Var.j(ea.f);
            as0 as0Var = (as0) ag1Var.j(kc0.h);
            hy1 hy1Var = (hy1) ag1Var.j(kc0.n);
            yf1 yf1VarJ = dm0.J(ag1Var);
            pg2 pg2VarE = ca.E(ka0Var, ag1Var);
            Object[] objArr = new Object[0];
            Object objK = ag1Var.K();
            Object obj = rb0.a;
            if (objK == obj) {
                objK = da.f66u;
                ag1Var.g0(objK);
            }
            UUID uuid = (UUID) I0(objArr, (ne1) objK, ag1Var, 48);
            boolean zD = ag1Var.d(vt0Var.g) | ag1Var.f(view) | ag1Var.f(as0Var) | ag1Var.f(null);
            Object objK2 = ag1Var.K();
            if (zD || objK2 == obj) {
                xt0 xt0Var = new xt0(ne1Var, vt0Var, view, hy1Var, as0Var, uuid);
                ka0 ka0Var2 = new ka0(-1338939603, true, new z(i2, pg2VarE));
                st0 st0Var = xt0Var.f413u;
                st0Var.setParentCompositionContext(yf1VarJ);
                st0Var.x.setValue(ka0Var2);
                st0Var.B = true;
                st0Var.d();
                ag1Var.g0(xt0Var);
                objK2 = xt0Var;
            }
            xt0 xt0Var2 = (xt0) objK2;
            boolean zH = ag1Var.h(xt0Var2);
            Object objK3 = ag1Var.K();
            if (zH || objK3 == obj) {
                objK3 = new ka(xt0Var2, i4);
                ag1Var.g0(objK3);
            }
            zf5.a(xt0Var2, (pe1) objK3, ag1Var);
            boolean zH2 = ag1Var.h(xt0Var2) | ((i3 & 14) == 4) | ((i3 & 112) == 32) | ag1Var.d(hy1Var.ordinal());
            Object objK4 = ag1Var.K();
            if (zH2 || objK4 == obj) {
                objK4 = new la(xt0Var2, ne1Var, vt0Var, hy1Var);
                ag1Var.g0(objK4);
            }
            zf5.g((ne1) objK4, ag1Var);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new ma(ne1Var, vt0Var, ka0Var, i, 0);
        }
    }

    public static final boolean D0(ka1 ka1Var) {
        ug2 ug2Var;
        bo boVar;
        dh dhVar;
        boolean z;
        int i;
        ug2 ug2Var2;
        int i2;
        int i3;
        bo boVar2;
        dh dhVar2 = (dh) ((q9) w80.S(ka1Var)).getFocusOwner();
        ka1 ka1VarF = dhVar2.f();
        fa1 fa1VarL0 = ka1Var.L0();
        if (ka1VarF == ka1Var) {
            ka1Var.H0(fa1VarL0, fa1VarL0);
            return true;
        }
        if ((ka1VarF == null || ka1VarF.B) && !ka1Var.B && !((q9) ((dh) ((q9) w80.S(ka1Var)).getFocusOwner()).a).G()) {
            return false;
        }
        if (ka1VarF != null) {
            ug2Var = new ug2(new ka1[16]);
            if (!ka1VarF.n.A) {
                ar1.b("visitAncestors called on an unattached node");
            }
            md2 md2Var = ka1VarF.n.r;
            xy1 xy1VarR = w80.R(ka1VarF);
            while (xy1VarR != null) {
                if ((((md2) xy1VarR.S.g).q & 1024) != 0) {
                    while (md2Var != null) {
                        if ((md2Var.p & 1024) != 0) {
                            md2 md2VarG = md2Var;
                            ug2 ug2Var3 = null;
                            while (md2VarG != null) {
                                if (md2VarG instanceof ka1) {
                                    ug2Var.c((ka1) md2VarG);
                                } else if ((md2VarG.p & 1024) != 0 && (md2VarG instanceof kr0)) {
                                    int i4 = 0;
                                    for (md2 md2Var2 = ((kr0) md2VarG).C; md2Var2 != null; md2Var2 = md2Var2.s) {
                                        if ((md2Var2.p & 1024) != 0) {
                                            i4++;
                                            if (i4 == 1) {
                                                md2VarG = md2Var2;
                                            } else {
                                                if (ug2Var3 == null) {
                                                    ug2Var3 = new ug2(new md2[16]);
                                                }
                                                if (md2VarG != null) {
                                                    ug2Var3.c(md2VarG);
                                                    md2VarG = null;
                                                }
                                                ug2Var3.c(md2Var2);
                                            }
                                        }
                                    }
                                    if (i4 == 1) {
                                    }
                                }
                                md2VarG = w80.g(ug2Var3);
                            }
                        }
                        md2Var = md2Var.r;
                    }
                }
                xy1VarR = xy1VarR.u();
                md2Var = (xy1VarR == null || (boVar2 = xy1VarR.S) == null) ? null : (gw3) boVar2.f;
            }
        } else {
            ug2Var = null;
        }
        Object[] objArr = new ka1[16];
        Object[] objArr2 = new ka1[16];
        if (!ka1Var.n.A) {
            ar1.b("visitAncestors called on an unattached node");
        }
        md2 md2Var3 = ka1Var.n.r;
        xy1 xy1VarR2 = w80.R(ka1Var);
        boolean z2 = true;
        int i5 = 0;
        int i6 = 0;
        while (xy1VarR2 != null) {
            if ((((md2) xy1VarR2.S.g).q & 1024) != 0) {
                while (md2Var3 != null) {
                    if ((md2Var3.p & 1024) != 0) {
                        md2 md2VarG2 = md2Var3;
                        ug2 ug2Var4 = null;
                        while (md2VarG2 != null) {
                            if (md2VarG2 instanceof ka1) {
                                ka1 ka1Var2 = (ka1) md2VarG2;
                                if (nt1.g(ug2Var != null ? Boolean.valueOf(ug2Var.k(ka1Var2)) : null, Boolean.TRUE)) {
                                    int i7 = i5 + 1;
                                    if (objArr.length < i7) {
                                        int length = objArr.length;
                                        dhVar = dhVar2;
                                        Object[] objArr3 = new Object[Math.max(i7, length * 2)];
                                        i3 = i7;
                                        System.arraycopy(objArr, 0, objArr3, 0, length);
                                        objArr = objArr3;
                                    } else {
                                        dhVar = dhVar2;
                                        i3 = i7;
                                    }
                                    objArr[i5] = ka1Var2;
                                    i5 = i3;
                                } else {
                                    dhVar = dhVar2;
                                    int i8 = i6 + 1;
                                    if (objArr2.length < i8) {
                                        int length2 = objArr2.length;
                                        Object[] objArr4 = new Object[Math.max(i8, length2 * 2)];
                                        i2 = i8;
                                        System.arraycopy(objArr2, 0, objArr4, 0, length2);
                                        objArr2 = objArr4;
                                    } else {
                                        i2 = i8;
                                    }
                                    objArr2[i6] = ka1Var2;
                                    i6 = i2;
                                }
                                if (ka1Var2 == ka1VarF) {
                                    z2 = false;
                                }
                                z = false;
                            } else {
                                dhVar = dhVar2;
                                z = true;
                            }
                            if (z && (md2VarG2.p & 1024) != 0 && (md2VarG2 instanceof kr0)) {
                                int i9 = 0;
                                for (md2 md2Var4 = ((kr0) md2VarG2).C; md2Var4 != null; md2Var4 = md2Var4.s) {
                                    if ((md2Var4.p & 1024) != 0) {
                                        int i10 = i9 + 1;
                                        if (i10 == 1) {
                                            md2VarG2 = md2Var4;
                                            i = i10;
                                        } else {
                                            if (ug2Var4 == null) {
                                                i = i10;
                                                ug2Var2 = new ug2(new md2[16]);
                                            } else {
                                                i = i10;
                                                ug2Var2 = ug2Var4;
                                            }
                                            if (md2VarG2 != null) {
                                                ug2Var2.c(md2VarG2);
                                                md2VarG2 = null;
                                            }
                                            ug2Var2.c(md2Var4);
                                            ug2Var4 = ug2Var2;
                                        }
                                        i9 = i;
                                    }
                                }
                                if (i9 == 1) {
                                    dhVar2 = dhVar;
                                } else {
                                    md2VarG2 = w80.g(ug2Var4);
                                    dhVar2 = dhVar;
                                }
                            } else {
                                md2VarG2 = w80.g(ug2Var4);
                                dhVar2 = dhVar;
                            }
                        }
                    }
                    md2Var3 = md2Var3.r;
                    dhVar2 = dhVar2;
                }
            }
            dh dhVar3 = dhVar2;
            xy1VarR2 = xy1VarR2.u();
            md2Var3 = (xy1VarR2 == null || (boVar = xy1VarR2.S) == null) ? null : (gw3) boVar.f;
            dhVar2 = dhVar3;
        }
        dh dhVar4 = dhVar2;
        if (z2 && ka1VarF != null && !F0(ka1VarF, false)) {
            return false;
        }
        ix.H(ka1Var, new je(4, ka1Var));
        int iOrdinal = ka1Var.L0().ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal == 1) {
                ((dh) ((q9) w80.S(ka1Var)).getFocusOwner()).k(ka1Var);
            } else if (iOrdinal != 2) {
                if (iOrdinal != 3) {
                    p61.x();
                    return false;
                }
                ((dh) ((q9) w80.S(ka1Var)).getFocusOwner()).k(ka1Var);
            }
        }
        fa1 fa1Var = fa1.p;
        fa1 fa1Var2 = fa1.n;
        if (z2 && ka1VarF != null) {
            ka1VarF.H0(fa1Var2, fa1Var);
        }
        fa1 fa1Var3 = fa1.o;
        if (ug2Var != null) {
            int i11 = ug2Var.p - 1;
            Object[] objArr5 = ug2Var.n;
            if (i11 < objArr5.length) {
                while (i11 >= 0) {
                    ka1 ka1Var3 = (ka1) objArr5[i11];
                    if (dhVar4.f() != ka1Var) {
                        return false;
                    }
                    ka1Var3.H0(fa1Var3, fa1Var);
                    i11--;
                }
            }
        }
        int i12 = i6 - 1;
        if (i12 < objArr2.length) {
            while (i12 >= 0) {
                ka1 ka1Var4 = (ka1) objArr2[i12];
                if (dhVar4.f() != ka1Var) {
                    return false;
                }
                ka1Var4.H0(ka1Var4 == ka1VarF ? fa1Var2 : fa1Var, fa1Var3);
                i12--;
            }
        }
        if (dhVar4.f() != ka1Var) {
            return false;
        }
        ka1Var.H0(fa1VarL0, fa1Var2);
        return dhVar4.f() == ka1Var;
    }

    public static vu1 E() {
        return new vu1(null);
    }

    public static final void E0(float[] fArr, float[] fArr2, int i, float[] fArr3) {
        if (i == 0) {
            ar1.a("At least one point must be provided");
        }
        int i2 = 2 >= i ? i - 1 : 2;
        int i3 = i2 + 1;
        float[][] fArr4 = new float[i3][];
        for (int i4 = 0; i4 < i3; i4++) {
            fArr4[i4] = new float[i];
        }
        for (int i5 = 0; i5 < i; i5++) {
            fArr4[0][i5] = 1.0f;
            for (int i6 = 1; i6 < i3; i6++) {
                fArr4[i6][i5] = fArr4[i6 - 1][i5] * fArr[i5];
            }
        }
        float[][] fArr5 = new float[i3][];
        for (int i7 = 0; i7 < i3; i7++) {
            fArr5[i7] = new float[i];
        }
        float[][] fArr6 = new float[i3][];
        for (int i8 = 0; i8 < i3; i8++) {
            fArr6[i8] = new float[i3];
        }
        int i9 = 0;
        while (i9 < i3) {
            float[] fArr7 = fArr5[i9];
            float[] fArr8 = fArr4[i9];
            fArr8.getClass();
            fArr7.getClass();
            System.arraycopy(fArr8, 0, fArr7, 0, i);
            for (int i10 = 0; i10 < i9; i10++) {
                float[] fArr9 = fArr5[i10];
                float fJ0 = j0(fArr7, fArr9);
                for (int i11 = 0; i11 < i; i11++) {
                    fArr7[i11] = fArr7[i11] - (fArr9[i11] * fJ0);
                }
            }
            float fSqrt = (float) Math.sqrt(j0(fArr7, fArr7));
            if (fSqrt < 1.0E-6f) {
                fSqrt = 1.0E-6f;
            }
            float f2 = 1.0f / fSqrt;
            for (int i12 = 0; i12 < i; i12++) {
                fArr7[i12] = fArr7[i12] * f2;
            }
            float[] fArr10 = fArr6[i9];
            int i13 = 0;
            while (i13 < i3) {
                fArr10[i13] = i13 < i9 ? 0.0f : j0(fArr7, fArr4[i13]);
                i13++;
            }
            i9++;
        }
        for (int i14 = i2; -1 < i14; i14--) {
            float fJ02 = j0(fArr5[i14], fArr2);
            float[] fArr11 = fArr6[i14];
            int i15 = i14 + 1;
            if (i15 <= i2) {
                int i16 = i2;
                while (true) {
                    fJ02 -= fArr11[i16] * fArr3[i16];
                    if (i16 != i15) {
                        i16--;
                    }
                }
            }
            fArr3[i14] = fJ02 / fArr11[i14];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:326:0x0694  */
    /* JADX WARN: Removed duplicated region for block: B:357:0x0778  */
    /* JADX WARN: Removed duplicated region for block: B:358:0x077d  */
    /* JADX WARN: Removed duplicated region for block: B:360:0x0780  */
    /* JADX WARN: Removed duplicated region for block: B:364:0x07a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void F(final defpackage.xi2 r42, final defpackage.si2 r43, final defpackage.nd2 r44, final defpackage.cw r45, final defpackage.pe1 r46, final defpackage.pe1 r47, final defpackage.pe1 r48, final defpackage.pe1 r49, defpackage.ag1 r50, final int r51) {
        /*
            Method dump skipped, instruction units count: 2909
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n44.F(xi2, si2, nd2, cw, pe1, pe1, pe1, pe1, ag1, int):void");
    }

    public static final boolean F0(ka1 ka1Var, boolean z) {
        int iOrdinal = ka1Var.L0().ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal == 1) {
                ka1 ka1VarA = gg4.A(ka1Var);
                if (!(ka1VarA != null ? F0(ka1VarA, z) : true)) {
                    return false;
                }
                ka1Var.H0(fa1.o, fa1.p);
                return true;
            }
            if (iOrdinal == 2) {
                return z;
            }
            if (iOrdinal != 3) {
                p61.x();
                return false;
            }
        }
        return true;
    }

    public static final void G(final xi2 xi2Var, final String str, final nd2 nd2Var, cw cwVar, pe1 pe1Var, pe1 pe1Var2, pe1 pe1Var3, pe1 pe1Var4, final pe1 pe1Var5, ag1 ag1Var, final int i) {
        cw cwVar2;
        pe1 pe1Var6;
        int i2;
        char c2;
        pe1 pe1Var7;
        pe1 pe1Var8;
        char c3;
        pe1 pe1Var9;
        final pe1 pe1Var10;
        final pe1 pe1Var11;
        final pe1 pe1Var12;
        final pe1 pe1Var13;
        final cw cwVar3;
        ag1Var.X(1840250294);
        int i3 = i | (ag1Var.h(xi2Var) ? 4 : 2) | (ag1Var.f(str) ? 32 : 16) | (ag1Var.f(nd2Var) ? 256 : 128) | 844852224;
        char c4 = ag1Var.h(pe1Var5) ? (char) 4 : (char) 2;
        if ((306783379 & i3) == 306783378 && (c4 & 3) == 2 && ag1Var.z()) {
            ag1Var.Q();
            cwVar3 = cwVar;
            pe1Var13 = pe1Var;
            pe1Var12 = pe1Var2;
            pe1Var11 = pe1Var3;
            pe1Var10 = pe1Var4;
        } else {
            ag1Var.S();
            int i4 = i & 1;
            int i5 = 14;
            bx3 bx3Var = rb0.a;
            if (i4 == 0 || ag1Var.x()) {
                cwVar2 = mj1.o;
                Object objK = ag1Var.K();
                if (objK == bx3Var) {
                    objK = new z82(12);
                    ag1Var.g0(objK);
                }
                pe1 pe1Var14 = (pe1) objK;
                Object objK2 = ag1Var.K();
                if (objK2 == bx3Var) {
                    objK2 = new z82(i5);
                    ag1Var.g0(objK2);
                }
                pe1Var6 = (pe1) objK2;
                i2 = i3 & (-264241153);
                c2 = c4;
                pe1Var7 = pe1Var14;
                pe1Var8 = pe1Var7;
                c3 = 14;
                pe1Var9 = pe1Var6;
            } else {
                ag1Var.Q();
                i2 = i3 & (-264241153);
                cwVar2 = cwVar;
                pe1Var7 = pe1Var;
                pe1Var6 = pe1Var2;
                c2 = c4;
                c3 = 14;
                pe1Var8 = pe1Var3;
                pe1Var9 = pe1Var4;
            }
            ag1Var.q();
            boolean z = ((i2 & 112) == 32) | ((c2 & c3) == 4);
            Object objK3 = ag1Var.K();
            if (z || objK3 == bx3Var) {
                ti2 ti2Var = new ti2(xi2Var.b.t, str);
                pe1Var5.k(ti2Var);
                objK3 = ti2Var.g();
                ag1Var.g0(objK3);
            }
            cw cwVar4 = cwVar2;
            pe1 pe1Var15 = pe1Var6;
            F(xi2Var, (si2) objK3, nd2Var, cwVar4, pe1Var7, pe1Var15, pe1Var8, pe1Var9, ag1Var, (i2 & 8078) | 100884480);
            pe1Var10 = pe1Var9;
            pe1Var11 = pe1Var8;
            pe1Var12 = pe1Var15;
            pe1Var13 = pe1Var7;
            cwVar3 = cwVar4;
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new df1(str, nd2Var, cwVar3, pe1Var13, pe1Var12, pe1Var11, pe1Var10, pe1Var5, i) { // from class: aj2
                public final /* synthetic */ String o;
                public final /* synthetic */ nd2 p;
                public final /* synthetic */ cw q;
                public final /* synthetic */ pe1 r;
                public final /* synthetic */ pe1 s;
                public final /* synthetic */ pe1 t;

                /* JADX INFO: renamed from: u, reason: collision with root package name */
                public final /* synthetic */ pe1 f8u;
                public final /* synthetic */ pe1 v;

                @Override // defpackage.df1
                public final Object f(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iF0 = qj0.f0(1);
                    n44.G(this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.f8u, this.v, (ag1) obj, iF0);
                    return t64.a;
                }
            };
        }
    }

    public static ef5 G0(ow3 ow3Var, ow3 ow3Var2) {
        wu4 wu4Var = new wu4(13);
        pw3 pw3Var = new pw3((gt4) wu4Var.o);
        gd0 gd0Var = new gd0(pw3Var, new AtomicBoolean(false), wu4Var, 1);
        mh mhVar = b;
        ow3Var.e(mhVar, gd0Var);
        ow3Var2.e(mhVar, gd0Var);
        return pw3Var.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:109:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00ad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void H(defpackage.nd2 r24, defpackage.df1 r25, defpackage.df1 r26, defpackage.df1 r27, defpackage.df1 r28, int r29, long r30, long r32, defpackage.hd4 r34, final defpackage.ka0 r35, defpackage.ag1 r36, final int r37, final int r38) {
        /*
            Method dump skipped, instruction units count: 479
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n44.H(nd2, df1, df1, df1, df1, int, long, long, hd4, ka0, ag1, int, int):void");
    }

    public static final int H0(int i, String str) {
        char cCharAt = str.charAt(i);
        return (cCharAt << 7) + str.charAt(i + 1);
    }

    public static final void I(final int i, final df1 df1Var, final ka0 ka0Var, final df1 df1Var2, final df1 df1Var3, final hd4 hd4Var, final df1 df1Var4, ag1 ag1Var, int i2) {
        int i3;
        ag1Var.X(-280287501);
        int i4 = i2 | (ag1Var.d(i) ? 4 : 2) | (ag1Var.h(df1Var) ? 32 : 16) | (ag1Var.h(ka0Var) ? 256 : 128) | (ag1Var.h(df1Var2) ? 2048 : 1024) | (ag1Var.h(df1Var3) ? 16384 : 8192) | (ag1Var.f(hd4Var) ? 131072 : 65536) | (ag1Var.h(df1Var4) ? 1048576 : 524288);
        if (ag1Var.N(i4 & 1, (599187 & i4) != 599186)) {
            Object objK = ag1Var.K();
            bx3 bx3Var = rb0.a;
            if (objK == bx3Var) {
                objK = new pd3();
                ag1Var.g0(objK);
            }
            final pd3 pd3Var = (pd3) objK;
            boolean z = ((i4 & 458752) == 131072) | ((i4 & 112) == 32) | ((i4 & 7168) == 2048) | ((57344 & i4) == 16384) | ((i4 & 14) == 4) | ((3670016 & i4) == 1048576) | ((i4 & 896) == 256);
            Object objK2 = ag1Var.K();
            if (z || objK2 == bx3Var) {
                i3 = 0;
                objK2 = new df1() { // from class: nd3
                    @Override // defpackage.df1
                    public final Object f(Object obj, Object obj2) {
                        Object obj3;
                        int i5;
                        Object obj4;
                        Object obj5;
                        a13 a13Var;
                        Object obj6;
                        int i6;
                        ArrayList arrayList;
                        final Integer numValueOf;
                        int iN;
                        int iA;
                        Object obj7;
                        Object obj8;
                        int i7;
                        int iN2;
                        int iN3;
                        final qt3 qt3Var = (qt3) obj;
                        mf0 mf0Var = (mf0) obj2;
                        int iH = mf0.h(mf0Var.a);
                        int iG = mf0.g(mf0Var.a);
                        long jA = mf0.a(mf0Var.a, 0, 0, 0, 0, 10);
                        hy1 layoutDirection = qt3Var.getLayoutDirection();
                        final hd4 hd4Var2 = hd4Var;
                        int iD = hd4Var2.d(qt3Var, layoutDirection);
                        int iC = hd4Var2.c(qt3Var, qt3Var.getLayoutDirection());
                        int iA2 = hd4Var2.a(qt3Var);
                        List listO = qt3Var.o(df1Var, qd3.n);
                        ArrayList arrayList2 = new ArrayList(listO.size());
                        int size = listO.size();
                        for (int i8 = 0; i8 < size; i8++) {
                            arrayList2.add(((ya2) listO.get(i8)).e(jA));
                        }
                        int i9 = 1;
                        if (arrayList2.isEmpty()) {
                            i5 = 1;
                            obj3 = null;
                        } else {
                            obj3 = arrayList2.get(0);
                            int i10 = ((dv2) obj3).o;
                            int size2 = arrayList2.size() - 1;
                            i5 = 1;
                            if (1 <= size2) {
                                while (true) {
                                    Object obj9 = arrayList2.get(i9);
                                    int i11 = ((dv2) obj9).o;
                                    if (i10 < i11) {
                                        i10 = i11;
                                        obj3 = obj9;
                                    }
                                    if (i9 == size2) {
                                        break;
                                    }
                                    i9++;
                                }
                            }
                        }
                        dv2 dv2Var = (dv2) obj3;
                        int i12 = dv2Var != null ? dv2Var.o : 0;
                        List listO2 = qt3Var.o(df1Var2, qd3.p);
                        ArrayList arrayList3 = new ArrayList(listO2.size());
                        int size3 = listO2.size();
                        int i13 = 0;
                        while (i13 < size3) {
                            int i14 = iC;
                            arrayList3.add(((ya2) listO2.get(i13)).e(nf0.h((-iD) - i14, -iA2, jA)));
                            i13++;
                            iH = iH;
                            iC = i14;
                            iG = iG;
                            arrayList2 = arrayList2;
                        }
                        int i15 = iC;
                        final int i16 = iH;
                        final int i17 = iG;
                        final ArrayList arrayList4 = arrayList2;
                        if (arrayList3.isEmpty()) {
                            obj4 = null;
                        } else {
                            obj4 = arrayList3.get(0);
                            int i18 = ((dv2) obj4).o;
                            int size4 = arrayList3.size() - 1;
                            if (i5 <= size4) {
                                Object obj10 = obj4;
                                int i19 = i18;
                                int i20 = 1;
                                while (true) {
                                    Object obj11 = arrayList3.get(i20);
                                    int i21 = ((dv2) obj11).o;
                                    if (i19 < i21) {
                                        obj10 = obj11;
                                        i19 = i21;
                                    }
                                    if (i20 == size4) {
                                        break;
                                    }
                                    i20++;
                                }
                                obj4 = obj10;
                            }
                        }
                        dv2 dv2Var2 = (dv2) obj4;
                        int i22 = dv2Var2 != null ? dv2Var2.o : 0;
                        if (arrayList3.isEmpty()) {
                            obj5 = null;
                        } else {
                            obj5 = arrayList3.get(0);
                            int i23 = ((dv2) obj5).n;
                            int size5 = arrayList3.size() - 1;
                            if (1 <= size5) {
                                Object obj12 = obj5;
                                int i24 = i23;
                                int i25 = 1;
                                while (true) {
                                    Object obj13 = arrayList3.get(i25);
                                    int i26 = ((dv2) obj13).n;
                                    if (i24 < i26) {
                                        obj12 = obj13;
                                        i24 = i26;
                                    }
                                    if (i25 == size5) {
                                        break;
                                    }
                                    i25++;
                                }
                                obj5 = obj12;
                            }
                        }
                        dv2 dv2Var3 = (dv2) obj5;
                        int i27 = dv2Var3 != null ? dv2Var3.n : 0;
                        List listO3 = qt3Var.o(df1Var3, qd3.q);
                        ArrayList arrayList5 = arrayList3;
                        final ArrayList arrayList6 = new ArrayList(listO3.size());
                        int size6 = listO3.size();
                        int i28 = 0;
                        while (i28 < size6) {
                            int i29 = i22;
                            int i30 = iD;
                            dv2 dv2VarE = ((ya2) listO3.get(i28)).e(nf0.h((-iD) - i15, -iA2, jA));
                            if (dv2VarE.o == 0 || dv2VarE.n == 0) {
                                dv2VarE = null;
                            }
                            if (dv2VarE != null) {
                                arrayList6.add(dv2VarE);
                            }
                            i28++;
                            i22 = i29;
                            iD = i30;
                        }
                        int i31 = iD;
                        int i32 = i22;
                        boolean zIsEmpty = arrayList6.isEmpty();
                        hy1 hy1Var = hy1.n;
                        int i33 = i;
                        if (zIsEmpty) {
                            a13Var = null;
                        } else {
                            if (arrayList6.isEmpty()) {
                                obj7 = null;
                            } else {
                                obj7 = arrayList6.get(0);
                                int i34 = ((dv2) obj7).n;
                                int size7 = arrayList6.size() - 1;
                                if (1 <= size7) {
                                    int i35 = i34;
                                    int i36 = 1;
                                    while (true) {
                                        Object obj14 = arrayList6.get(i36);
                                        int i37 = ((dv2) obj14).n;
                                        if (i35 < i37) {
                                            i35 = i37;
                                            obj7 = obj14;
                                        }
                                        if (i36 == size7) {
                                            break;
                                        }
                                        i36++;
                                    }
                                }
                            }
                            obj7.getClass();
                            int i38 = ((dv2) obj7).n;
                            if (arrayList6.isEmpty()) {
                                i7 = i38;
                                obj8 = null;
                            } else {
                                obj8 = arrayList6.get(0);
                                int i39 = ((dv2) obj8).o;
                                int size8 = arrayList6.size() - 1;
                                if (1 <= size8) {
                                    Object obj15 = obj8;
                                    int i40 = i39;
                                    int i41 = 1;
                                    while (true) {
                                        Object obj16 = arrayList6.get(i41);
                                        i7 = i38;
                                        int i42 = ((dv2) obj16).o;
                                        if (i40 < i42) {
                                            i40 = i42;
                                            obj15 = obj16;
                                        }
                                        if (i41 == size8) {
                                            break;
                                        }
                                        i41++;
                                        i38 = i7;
                                    }
                                    obj8 = obj15;
                                } else {
                                    i7 = i38;
                                }
                            }
                            obj8.getClass();
                            int i43 = ((dv2) obj8).o;
                            if (i33 != 0) {
                                if (i33 != 2 && i33 != 3) {
                                    iN3 = (((i16 - i7) + i31) - i15) / 2;
                                } else if (qt3Var.getLayoutDirection() == hy1Var) {
                                    iN3 = ((i16 - qt3Var.N(16.0f)) - i7) - i15;
                                } else {
                                    iN2 = qt3Var.N(16.0f);
                                    iN3 = iN2 + i31;
                                }
                                a13Var = new a13(iN3, i43, 1);
                            } else if (qt3Var.getLayoutDirection() == hy1Var) {
                                iN2 = qt3Var.N(16.0f);
                                iN3 = iN2 + i31;
                                a13Var = new a13(iN3, i43, 1);
                            } else {
                                iN3 = ((i16 - qt3Var.N(16.0f)) - i7) - i15;
                                a13Var = new a13(iN3, i43, 1);
                            }
                        }
                        List listO4 = qt3Var.o(df1Var4, qd3.r);
                        final ArrayList arrayList7 = new ArrayList(listO4.size());
                        int size9 = listO4.size();
                        int i44 = 0;
                        while (i44 < size9) {
                            arrayList7.add(((ya2) listO4.get(i44)).e(jA));
                            i44++;
                            listO4 = listO4;
                        }
                        if (arrayList7.isEmpty()) {
                            i6 = i27;
                            arrayList = arrayList5;
                            obj6 = null;
                        } else {
                            obj6 = arrayList7.get(0);
                            int i45 = ((dv2) obj6).o;
                            i6 = i27;
                            int size10 = arrayList7.size() - 1;
                            if (1 <= size10) {
                                int i46 = 1;
                                while (true) {
                                    Object obj17 = arrayList7.get(i46);
                                    arrayList = arrayList5;
                                    int i47 = ((dv2) obj17).o;
                                    if (i45 < i47) {
                                        i45 = i47;
                                        obj6 = obj17;
                                    }
                                    if (i46 == size10) {
                                        break;
                                    }
                                    i46++;
                                    arrayList5 = arrayList;
                                }
                            } else {
                                arrayList = arrayList5;
                            }
                        }
                        dv2 dv2Var4 = (dv2) obj6;
                        Integer numValueOf2 = dv2Var4 != null ? Integer.valueOf(dv2Var4.o) : null;
                        if (a13Var != null) {
                            int i48 = a13Var.c;
                            if (numValueOf2 == null || i33 == 3) {
                                iN = qt3Var.N(16.0f) + i48;
                                iA = hd4Var2.a(qt3Var);
                            } else {
                                iN = numValueOf2.intValue() + i48;
                                iA = qt3Var.N(16.0f);
                            }
                            numValueOf = Integer.valueOf(iA + iN);
                        } else {
                            numValueOf = null;
                        }
                        final int iIntValue = i32 != 0 ? i32 + (numValueOf != null ? numValueOf.intValue() : numValueOf2 != null ? numValueOf2.intValue() : hd4Var2.a(qt3Var)) : 0;
                        float fP0 = arrayList4.isEmpty() ? qt3Var.p0(hd4Var2.b(qt3Var)) : qt3Var.p0(i12);
                        float fP02 = numValueOf2 != null ? qt3Var.p0(numValueOf2.intValue()) : qt3Var.p0(hd4Var2.a(qt3Var));
                        hy1 layoutDirection2 = qt3Var.getLayoutDirection();
                        float fP03 = layoutDirection2 == hy1Var ? qt3Var.p0(hd4Var2.d(qt3Var, layoutDirection2)) : qt3Var.p0(hd4Var2.c(qt3Var, layoutDirection2));
                        hy1 layoutDirection3 = qt3Var.getLayoutDirection();
                        ds2 ds2Var = new ds2(fP03, fP0, layoutDirection3 == hy1Var ? qt3Var.p0(hd4Var2.c(qt3Var, layoutDirection3)) : qt3Var.p0(hd4Var2.d(qt3Var, layoutDirection3)), fP02);
                        pd3 pd3Var2 = pd3Var;
                        pd3Var2.a.setValue(ds2Var);
                        List listO5 = qt3Var.o(new ka0(-278021671, true, new l4(16, ka0Var, pd3Var2)), qd3.o);
                        final ArrayList arrayList8 = new ArrayList(listO5.size());
                        int size11 = listO5.size();
                        for (int i49 = 0; i49 < size11; i49++) {
                            arrayList8.add(((ya2) listO5.get(i49)).e(jA));
                        }
                        final a13 a13Var2 = a13Var;
                        final int i50 = i6;
                        final Integer num = numValueOf2;
                        final ArrayList arrayList9 = arrayList;
                        return qt3Var.e0(i16, i17, h01.n, new pe1() { // from class: od3
                            @Override // defpackage.pe1
                            public final Object k(Object obj18) {
                                int i51;
                                cv2 cv2Var = (cv2) obj18;
                                ArrayList arrayList10 = arrayList8;
                                int size12 = arrayList10.size();
                                for (int i52 = 0; i52 < size12; i52++) {
                                    cv2.h(cv2Var, (dv2) arrayList10.get(i52), 0, 0);
                                }
                                ArrayList arrayList11 = arrayList4;
                                int size13 = arrayList11.size();
                                for (int i53 = 0; i53 < size13; i53++) {
                                    cv2.h(cv2Var, (dv2) arrayList11.get(i53), 0, 0);
                                }
                                ArrayList arrayList12 = arrayList9;
                                int size14 = arrayList12.size();
                                int i54 = 0;
                                while (true) {
                                    i51 = i17;
                                    if (i54 >= size14) {
                                        break;
                                    }
                                    dv2 dv2Var5 = (dv2) arrayList12.get(i54);
                                    int i55 = i16 - i50;
                                    qt3 qt3Var2 = qt3Var;
                                    hy1 layoutDirection4 = qt3Var2.getLayoutDirection();
                                    hd4 hd4Var3 = hd4Var2;
                                    cv2.h(cv2Var, dv2Var5, ((hd4Var3.d(qt3Var2, layoutDirection4) + i55) - hd4Var3.c(qt3Var2, qt3Var2.getLayoutDirection())) / 2, i51 - iIntValue);
                                    i54++;
                                }
                                ArrayList arrayList13 = arrayList7;
                                int size15 = arrayList13.size();
                                for (int i56 = 0; i56 < size15; i56++) {
                                    dv2 dv2Var6 = (dv2) arrayList13.get(i56);
                                    Integer num2 = num;
                                    cv2.h(cv2Var, dv2Var6, 0, i51 - (num2 != null ? num2.intValue() : 0));
                                }
                                a13 a13Var3 = a13Var2;
                                if (a13Var3 != null) {
                                    ArrayList arrayList14 = arrayList6;
                                    int size16 = arrayList14.size();
                                    for (int i57 = 0; i57 < size16; i57++) {
                                        dv2 dv2Var7 = (dv2) arrayList14.get(i57);
                                        int i58 = a13Var3.b;
                                        Integer num3 = numValueOf;
                                        num3.getClass();
                                        cv2.h(cv2Var, dv2Var7, i58, i51 - num3.intValue());
                                    }
                                }
                                return t64.a;
                            }
                        });
                    }
                };
                ag1Var.g0(objK2);
            } else {
                i3 = 0;
            }
            mt3.a(null, (df1) objK2, ag1Var, i3);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new ld3(i, df1Var, ka0Var, df1Var2, df1Var3, hd4Var, df1Var4, i2);
        }
    }

    public static final Object I0(Object[] objArr, ne1 ne1Var, ag1 ag1Var, int i) {
        return K0(Arrays.copyOf(objArr, objArr.length), cd3.a, ne1Var, ag1Var, ((i << 6) & 7168) | 384, 0);
    }

    public static final void J(nd2 nd2Var, df1 df1Var, ag1 ag1Var, int i) {
        int i2;
        ag1Var.X(1090521195);
        if ((i & 6) == 0) {
            i2 = (ag1Var.f(nd2Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= ag1Var.h(df1Var) ? 32 : 16;
        }
        if (ag1Var.N(i2 & 1, (i2 & 19) != 18)) {
            Object objK = ag1Var.K();
            if (objK == rb0.a) {
                objK = oa.b;
                ag1Var.g0(objK);
            }
            db2 db2Var = (db2) objK;
            int iHashCode = Long.hashCode(ag1Var.T);
            hu2 hu2VarL = ag1Var.l();
            nd2 nd2VarH = is0.H(ag1Var, nd2Var);
            lb0.c.getClass();
            ic0 ic0Var = kb0.b;
            int i3 = (((((i2 << 3) & 112) | (((i2 >> 3) & 14) | 384)) << 6) & 896) | 6;
            ag1Var.Z();
            if (ag1Var.S) {
                ag1Var.k(ic0Var);
            } else {
                ag1Var.j0();
            }
            ht4.D(kb0.f, ag1Var, db2Var);
            ht4.D(kb0.e, ag1Var, hu2VarL);
            ht4.D(kb0.g, ag1Var, Integer.valueOf(iHashCode));
            ht4.y(ag1Var, kb0.h);
            ht4.D(kb0.d, ag1Var, nd2VarH);
            df1Var.f(ag1Var, Integer.valueOf((i3 >> 6) & 14));
            ag1Var.p(true);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new pa(nd2Var, df1Var, i);
        }
    }

    public static final Object J0(Object[] objArr, bd3 bd3Var, ne1 ne1Var, ag1 ag1Var, int i) {
        return K0(Arrays.copyOf(objArr, objArr.length), bd3Var, ne1Var, ag1Var, 384 | ((i << 3) & 7168), 0);
    }

    public static final void K(mq3 mq3Var) {
        int i = mq3Var.q;
        int[] iArr = mq3Var.o;
        Object[] objArr = mq3Var.p;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != d) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        mq3Var.n = false;
        mq3Var.q = i2;
    }

    public static final Object K0(Object[] objArr, bd3 bd3Var, ne1 ne1Var, ag1 ag1Var, int i, int i2) {
        Object[] objArr2;
        bd3 bd3Var2;
        final Object obj;
        Object objD;
        long j = ag1Var.T;
        qj0.z(36);
        final String string = Long.toString(j, 36);
        string.getClass();
        bd3Var.getClass();
        final ic3 ic3Var = (ic3) ag1Var.j(kc3.a);
        Object objK = ag1Var.K();
        Object obj2 = rb0.a;
        if (objK == obj2) {
            Object objB = (ic3Var == null || (objD = ic3Var.d(string)) == null) ? null : bd3Var.b(objD);
            if (objB == null) {
                objB = ne1Var.a();
            }
            objArr2 = objArr;
            bd3Var2 = bd3Var;
            Object ec3Var = new ec3(bd3Var2, ic3Var, string, objB, objArr2);
            ag1Var.g0(ec3Var);
            objK = ec3Var;
        } else {
            objArr2 = objArr;
            bd3Var2 = bd3Var;
        }
        final ec3 ec3Var2 = (ec3) objK;
        Object objA = Arrays.equals(objArr2, ec3Var2.r) ? ec3Var2.q : null;
        if (objA == null) {
            objA = ne1Var.a();
        }
        boolean zH = ag1Var.h(ec3Var2) | ((((i & 112) ^ 48) > 32 && ag1Var.h(bd3Var2)) || (i & 48) == 32) | ag1Var.h(ic3Var) | ag1Var.f(string) | ag1Var.h(objA) | ag1Var.h(objArr2);
        Object objK2 = ag1Var.K();
        if (zH || objK2 == obj2) {
            final Object[] objArr3 = objArr2;
            obj = objA;
            final bd3 bd3Var3 = bd3Var2;
            Object obj3 = new ne1() { // from class: n53
                @Override // defpackage.ne1
                public final Object a() throws Exception {
                    boolean z;
                    ec3 ec3Var3 = ec3Var2;
                    ic3 ic3Var2 = ec3Var3.o;
                    ic3 ic3Var3 = ic3Var;
                    boolean z2 = true;
                    if (ic3Var2 != ic3Var3) {
                        ec3Var3.o = ic3Var3;
                        z = true;
                    } else {
                        z = false;
                    }
                    String str = ec3Var3.p;
                    String str2 = string;
                    if (nt1.g(str, str2)) {
                        z2 = z;
                    } else {
                        ec3Var3.p = str2;
                    }
                    ec3Var3.n = bd3Var3;
                    ec3Var3.q = obj;
                    ec3Var3.r = objArr3;
                    hc3 hc3Var = ec3Var3.s;
                    if (hc3Var != null && z2) {
                        ((eh) hc3Var).L();
                        ec3Var3.s = null;
                        ec3Var3.b();
                    }
                    return t64.a;
                }
            };
            ag1Var.g0(obj3);
            objK2 = obj3;
        } else {
            obj = objA;
        }
        zf5.g((ne1) objK2, ag1Var);
        return obj;
    }

    public static final void L(ra3 ra3Var, zv2 zv2Var) {
        t82 t82Var = (t82) ra3Var.o;
        t82Var.getClass();
        ta4 ta4Var = (ta4) t82Var.c;
        ta4 ta4Var2 = (ta4) t82Var.b;
        boolean zD = se0.d(zv2Var);
        long j = zv2Var.b;
        if (zD) {
            jm0[] jm0VarArr = ta4Var2.d;
            ji.U(0, jm0VarArr.length, null, jm0VarArr);
            ta4Var2.e = 0;
            jm0[] jm0VarArr2 = ta4Var.d;
            ji.U(0, jm0VarArr2.length, null, jm0VarArr2);
            ta4Var.e = 0;
            t82Var.a = 0L;
        }
        if (!se0.f(zv2Var)) {
            List listB = zv2Var.b();
            int size = listB.size();
            for (int i = 0; i < size; i++) {
                vj1 vj1Var = (vj1) listB.get(i);
                t82Var.a(vj1Var.a, go2.e(vj1Var.e, 0L));
            }
            t82Var.a(j, go2.e(zv2Var.n, 0L));
        }
        if (se0.f(zv2Var) && j - t82Var.a > 40) {
            jm0[] jm0VarArr3 = ta4Var2.d;
            ji.U(0, jm0VarArr3.length, null, jm0VarArr3);
            ta4Var2.e = 0;
            jm0[] jm0VarArr4 = ta4Var.d;
            ji.U(0, jm0VarArr4.length, null, jm0VarArr4);
            ta4Var.e = 0;
            t82Var.a = 0L;
        }
        t82Var.a = j;
    }

    public static void L0(Object obj, String str) {
        ClassCastException classCastException = new ClassCastException((obj == null ? "null" : obj.getClass().getName()) + " cannot be cast to " + str);
        nt1.R(classCastException, n44.class.getName());
        throw classCastException;
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x00c4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0201  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:74:0x0174 -> B:18:0x005b). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object M(defpackage.h12 r27, int r28, int r29, defpackage.as0 r30, defpackage.fh0 r31) {
        /*
            Method dump skipped, instruction units count: 525
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n44.M(h12, int, int, as0, fh0):java.lang.Object");
    }

    public static final n54 M0(String str) {
        int i;
        qj0.z(10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i2 = 0;
        char cCharAt = str.charAt(0);
        if (nt1.l(cCharAt, 48) < 0) {
            i = 1;
            if (length == 1 || cCharAt != '+') {
                return null;
            }
        } else {
            i = 0;
        }
        int i3 = 119304647;
        while (i < length) {
            int iDigit = Character.digit((int) str.charAt(i), 10);
            if (iDigit < 0) {
                return null;
            }
            int i4 = i2 ^ Integer.MIN_VALUE;
            if (Integer.compare(i4, i3 ^ Integer.MIN_VALUE) > 0) {
                if (i3 != 119304647 || Integer.compare(i4, -1717986919) > 0) {
                    return null;
                }
                i3 = 429496729;
            }
            int i5 = i2 * 10;
            int i6 = iDigit + i5;
            if (Integer.compare(i6 ^ Integer.MIN_VALUE, i5 ^ Integer.MIN_VALUE) < 0) {
                return null;
            }
            i++;
            i2 = i6;
        }
        return new n54(i2);
    }

    public static final boolean N(boolean z, h12 h12Var, int i) {
        n12 n12Var = (n12) h12Var.c;
        if (z) {
            if (n12Var.d() > i) {
                return true;
            }
            return n12Var.d() == i && n12Var.g() > 0;
        }
        if (n12Var.d() < i) {
            return true;
        }
        return n12Var.d() == i && n12Var.g() < 0;
    }

    public static final s54 N0(String str) {
        str.getClass();
        int i = 10;
        qj0.z(10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i2 = 0;
        char cCharAt = str.charAt(0);
        if (nt1.l(cCharAt, 48) < 0) {
            i2 = 1;
            if (length == 1 || cCharAt != '+') {
                return null;
            }
        }
        long j = 0;
        long j2 = 512409557603043100L;
        while (i2 < length) {
            int iDigit = Character.digit((int) str.charAt(i2), i);
            if (iDigit < 0) {
                return null;
            }
            long j3 = j ^ Long.MIN_VALUE;
            int i3 = length;
            if (Long.compare(j3, j2 ^ Long.MIN_VALUE) > 0) {
                if (j2 != 512409557603043100L || Long.compare(j3, -7378697629483820647L) > 0) {
                    return null;
                }
                j2 = 1844674407370955161L;
            }
            long j4 = j * 10;
            long j5 = (((long) iDigit) & 4294967295L) + j4;
            if (Long.compare(j5 ^ Long.MIN_VALUE, j4 ^ Long.MIN_VALUE) < 0) {
                return null;
            }
            i2++;
            j = j5;
            length = i3;
            i = 10;
        }
        return new s54(j);
    }

    public static Collection O(ArrayList arrayList) {
        if (!(arrayList instanceof fx1) || (arrayList instanceof gx1)) {
            return arrayList;
        }
        L0(arrayList, "kotlin.collections.MutableCollection");
        throw null;
    }

    public static void O0(View view, float[] fArr, float[] fArr2, int[] iArr) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            O0((View) parent, fArr, fArr2, iArr);
            ca.d(fArr, -view.getScrollX(), -view.getScrollY(), fArr2);
            ca.d(fArr, view.getLeft(), view.getTop(), fArr2);
        } else {
            view.getLocationInWindow(iArr);
            ca.d(fArr, -view.getScrollX(), -view.getScrollY(), fArr2);
            ca.d(fArr, iArr[0], iArr[1], fArr2);
        }
        Matrix matrix = view.getMatrix();
        if (matrix.isIdentity()) {
            return;
        }
        fl4.w(matrix, fArr2);
        ca.D(fArr, fArr2);
    }

    public static Map P(Object obj) {
        if ((obj instanceof fx1) && !(obj instanceof hx1)) {
            L0(obj, "kotlin.collections.MutableMap");
            throw null;
        }
        try {
            return (Map) obj;
        } catch (ClassCastException e2) {
            nt1.R(e2, n44.class.getName());
            throw e2;
        }
    }

    public static String Q(int i, String str, int i2) {
        if (i < 0) {
            return ht4.w("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return ht4.w("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        k21.f(di0.q(i2, "negative size: "));
        return null;
    }

    public static void R(int i, Object obj) {
        if (obj == null || u0(i, obj)) {
            return;
        }
        L0(obj, "kotlin.jvm.functions.Function" + i);
        throw null;
    }

    public static final void S(hi0 hi0Var, CancellationException cancellationException) {
        tu1 tu1Var = (tu1) hi0Var.K(mj1.W);
        if (tu1Var != null) {
            tu1Var.j(cancellationException);
        }
    }

    public static void T(String str, Object obj, boolean z) {
        if (z) {
            return;
        }
        k21.f(ht4.w(str, obj));
    }

    public static void U(boolean z) {
        if (z) {
            return;
        }
        q73.d();
    }

    public static void V(int i, int i2) {
        String strW;
        if (i < 0 || i >= i2) {
            if (i < 0) {
                strW = ht4.w("%s (%s) must not be negative", "index", Integer.valueOf(i));
            } else {
                if (i2 < 0) {
                    k21.f(di0.q(i2, "negative size: "));
                    return;
                }
                strW = ht4.w("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
            }
            throw new IndexOutOfBoundsException(strW);
        }
    }

    public static void W(ListenableFuture listenableFuture, String str, Object obj) {
        if (listenableFuture != null) {
            return;
        }
        q73.r(ht4.w(str, obj));
    }

    public static void X(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException(String.valueOf(obj2));
        }
    }

    public static void Y(int i, int i2) {
        if (i < 0 || i > i2) {
            mk0.h(Q(i, "index", i2));
        }
    }

    public static void Z(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? Q(i, "start index", i3) : (i2 < 0 || i2 > i3) ? Q(i2, "end index", i3) : ht4.w("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    public static void a0(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    public static void b0(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static final nd2 c0(nd2 nd2Var, jl3 jl3Var) {
        return r0(nd2Var, 0.0f, 0.0f, 0.0f, 0.0f, jl3Var, true, 1042431);
    }

    public static final nd2 d0(nd2 nd2Var) {
        return r0(nd2Var, 0.0f, 0.0f, 0.0f, 0.0f, null, true, 1044479);
    }

    public static final int e0(long j, long j2) {
        boolean zW0 = w0(j);
        if (zW0 != w0(j2)) {
            return zW0 ? -1 : 1;
        }
        return (Math.min(n0(j), n0(j2)) >= 0.0f && v0(j) != v0(j2)) ? v0(j) ? -1 : 1 : (int) Math.signum(n0(j) - n0(j2));
    }

    public static void f0(xl1 xl1Var) throws IOException {
        InputStream content;
        if (xl1Var == null || !xl1Var.isStreaming() || (content = xl1Var.getContent()) == null) {
            return;
        }
        content.close();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Object g0(fc0 fc0Var, h03 h03Var) {
        if (!((md2) fc0Var).n.A) {
            ar1.b("Cannot read CompositionLocal because the Modifier node is not currently attached.");
        }
        hu2 hu2Var = (hu2) w80.R(fc0Var).O;
        hu2Var.getClass();
        return bi4.F(hu2Var, h03Var);
    }

    public static void i0(ArrayList arrayList) {
        HashMap map = new HashMap(arrayList.size());
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            i90 i90Var = (i90) obj;
            hl0 hl0Var = new hl0(i90Var);
            for (z03 z03Var : i90Var.b) {
                boolean z = i90Var.e == 0;
                il0 il0Var = new il0(z03Var, !z);
                if (!map.containsKey(il0Var)) {
                    map.put(il0Var, new HashSet());
                }
                Set set = (Set) map.get(il0Var);
                if (!set.isEmpty() && z) {
                    throw new IllegalArgumentException("Multiple components provide " + z03Var + ".");
                }
                set.add(hl0Var);
            }
        }
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            for (hl0 hl0Var2 : (Set) it.next()) {
                for (fs0 fs0Var : hl0Var2.a.c) {
                    if (fs0Var.c == 0) {
                        Set<hl0> set2 = (Set) map.get(new il0(fs0Var.a, fs0Var.b == 2));
                        if (set2 != null) {
                            for (hl0 hl0Var3 : set2) {
                                hl0Var2.b.add(hl0Var3);
                                hl0Var3.c.add(hl0Var2);
                            }
                        }
                    }
                }
            }
        }
        HashSet<hl0> hashSet = new HashSet();
        Iterator it2 = map.values().iterator();
        while (it2.hasNext()) {
            hashSet.addAll((Set) it2.next());
        }
        HashSet hashSet2 = new HashSet();
        for (hl0 hl0Var4 : hashSet) {
            if (hl0Var4.c.isEmpty()) {
                hashSet2.add(hl0Var4);
            }
        }
        while (!hashSet2.isEmpty()) {
            hl0 hl0Var5 = (hl0) hashSet2.iterator().next();
            hashSet2.remove(hl0Var5);
            i++;
            for (hl0 hl0Var6 : hl0Var5.b) {
                hl0Var6.c.remove(hl0Var5);
                if (hl0Var6.c.isEmpty()) {
                    hashSet2.add(hl0Var6);
                }
            }
        }
        if (i == arrayList.size()) {
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        for (hl0 hl0Var7 : hashSet) {
            if (!hl0Var7.c.isEmpty() && !hl0Var7.b.isEmpty()) {
                arrayList2.add(hl0Var7.a);
            }
        }
        throw new hs0("Dependency cycle detected: " + Arrays.toString(arrayList2.toArray()), 2);
    }

    public static final float j0(float[] fArr, float[] fArr2) {
        int length = fArr.length;
        float f2 = 0.0f;
        for (int i = 0; i < length; i++) {
            f2 += fArr[i] * fArr2[i];
        }
        return f2;
    }

    public static final void k0(hi0 hi0Var) {
        tu1 tu1Var = (tu1) hi0Var.K(mj1.W);
        if (tu1Var != null && !tu1Var.b()) {
            throw tu1Var.N();
        }
    }

    public static final float l0(float f2) {
        float fIntBitsToFloat = Float.intBitsToFloat(((int) ((((long) Float.floatToRawIntBits(f2)) & 8589934591L) / 3)) + 709952852);
        float f3 = fIntBitsToFloat - ((fIntBitsToFloat - (f2 / (fIntBitsToFloat * fIntBitsToFloat))) * 0.33333334f);
        return f3 - ((f3 - (f2 / (f3 * f3))) * 0.33333334f);
    }

    public static final String m0(Object obj) {
        return obj + " cannot be saved using the current SaveableStateRegistry. The default implementation only supports types which can be stored inside the Bundle. Please consider implementing a custom Saver for this class and pass it to rememberSaveable().";
    }

    public static final float n0(long j) {
        return Float.intBitsToFloat((int) (j >> 32));
    }

    public static final tu1 o0(hi0 hi0Var) {
        tu1 tu1Var = (tu1) hi0Var.K(mj1.W);
        if (tu1Var != null) {
            return tu1Var;
        }
        mk0.k(hi0Var, "Current context doesn't contain Job in it: ");
        return null;
    }

    public static final so1 p0() {
        so1 so1Var = e;
        if (so1Var != null) {
            return so1Var;
        }
        ro1 ro1Var = new ro1("Outlined.Settings", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
        int i = ea4.a;
        sp3 sp3Var = new sp3(t70.b);
        ct2 ct2Var = new ct2();
        ct2Var.h(19.43f, 12.98f);
        ct2Var.c(0.04f, -0.32f, 0.07f, -0.64f, 0.07f, -0.98f);
        ct2Var.c(0.0f, -0.34f, -0.03f, -0.66f, -0.07f, -0.98f);
        ct2Var.g(2.11f, -1.65f);
        ct2Var.c(0.19f, -0.15f, 0.24f, -0.42f, 0.12f, -0.64f);
        ct2Var.g(-2.0f, -3.46f);
        ct2Var.c(-0.09f, -0.16f, -0.26f, -0.25f, -0.44f, -0.25f);
        ct2Var.c(-0.06f, 0.0f, -0.12f, 0.01f, -0.17f, 0.03f);
        ct2Var.g(-2.49f, 1.0f);
        ct2Var.c(-0.52f, -0.4f, -1.08f, -0.73f, -1.69f, -0.98f);
        ct2Var.g(-0.38f, -2.65f);
        ct2Var.b(14.46f, 2.18f, 14.25f, 2.0f, 14.0f, 2.0f);
        ct2Var.e(-4.0f);
        ct2Var.c(-0.25f, 0.0f, -0.46f, 0.18f, -0.49f, 0.42f);
        ct2Var.g(-0.38f, 2.65f);
        ct2Var.c(-0.61f, 0.25f, -1.17f, 0.59f, -1.69f, 0.98f);
        ct2Var.g(-2.49f, -1.0f);
        ct2Var.c(-0.06f, -0.02f, -0.12f, -0.03f, -0.18f, -0.03f);
        ct2Var.c(-0.17f, 0.0f, -0.34f, 0.09f, -0.43f, 0.25f);
        ct2Var.g(-2.0f, 3.46f);
        ct2Var.c(-0.13f, 0.22f, -0.07f, 0.49f, 0.12f, 0.64f);
        ct2Var.g(2.11f, 1.65f);
        ct2Var.c(-0.04f, 0.32f, -0.07f, 0.65f, -0.07f, 0.98f);
        ct2Var.c(0.0f, 0.33f, 0.03f, 0.66f, 0.07f, 0.98f);
        ct2Var.g(-2.11f, 1.65f);
        ct2Var.c(-0.19f, 0.15f, -0.24f, 0.42f, -0.12f, 0.64f);
        ct2Var.g(2.0f, 3.46f);
        ct2Var.c(0.09f, 0.16f, 0.26f, 0.25f, 0.44f, 0.25f);
        ct2Var.c(0.06f, 0.0f, 0.12f, -0.01f, 0.17f, -0.03f);
        ct2Var.g(2.49f, -1.0f);
        ct2Var.c(0.52f, 0.4f, 1.08f, 0.73f, 1.69f, 0.98f);
        ct2Var.g(0.38f, 2.65f);
        ct2Var.c(0.03f, 0.24f, 0.24f, 0.42f, 0.49f, 0.42f);
        ct2Var.e(4.0f);
        ct2Var.c(0.25f, 0.0f, 0.46f, -0.18f, 0.49f, -0.42f);
        ct2Var.g(0.38f, -2.65f);
        ct2Var.c(0.61f, -0.25f, 1.17f, -0.59f, 1.69f, -0.98f);
        ct2Var.g(2.49f, 1.0f);
        ct2Var.c(0.06f, 0.02f, 0.12f, 0.03f, 0.18f, 0.03f);
        ct2Var.c(0.17f, 0.0f, 0.34f, -0.09f, 0.43f, -0.25f);
        ct2Var.g(2.0f, -3.46f);
        ct2Var.c(0.12f, -0.22f, 0.07f, -0.49f, -0.12f, -0.64f);
        ct2Var.g(-2.11f, -1.65f);
        ct2Var.a();
        ct2Var.h(17.45f, 11.27f);
        ct2Var.c(0.04f, 0.31f, 0.05f, 0.52f, 0.05f, 0.73f);
        ct2Var.c(0.0f, 0.21f, -0.02f, 0.43f, -0.05f, 0.73f);
        ct2Var.g(-0.14f, 1.13f);
        ct2Var.g(0.89f, 0.7f);
        ct2Var.g(1.08f, 0.84f);
        ct2Var.g(-0.7f, 1.21f);
        ct2Var.g(-1.27f, -0.51f);
        ct2Var.g(-1.04f, -0.42f);
        ct2Var.g(-0.9f, 0.68f);
        ct2Var.c(-0.43f, 0.32f, -0.84f, 0.56f, -1.25f, 0.73f);
        ct2Var.g(-1.06f, 0.43f);
        ct2Var.g(-0.16f, 1.13f);
        ct2Var.g(-0.2f, 1.35f);
        ct2Var.e(-1.4f);
        ct2Var.g(-0.19f, -1.35f);
        ct2Var.g(-0.16f, -1.13f);
        ct2Var.g(-1.06f, -0.43f);
        ct2Var.c(-0.43f, -0.18f, -0.83f, -0.41f, -1.23f, -0.71f);
        ct2Var.g(-0.91f, -0.7f);
        ct2Var.g(-1.06f, 0.43f);
        ct2Var.g(-1.27f, 0.51f);
        ct2Var.g(-0.7f, -1.21f);
        ct2Var.g(1.08f, -0.84f);
        ct2Var.g(0.89f, -0.7f);
        ct2Var.g(-0.14f, -1.13f);
        ct2Var.c(-0.03f, -0.31f, -0.05f, -0.54f, -0.05f, -0.74f);
        ct2Var.j(0.02f, -0.43f, 0.05f, -0.73f);
        ct2Var.g(0.14f, -1.13f);
        ct2Var.g(-0.89f, -0.7f);
        ct2Var.g(-1.08f, -0.84f);
        ct2Var.g(0.7f, -1.21f);
        ct2Var.g(1.27f, 0.51f);
        ct2Var.g(1.04f, 0.42f);
        ct2Var.g(0.9f, -0.68f);
        ct2Var.c(0.43f, -0.32f, 0.84f, -0.56f, 1.25f, -0.73f);
        ct2Var.g(1.06f, -0.43f);
        ct2Var.g(0.16f, -1.13f);
        ct2Var.g(0.2f, -1.35f);
        ct2Var.e(1.39f);
        ct2Var.g(0.19f, 1.35f);
        ct2Var.g(0.16f, 1.13f);
        ct2Var.g(1.06f, 0.43f);
        ct2Var.c(0.43f, 0.18f, 0.83f, 0.41f, 1.23f, 0.71f);
        ct2Var.g(0.91f, 0.7f);
        ct2Var.g(1.06f, -0.43f);
        ct2Var.g(1.27f, -0.51f);
        ct2Var.g(0.7f, 1.21f);
        ct2Var.g(-1.07f, 0.85f);
        ct2Var.g(-0.89f, 0.7f);
        ct2Var.g(0.14f, 1.13f);
        ct2Var.a();
        ct2Var.h(12.0f, 8.0f);
        ct2Var.c(-2.21f, 0.0f, -4.0f, 1.79f, -4.0f, 4.0f);
        ct2Var.j(1.79f, 4.0f, 4.0f, 4.0f);
        ct2Var.j(4.0f, -1.79f, 4.0f, -4.0f);
        ct2Var.j(-1.79f, -4.0f, -4.0f, -4.0f);
        ct2Var.a();
        ct2Var.h(12.0f, 14.0f);
        ct2Var.c(-1.1f, 0.0f, -2.0f, -0.9f, -2.0f, -2.0f);
        ct2Var.j(0.9f, -2.0f, 2.0f, -2.0f);
        ct2Var.j(2.0f, 0.9f, 2.0f, 2.0f);
        ct2Var.j(-0.9f, 2.0f, -2.0f, 2.0f);
        ct2Var.a();
        ro1.a(ro1Var, ct2Var.n, sp3Var);
        so1 so1VarB = ro1Var.b();
        e = so1VarB;
        return so1VarB;
    }

    public static final nd2 q0(nd2 nd2Var, pe1 pe1Var) {
        return nd2Var.c(new pw(pe1Var));
    }

    public static nd2 r0(nd2 nd2Var, float f2, float f3, float f4, float f5, jl3 jl3Var, boolean z, int i) {
        float f6 = (i & 1) != 0 ? 1.0f : f2;
        float f7 = (i & 2) != 0 ? 1.0f : f3;
        float f8 = (i & 4) != 0 ? 1.0f : f4;
        float f9 = (i & 32) != 0 ? 0.0f : f5;
        long j = f14.b;
        jl3 jl3Var2 = (i & 2048) != 0 ? k75.d : jl3Var;
        boolean z2 = (i & BlockstoreClient.MAX_SIZE) != 0 ? false : z;
        long j2 = di1.a;
        return nd2Var.c(new ai1(f6, f7, f8, f9, j, jl3Var2, z2, j2, j2, by1.a));
    }

    public static final jv0 s0(tu1 tu1Var, boolean z, wu1 wu1Var) {
        if (tu1Var instanceof bv1) {
            return ((bv1) tu1Var).S(z, wu1Var);
        }
        return tu1Var.j0(wu1Var.r(), z, new o(1, wu1Var, wu1.class, "invoke", "invoke(Ljava/lang/Throwable;)V", 0, 0, 6));
    }

    public static final boolean t0(hi0 hi0Var) {
        tu1 tu1Var = (tu1) hi0Var.K(mj1.W);
        if (tu1Var != null) {
            return tu1Var.b();
        }
        return true;
    }

    public static boolean u0(int i, Object obj) {
        if (obj instanceof ef1) {
            if ((obj instanceof nf1 ? ((nf1) obj).b() : obj instanceof ne1 ? 0 : obj instanceof pe1 ? 1 : obj instanceof df1 ? 2 : obj instanceof ff1 ? 3 : obj instanceof gf1 ? 4 : obj instanceof hf1 ? 5 : obj instanceof if1 ? 6 : obj instanceof jf1 ? 7 : obj instanceof kf1 ? 8 : obj instanceof lf1 ? 9 : obj instanceof oe1 ? 10 : obj instanceof qe1 ? 11 : obj instanceof se1 ? 13 : obj instanceof te1 ? 14 : obj instanceof ue1 ? 15 : obj instanceof ve1 ? 16 : obj instanceof we1 ? 17 : obj instanceof xe1 ? 18 : obj instanceof ye1 ? 19 : obj instanceof af1 ? 20 : obj instanceof bf1 ? 21 : -1) == i) {
                return true;
            }
        }
        return false;
    }

    public static final boolean v0(long j) {
        return (j & 2) != 0;
    }

    public static final boolean w0(long j) {
        return (j & 1) != 0;
    }

    public static final boolean x0(h12 h12Var, int i) {
        return i <= h12Var.c() && ((n12) h12Var.c).d() <= i;
    }

    public static final long y0(float f2, long j) {
        return (Float.isNaN(f2) || f2 >= 1.0f) ? j : t70.b(t70.d(j) * f2, j);
    }

    public static nd2 z0(nd2 nd2Var, gs2 gs2Var, ow owVar) {
        return nd2Var.c(new hs2(gs2Var, owVar));
    }

    @Override // defpackage.vn0
    public xb0 A(gi3 gi3Var) {
        gi3Var.getClass();
        return this;
    }

    @Override // defpackage.vn0
    public double B() {
        h0();
        throw null;
    }

    @Override // defpackage.vn0
    public Object a(lx1 lx1Var) {
        lx1Var.getClass();
        return lx1Var.b(this);
    }

    @Override // defpackage.vn0
    public abstract long b();

    @Override // defpackage.xb0
    public vn0 c(ly2 ly2Var, int i) {
        ly2Var.getClass();
        return t(ly2Var.j(i));
    }

    @Override // defpackage.vn0
    public boolean d() {
        h0();
        throw null;
    }

    @Override // defpackage.vn0
    public boolean e() {
        return true;
    }

    @Override // defpackage.vn0
    public char f() {
        h0();
        throw null;
    }

    @Override // defpackage.xb0
    public Object g(gi3 gi3Var, int i, lx1 lx1Var, Object obj) {
        gi3Var.getClass();
        lx1Var.getClass();
        if (lx1Var.d().h() || e()) {
            return a(lx1Var);
        }
        return null;
    }

    public void h0() {
        throw new mi3(y33.a(getClass()) + " can't retrieve untyped values");
    }

    @Override // defpackage.xb0
    public double i(ly2 ly2Var, int i) {
        ly2Var.getClass();
        return B();
    }

    @Override // defpackage.xb0
    public char j(ly2 ly2Var, int i) {
        ly2Var.getClass();
        return f();
    }

    @Override // defpackage.xb0
    public float k(ly2 ly2Var, int i) {
        ly2Var.getClass();
        return y();
    }

    @Override // defpackage.xb0
    public byte l(ly2 ly2Var, int i) {
        ly2Var.getClass();
        return s();
    }

    @Override // defpackage.xb0
    public String m(gi3 gi3Var, int i) {
        gi3Var.getClass();
        return x();
    }

    @Override // defpackage.vn0
    public abstract int n();

    @Override // defpackage.xb0
    public short o(ly2 ly2Var, int i) {
        ly2Var.getClass();
        return w();
    }

    public void p(gi3 gi3Var) {
        gi3Var.getClass();
    }

    @Override // defpackage.xb0
    public boolean r(ly2 ly2Var, int i) {
        ly2Var.getClass();
        return d();
    }

    @Override // defpackage.vn0
    public abstract byte s();

    @Override // defpackage.vn0
    public vn0 t(gi3 gi3Var) {
        gi3Var.getClass();
        return this;
    }

    public Object u(gi3 gi3Var, int i, lx1 lx1Var, Object obj) {
        gi3Var.getClass();
        lx1Var.getClass();
        return a(lx1Var);
    }

    @Override // defpackage.xb0
    public int v(gi3 gi3Var, int i) {
        gi3Var.getClass();
        return n();
    }

    @Override // defpackage.vn0
    public abstract short w();

    @Override // defpackage.vn0
    public String x() {
        h0();
        throw null;
    }

    @Override // defpackage.vn0
    public float y() {
        h0();
        throw null;
    }

    @Override // defpackage.xb0
    public long z(gi3 gi3Var, int i) {
        gi3Var.getClass();
        return b();
    }
}
