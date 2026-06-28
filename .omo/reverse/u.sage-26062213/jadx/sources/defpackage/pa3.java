package defpackage;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pa3 {
    public final List a;
    public final float b;
    public final float c;
    public final a42 d;

    /* JADX WARN: Multi-variable type inference failed */
    public pa3(AbstractList abstractList, float f, float f2) {
        ArrayList arrayListH;
        ArrayList arrayListH2;
        char c;
        cl0 cl0Var;
        cl0 cl0Var2;
        List list;
        char c2;
        abstractList.getClass();
        this.a = abstractList;
        this.b = f;
        this.c = f2;
        a42 a42VarP = tv4.p();
        char c3 = 3;
        if (abstractList.size() <= 0 || ((w41) abstractList.get(0)).a.size() != 3) {
            arrayListH = null;
            arrayListH2 = null;
        } else {
            js2 js2VarD = ((cl0) ((w41) abstractList.get(0)).a.get(1)).d(0.5f);
            cl0 cl0Var3 = (cl0) js2VarD.n;
            cl0 cl0Var4 = (cl0) js2VarD.o;
            arrayListH2 = tv4.H(((w41) abstractList.get(0)).a.get(0), cl0Var3);
            arrayListH = tv4.H(cl0Var4, ((w41) abstractList.get(0)).a.get(2));
        }
        int size = abstractList.size();
        if (size >= 0) {
            int i = 0;
            cl0Var = null;
            cl0Var2 = null;
            while (true) {
                if (i == 0 && arrayListH != null) {
                    list = arrayListH;
                } else if (i != this.a.size()) {
                    list = ((w41) this.a.get(i)).a;
                } else {
                    if (arrayListH2 == null) {
                        c = c3;
                        break;
                    }
                    list = arrayListH2;
                }
                int size2 = list.size();
                int i2 = 0;
                while (i2 < size2) {
                    cl0 cl0Var5 = (cl0) list.get(i2);
                    if (cl0Var5.f()) {
                        c2 = c3;
                        if (cl0Var2 != null) {
                            float[] fArr = cl0Var2.a;
                            fArr[6] = cl0Var5.a();
                            fArr[7] = cl0Var5.b();
                        }
                    } else {
                        if (cl0Var2 != null) {
                            a42VarP.add(cl0Var2);
                        }
                        c2 = c3;
                        if (cl0Var == null) {
                            cl0Var = cl0Var5;
                            cl0Var2 = cl0Var;
                        } else {
                            cl0Var2 = cl0Var5;
                        }
                    }
                    i2++;
                    c3 = c2;
                }
                c = c3;
                if (i == size) {
                    break;
                }
                i++;
                c3 = c;
            }
        } else {
            c = 3;
            cl0Var = null;
            cl0Var2 = null;
        }
        if (cl0Var2 != null && cl0Var != null) {
            float[] fArr2 = cl0Var2.a;
            float f3 = fArr2[0];
            float f4 = fArr2[1];
            float f5 = fArr2[2];
            float f6 = fArr2[c];
            float f7 = fArr2[4];
            float f8 = fArr2[5];
            float[] fArr3 = cl0Var.a;
            a42VarP.add(is0.a(f3, f4, f5, f6, f7, f8, fArr3[0], fArr3[1]));
        }
        a42 a42VarL = tv4.l(a42VarP);
        this.d = a42VarL;
        Object obj = a42VarL.get(a42VarL.a() - 1);
        int iA = a42VarL.a();
        int i3 = 0;
        while (i3 < iA) {
            cl0 cl0Var6 = (cl0) this.d.get(i3);
            cl0 cl0Var7 = (cl0) obj;
            if (Math.abs(cl0Var6.a[0] - cl0Var7.a()) > 1.0E-4f || Math.abs(cl0Var6.a[1] - cl0Var7.b()) > 1.0E-4f) {
                k21.f("RoundedPolygon must be contiguous, with the anchor points of all curves matching the anchor points of the preceding and succeeding cubics");
                throw null;
            }
            i3++;
            obj = cl0Var6;
        }
    }

    public static float[] a(pa3 pa3Var, float[] fArr, int i) {
        char c;
        char c2;
        char c3;
        char c4;
        char c5 = 1;
        char c6 = 4;
        float[] fArr2 = (i & 1) != 0 ? new float[4] : fArr;
        a42 a42Var = pa3Var.d;
        if (fArr2.length < 4) {
            k21.f("Required bounds size of 4");
            return null;
        }
        int iA = a42Var.a();
        float fMax = Float.MIN_VALUE;
        char c7 = 0;
        float fMin = Float.MAX_VALUE;
        float fMin2 = Float.MAX_VALUE;
        int i2 = 0;
        float fMax2 = Float.MIN_VALUE;
        while (i2 < iA) {
            cl0 cl0Var = (cl0) a42Var.get(i2);
            cl0Var.getClass();
            boolean zF = cl0Var.f();
            float[] fArr3 = cl0Var.a;
            if (zF) {
                fArr2[c7] = fArr3[c7];
                fArr2[c5] = fArr3[c5];
                fArr2[2] = fArr3[c7];
                fArr2[3] = fArr3[c5];
                c = c5;
                c2 = c6;
                c3 = c7;
                c4 = 2;
            } else {
                c = c5;
                float fMin3 = Math.min(fArr3[c7], cl0Var.a());
                c2 = c6;
                float fMin4 = Math.min(fArr3[c], cl0Var.b());
                c3 = c7;
                float fMax3 = Math.max(fArr3[c7], cl0Var.a());
                float fMax4 = Math.max(fArr3[c], cl0Var.b());
                c4 = 2;
                fArr2[c3] = Math.min(fMin3, Math.min(fArr3[2], fArr3[c2]));
                fArr2[c] = Math.min(fMin4, Math.min(fArr3[3], fArr3[5]));
                fArr2[2] = Math.max(fMax3, Math.max(fArr3[2], fArr3[c2]));
                fArr2[3] = Math.max(fMax4, Math.max(fArr3[3], fArr3[5]));
            }
            fMin = Math.min(fMin, fArr2[c3]);
            fMin2 = Math.min(fMin2, fArr2[c]);
            fMax = Math.max(fMax, fArr2[c4]);
            fMax2 = Math.max(fMax2, fArr2[3]);
            i2++;
            c7 = c3;
            c6 = c2;
            c5 = c;
        }
        fArr2[c7] = fMin;
        fArr2[c5] = fMin2;
        fArr2[2] = fMax;
        fArr2[3] = fMax2;
        return fArr2;
    }

    public final pa3 b() {
        float[] fArrA = a(this, null, 3);
        float f = fArrA[2] - fArrA[0];
        float f2 = fArrA[3] - fArrA[1];
        float fMax = Math.max(f, f2);
        return c(new s40(((fMax - f) / 2.0f) - fArrA[0], fMax, ((fMax - f2) / 2.0f) - fArrA[1]));
    }

    public final pa3 c(uv2 uv2Var) {
        long jX = ix.X(v71.a(this.b, this.c), uv2Var);
        a42 a42VarP = tv4.p();
        List list = this.a;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            a42VarP.add(((w41) list.get(i)).a(uv2Var));
        }
        return new pa3(tv4.l(a42VarP), ix.x(jX), ix.y(jX));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pa3)) {
            return false;
        }
        return nt1.g(this.a, ((pa3) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "[RoundedPolygon. Cubics = " + o70.n0(this.d, null, null, null, null, 63) + " || Features = " + o70.n0(this.a, null, null, null, null, 63) + " || Center = (" + this.b + ", " + this.c + ")]";
    }
}
