package defpackage;

import com.google.android.gms.common.api.Api;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class p82 extends xx1 implements ne1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ q82 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ p82(q82 q82Var, int i) {
        super(0);
        this.o = i;
        this.p = q82Var;
    }

    @Override // defpackage.ne1
    public final Object a() {
        m82 m82VarM0;
        int i = this.o;
        dg2 dg2Var = null;
        placementScope = null;
        placementScope = null;
        cv2 placementScope = null;
        t64 t64Var = t64.a;
        q82 q82Var = this.p;
        switch (i) {
            case 0:
                bz1 bz1Var = q82Var.s;
                bz1Var.h = 0;
                ug2 ug2VarZ = bz1Var.a.z();
                Object[] objArr = ug2VarZ.n;
                int i2 = ug2VarZ.p;
                for (int i3 = 0; i3 < i2; i3++) {
                    q82 q82Var2 = ((xy1) objArr[i3]).T.q;
                    q82Var2.getClass();
                    q82Var2.f274u = q82Var2.v;
                    q82Var2.v = Api.BaseClientBuilder.API_PRIORITY_OTHER;
                    if (q82Var2.w == vy1.o) {
                        q82Var2.w = vy1.p;
                    }
                }
                xy1 xy1Var = bz1Var.a;
                xy1 xy1Var2 = bz1Var.a;
                ug2 ug2VarZ2 = xy1Var.z();
                Object[] objArr2 = ug2VarZ2.n;
                int i4 = ug2VarZ2.p;
                for (int i5 = 0; i5 < i4; i5++) {
                    q82 q82Var3 = ((xy1) objArr2[i5]).T.q;
                    q82Var3.getClass();
                    q82Var3.E.d = false;
                }
                fr1 fr1Var = q82Var.n().i0;
                if (fr1Var == null) {
                    k21.n("Expected lookahead delegate");
                } else {
                    rg2 rg2Var = (rg2) xy1Var2.n();
                    int i6 = rg2Var.n.p;
                    for (int i7 = 0; i7 < i6; i7++) {
                        xy1 xy1Var3 = (xy1) rg2Var.get(i7);
                        m82 m82VarM02 = ((mm2) xy1Var3.S.e).M0();
                        if (m82VarM02 != null) {
                            if (m82VarM02.B) {
                                if (dg2Var == null) {
                                    dg2Var = new dg2();
                                }
                                dg2Var.a(xy1Var3);
                            }
                            m82VarM02.B = fr1Var.B;
                        }
                    }
                    fr1Var.v0().d();
                    rg2 rg2Var2 = (rg2) xy1Var2.n();
                    int i8 = rg2Var2.n.p;
                    int i9 = 0;
                    while (true) {
                        if (i9 >= i8) {
                            ug2 ug2VarZ3 = xy1Var2.z();
                            Object[] objArr3 = ug2VarZ3.n;
                            int i10 = ug2VarZ3.p;
                            for (int i11 = 0; i11 < i10; i11++) {
                                q82 q82Var4 = ((xy1) objArr3[i11]).T.q;
                                q82Var4.getClass();
                                int i12 = q82Var4.f274u;
                                int i13 = q82Var4.v;
                                if (i12 != i13 && i13 == Integer.MAX_VALUE) {
                                    q82Var4.k0(true);
                                }
                            }
                            ug2 ug2VarZ4 = xy1Var2.z();
                            Object[] objArr4 = ug2VarZ4.n;
                            int i14 = ug2VarZ4.p;
                            for (int i15 = 0; i15 < i14; i15++) {
                                q82 q82Var5 = ((xy1) objArr4[i15]).T.q;
                                q82Var5.getClass();
                                yy1 yy1Var = q82Var5.E;
                                yy1Var.e = yy1Var.d;
                            }
                        } else {
                            xy1 xy1Var4 = (xy1) rg2Var2.get(i9);
                            boolean z = dg2Var != null && dg2Var.g(xy1Var4) >= 0;
                            m82 m82VarM03 = ((mm2) xy1Var4.S.e).M0();
                            if (m82VarM03 != null) {
                                m82VarM03.B = z;
                            }
                            i9++;
                        }
                    }
                }
                break;
            case 1:
                bz1 bz1Var2 = q82Var.s;
                if (ix.C(bz1Var2.a) || bz1Var2.c) {
                    mm2 mm2Var = bz1Var2.a().H;
                    if (mm2Var != null) {
                        placementScope = mm2Var.C;
                    }
                } else {
                    mm2 mm2Var2 = bz1Var2.a().H;
                    if (mm2Var2 != null && (m82VarM0 = mm2Var2.M0()) != null) {
                        placementScope = m82VarM0.C;
                    }
                }
                if (placementScope == null) {
                    placementScope = ((q9) az1.a(bz1Var2.a)).getPlacementScope();
                }
                m82 m82VarM04 = bz1Var2.a().M0();
                m82VarM04.getClass();
                cv2.i(placementScope, m82VarM04, q82Var.B);
                break;
            default:
                m82 m82VarM05 = q82Var.s.a().M0();
                m82VarM05.getClass();
                m82VarM05.e(q82Var.L);
                break;
        }
        return t64Var;
    }
}
