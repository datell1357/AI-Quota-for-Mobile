package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class br2 extends n44 {
    public int h;
    public int j;
    public int l;
    public zq2[] g = new zq2[16];
    public int[] i = new int[16];
    public Object[] k = new Object[16];

    public final void P0() {
        this.h = 0;
        this.j = 0;
        Arrays.fill(this.k, 0, this.l, (Object) null);
        this.l = 0;
    }

    public final void Q0(kh khVar, xn3 xn3Var, l53 l53Var, ar2 ar2Var) {
        if (this.h != 0) {
            e50 e50Var = new e50();
            e50Var.d = this;
            br2 br2Var = (br2) e50Var.d;
            while (true) {
                zq2 zq2Var = br2Var.g[e50Var.a];
                vf1 vf1VarB = zq2Var.b(e50Var);
                kh khVar2 = khVar;
                xn3 xn3Var2 = xn3Var;
                l53 l53Var2 = l53Var;
                ar2 ar2Var2 = ar2Var;
                try {
                    zq2Var.a(e50Var, khVar2, xn3Var2, l53Var2, ar2Var2);
                    int i = e50Var.a;
                    int i2 = br2Var.h;
                    if (i < i2) {
                        zq2 zq2Var2 = br2Var.g[i];
                        e50Var.b += zq2Var2.a;
                        e50Var.c += zq2Var2.b;
                        int i3 = i + 1;
                        e50Var.a = i3;
                        if (i3 >= i2) {
                            break;
                        }
                        khVar = khVar2;
                        xn3Var = xn3Var2;
                        l53Var = l53Var2;
                        ar2Var = ar2Var2;
                    } else {
                        break;
                    }
                } finally {
                }
            }
        }
        P0();
    }

    public final boolean R0() {
        return this.h == 0;
    }

    public final void S0(zq2 zq2Var) {
        int i = this.h;
        zq2[] zq2VarArr = this.g;
        if (i == zq2VarArr.length) {
            zq2[] zq2VarArr2 = new zq2[(i > 1024 ? 1024 : i) + i];
            System.arraycopy(zq2VarArr, 0, zq2VarArr2, 0, i);
            this.g = zq2VarArr2;
        }
        int i2 = this.j;
        int i3 = zq2Var.a;
        int i4 = zq2Var.b;
        int i5 = i2 + i3;
        int[] iArr = this.i;
        int length = iArr.length;
        if (i5 > length) {
            int i6 = (length > 1024 ? 1024 : length) + length;
            if (i6 >= i5) {
                i5 = i6;
            }
            int[] iArr2 = new int[i5];
            ji.N(0, 0, length, iArr, iArr2);
            this.i = iArr2;
        }
        int i7 = this.l + i4;
        Object[] objArr = this.k;
        int length2 = objArr.length;
        if (i7 > length2) {
            int i8 = (length2 <= 1024 ? length2 : 1024) + length2;
            if (i8 >= i7) {
                i7 = i8;
            }
            Object[] objArr2 = new Object[i7];
            System.arraycopy(objArr, 0, objArr2, 0, length2);
            this.k = objArr2;
        }
        zq2[] zq2VarArr3 = this.g;
        int i9 = this.h;
        this.h = i9 + 1;
        zq2VarArr3[i9] = zq2Var;
        this.j += zq2Var.a;
        this.l += i4;
    }
}
