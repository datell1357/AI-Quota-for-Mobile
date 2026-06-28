package defpackage;

import com.google.android.gms.common.api.Api;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bb2 extends xx1 implements ne1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ cb2 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ bb2(cb2 cb2Var, int i) {
        super(0);
        this.o = i;
        this.p = cb2Var;
    }

    @Override // defpackage.ne1
    public final Object a() {
        cv2 placementScope;
        int i = this.o;
        t64 t64Var = t64.a;
        cb2 cb2Var = this.p;
        switch (i) {
            case 0:
                bz1 bz1Var = cb2Var.s;
                bz1Var.i = 0;
                ug2 ug2VarZ = bz1Var.a.z();
                Object[] objArr = ug2VarZ.n;
                int i2 = ug2VarZ.p;
                for (int i3 = 0; i3 < i2; i3++) {
                    cb2 cb2Var2 = ((xy1) objArr[i3]).T.p;
                    cb2Var2.f45u = cb2Var2.v;
                    cb2Var2.v = Api.BaseClientBuilder.API_PRIORITY_OTHER;
                    cb2Var2.G = false;
                    if (cb2Var2.y == vy1.o) {
                        cb2Var2.y = vy1.p;
                    }
                }
                xy1 xy1Var = bz1Var.a;
                xy1 xy1Var2 = bz1Var.a;
                ug2 ug2VarZ2 = xy1Var.z();
                Object[] objArr2 = ug2VarZ2.n;
                int i4 = ug2VarZ2.p;
                for (int i5 = 0; i5 < i4; i5++) {
                    ((xy1) objArr2[i5]).T.p.K.d = false;
                }
                if (cb2Var.n().B) {
                    rg2 rg2Var = (rg2) xy1Var2.n();
                    int i6 = rg2Var.n.p;
                    for (int i7 = 0; i7 < i6; i7++) {
                        ((mm2) ((xy1) rg2Var.get(i7)).S.e).B = true;
                    }
                }
                cb2Var.n().v0().d();
                if (cb2Var.n().B) {
                    rg2 rg2Var2 = (rg2) xy1Var2.n();
                    int i8 = rg2Var2.n.p;
                    for (int i9 = 0; i9 < i8; i9++) {
                        ((mm2) ((xy1) rg2Var2.get(i9)).S.e).B = false;
                    }
                }
                ug2 ug2VarZ3 = xy1Var2.z();
                Object[] objArr3 = ug2VarZ3.n;
                int i10 = ug2VarZ3.p;
                for (int i11 = 0; i11 < i10; i11++) {
                    xy1 xy1Var3 = (xy1) objArr3[i11];
                    bz1 bz1Var2 = xy1Var3.T;
                    if (bz1Var2.p.f45u != xy1Var3.v()) {
                        xy1Var2.O();
                        xy1Var2.C();
                        if (xy1Var3.v() == Integer.MAX_VALUE) {
                            if (bz1Var2.c || ix.C(xy1Var3)) {
                                q82 q82Var = bz1Var2.q;
                                q82Var.getClass();
                                q82Var.k0(false);
                            }
                            bz1Var2.p.l0();
                        }
                    }
                }
                ug2 ug2VarZ4 = xy1Var2.z();
                Object[] objArr4 = ug2VarZ4.n;
                int i12 = ug2VarZ4.p;
                for (int i13 = 0; i13 < i12; i13++) {
                    yy1 yy1Var = ((xy1) objArr4[i13]).T.p.K;
                    yy1Var.e = yy1Var.d;
                }
                break;
            case 1:
                cb2Var.s.a().e(cb2Var.O);
                break;
            default:
                bz1 bz1Var3 = cb2Var.s;
                mm2 mm2Var = bz1Var3.a().H;
                if (mm2Var == null || (placementScope = mm2Var.C) == null) {
                    placementScope = ((q9) az1.a(bz1Var3.a)).getPlacementScope();
                }
                pe1 pe1Var = cb2Var.T;
                if (pe1Var == null) {
                    mm2 mm2VarA = bz1Var3.a();
                    long j = cb2Var.U;
                    float f = cb2Var.V;
                    placementScope.getClass();
                    cv2.a(placementScope, mm2VarA);
                    mm2VarA.d0(js1.c(j, mm2VarA.r), f, null);
                } else {
                    mm2 mm2VarA2 = bz1Var3.a();
                    long j2 = cb2Var.U;
                    float f2 = cb2Var.V;
                    placementScope.getClass();
                    cv2.a(placementScope, mm2VarA2);
                    mm2VarA2.d0(js1.c(j2, mm2VarA2.r), f2, pe1Var);
                }
                break;
        }
        return t64Var;
    }
}
