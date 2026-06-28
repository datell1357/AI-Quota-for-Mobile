package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fq0 implements ne1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;

    public /* synthetic */ fq0(int i, Object obj) {
        this.n = i;
        this.o = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.lang.Object, ox1] */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r8v4, types: [dg2] */
    /* JADX WARN: Type inference failed for: r9v4, types: [dg2] */
    @Override // defpackage.ne1
    public final Object a() {
        int i = this.n;
        Object obj = this.o;
        switch (i) {
            case 0:
                k04 k04Var = ((cn3) obj).j;
                long j = k04Var.a;
                long j2 = k04Var.b;
                float fA = ny0.b.a(0.0f);
                ko2 ko2Var = e80.x;
                long jA = t70.a(j, ko2Var);
                long jA2 = t70.a(j2, ko2Var);
                float fD = t70.d(jA);
                float fH = t70.h(jA);
                float fG = t70.g(jA);
                float fE = t70.e(jA);
                float fD2 = t70.d(jA2);
                float fH2 = t70.h(jA2);
                float fG2 = t70.g(jA2);
                float fE2 = t70.e(jA2);
                float f = fA >= 0.0f ? fA : 0.0f;
                if (f > 1.0f) {
                    f = 1.0f;
                }
                float f2 = 1.0f - f;
                return new t70(t70.a(c75.i((fH2 * f) + (fH * f2), (fG2 * f) + (fG * f2), (fE2 * f) + (fE * f2), (f * fD2) + (f2 * fD), ko2Var), t70.f(j2)));
            case 1:
                ArrayList arrayList = ((dg1) obj).a;
                kg2 kg2Var = new kg2(arrayList.size());
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ?? r4 = (ox1) arrayList.get(i2);
                    Object obj2 = r4.b;
                    int i3 = r4.a;
                    Object dv1Var = obj2 != null ? new dv1(Integer.valueOf(i3), r4.b) : Integer.valueOf(i3);
                    int iF = kg2Var.f(dv1Var);
                    boolean z = iF < 0;
                    Object obj3 = z ? null : kg2Var.c[iF];
                    if (obj3 != null) {
                        if (obj3 instanceof dg2) {
                            ?? r8 = (dg2) obj3;
                            r8.a(r4);
                            r4 = r8;
                        } else {
                            Object[] objArr = tn2.a;
                            ?? dg2Var = new dg2(2);
                            dg2Var.a(obj3);
                            dg2Var.a(r4);
                            r4 = dg2Var;
                        }
                    }
                    if (z) {
                        int i4 = ~iF;
                        kg2Var.b[i4] = dv1Var;
                        kg2Var.c[i4] = r4;
                    } else {
                        kg2Var.c[iF] = r4;
                    }
                }
                return new ef2(kg2Var);
            default:
                return new sf0[((a81[]) obj).length];
        }
    }
}
