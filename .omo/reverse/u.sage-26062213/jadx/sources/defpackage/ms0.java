package defpackage;

import com.google.android.gms.common.api.Api;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ms0 implements pe1 {
    public final /* synthetic */ int n = 0;
    public final /* synthetic */ int o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ Object r;

    public /* synthetic */ ms0(os0 os0Var, os1 os1Var, cg2 cg2Var, int i) {
        this.p = os0Var;
        this.q = os1Var;
        this.r = cg2Var;
        this.o = i;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.n;
        t64 t64Var = t64.a;
        Object obj2 = this.r;
        int i2 = this.o;
        Object obj3 = this.q;
        Object obj4 = this.p;
        switch (i) {
            case 0:
                os1 os1Var = (os1) obj3;
                cg2 cg2Var = (cg2) obj2;
                if (obj == ((os0) obj4)) {
                    k21.n("A derived state calculation cannot read itself");
                    return null;
                }
                if (!(obj instanceof bs3)) {
                    return t64Var;
                }
                int i3 = os1Var.a - i2;
                int iD = cg2Var.d(obj);
                cg2Var.g(Math.min(i3, iD >= 0 ? cg2Var.c[iD] : Api.BaseClientBuilder.API_PRIORITY_OTHER), obj);
                return t64Var;
            default:
                dv2[] dv2VarArr = (dv2[]) obj4;
                cb3 cb3Var = (cb3) obj3;
                int[] iArr = (int[]) obj2;
                cv2 cv2Var = (cv2) obj;
                int length = dv2VarArr.length;
                int i4 = 0;
                int i5 = 0;
                while (i4 < length) {
                    dv2 dv2Var = dv2VarArr[i4];
                    int i6 = i5 + 1;
                    dv2Var.getClass();
                    Object objI = dv2Var.i();
                    ab3 ab3Var = objI instanceof ab3 ? (ab3) objI : null;
                    al0 al0Var = ab3Var != null ? ab3Var.c : null;
                    cv2.h(cv2Var, dv2Var, iArr[i5], al0Var != null ? al0Var.i.a(dv2Var.o, i2, hy1.n) : cb3Var.b.a(dv2Var.o, i2));
                    i4++;
                    i5 = i6;
                }
                return t64Var;
        }
    }

    public /* synthetic */ ms0(dv2[] dv2VarArr, cb3 cb3Var, int i, int[] iArr) {
        this.p = dv2VarArr;
        this.q = cb3Var;
        this.o = i;
        this.r = iArr;
    }
}
