package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xn3 {
    public final un3 a;
    public int[] b;
    public Object[] c;
    public ArrayList d;
    public HashMap e;
    public tf2 f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;
    public final ss1 p;
    public final ss1 q;
    public final ss1 r;
    public tf2 s;
    public int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f410u;
    public int v;
    public boolean w;
    public sf2 x;

    public xn3(un3 un3Var) {
        this.a = un3Var;
        int[] iArr = un3Var.n;
        this.b = iArr;
        Object[] objArr = un3Var.p;
        this.c = objArr;
        this.d = un3Var.v;
        this.e = un3Var.w;
        this.f = un3Var.x;
        int i = un3Var.o;
        this.g = i;
        this.h = (iArr.length / 5) - i;
        int i2 = un3Var.q;
        this.k = i2;
        this.l = objArr.length - i2;
        this.m = i;
        this.p = new ss1();
        this.q = new ss1();
        this.r = new ss1();
        this.f410u = i;
        this.v = -1;
    }

    public static int i(int i, int i2, int i3, int i4) {
        return i > i2 ? -(((i4 - i3) - i) + 1) : i;
    }

    public static void z(xn3 xn3Var) {
        int i = xn3Var.v;
        int iR = xn3Var.r(i);
        int[] iArr = xn3Var.b;
        int i2 = (iR * 5) + 1;
        int i3 = iArr[i2];
        if ((i3 & 134217728) != 0) {
            return;
        }
        int i4 = (i3 & (-134217729)) | 134217728;
        iArr[i2] = i4;
        if ((67108864 & i4) != 0) {
            return;
        }
        xn3Var.T(xn3Var.E(iArr, i));
    }

    public final void A(un3 un3Var, int i) {
        if (this.n <= 0) {
            wb0.a("Check failed");
        }
        if (i == 0 && this.t == 0 && this.a.o == 0) {
            int[] iArr = un3Var.n;
            int i2 = iArr[(i * 5) + 3];
            int i3 = un3Var.o;
            if (i2 == i3) {
                int[] iArr2 = this.b;
                Object[] objArr = this.c;
                ArrayList arrayList = this.d;
                HashMap map = this.e;
                tf2 tf2Var = this.f;
                Object[] objArr2 = un3Var.p;
                int i4 = un3Var.q;
                HashMap map2 = un3Var.w;
                tf2 tf2Var2 = un3Var.x;
                this.b = iArr;
                this.c = objArr2;
                this.d = un3Var.v;
                this.g = i3;
                this.h = (iArr.length / 5) - i3;
                this.k = i4;
                this.l = objArr2.length - i4;
                this.m = i3;
                this.e = map2;
                this.f = tf2Var2;
                un3Var.n = iArr2;
                un3Var.o = 0;
                un3Var.p = objArr;
                un3Var.q = 0;
                un3Var.v = arrayList;
                un3Var.w = map;
                un3Var.x = tf2Var;
                return;
            }
        }
        xn3 xn3VarF = un3Var.f();
        try {
            tv4.G(xn3VarF, i, this, true, true, false);
            xn3VarF.e(true);
        } catch (Throwable th) {
            xn3VarF.e(false);
            throw th;
        }
    }

    public final void B(int i) {
        vf1 vf1Var;
        int i2;
        vf1 vf1Var2;
        int i3;
        int i4;
        int i5 = this.h;
        int i6 = this.g;
        if (i6 != i) {
            if (!this.d.isEmpty()) {
                int iO = o() - this.h;
                ArrayList arrayList = this.d;
                if (i6 < i) {
                    for (int iA = wn3.a(arrayList, i6, iO); iA < this.d.size() && (i3 = (vf1Var2 = (vf1) this.d.get(iA)).a) < 0 && (i4 = i3 + iO) < i; iA++) {
                        vf1Var2.a = i4;
                    }
                } else {
                    for (int iA2 = wn3.a(arrayList, i, iO); iA2 < this.d.size() && (i2 = (vf1Var = (vf1) this.d.get(iA2)).a) >= 0; iA2++) {
                        vf1Var.a = -(iO - i2);
                    }
                }
            }
            if (i5 > 0) {
                int[] iArr = this.b;
                int i7 = i * 5;
                int i8 = i5 * 5;
                int i9 = i6 * 5;
                if (i < i6) {
                    ji.N(i8 + i7, i7, i9, iArr, iArr);
                } else {
                    ji.N(i9, i9 + i8, i7 + i8, iArr, iArr);
                }
            }
            if (i < i6) {
                i6 = i + i5;
            }
            int iO2 = o();
            if (i6 >= iO2) {
                wb0.a("Check failed");
            }
            while (i6 < iO2) {
                int i10 = (i6 * 5) + 2;
                int i11 = this.b[i10];
                int iP = i11 > -2 ? i11 : (p() + i11) - (-2);
                if (iP >= i) {
                    iP = -((p() - iP) - (-2));
                }
                if (iP != i11) {
                    this.b[i10] = iP;
                }
                i6++;
                if (i6 == i) {
                    i6 += i5;
                }
            }
        }
        this.g = i;
    }

    public final void C(int i, int i2) {
        int i3 = this.l;
        int i4 = this.k;
        int i5 = this.m;
        if (i4 != i) {
            Object[] objArr = this.c;
            if (i < i4) {
                System.arraycopy(objArr, i, objArr, i + i3, i4 - i);
            } else {
                int i6 = i4 + i3;
                System.arraycopy(objArr, i6, objArr, i4, (i + i3) - i6);
            }
        }
        int iMin = Math.min(i2 + 1, p());
        if (i5 != iMin) {
            int length = this.c.length - i3;
            if (iMin < i5) {
                int iR = r(iMin);
                int iR2 = r(i5);
                int i7 = this.g;
                while (iR < iR2) {
                    int i8 = (iR * 5) + 4;
                    int i9 = this.b[i8];
                    if (i9 < 0) {
                        wb0.a("Unexpected anchor value, expected a positive anchor");
                    }
                    this.b[i8] = -((length - i9) + 1);
                    iR++;
                    if (iR == i7) {
                        iR += this.h;
                    }
                }
            } else {
                int iR3 = r(i5);
                int iR4 = r(iMin);
                while (iR3 < iR4) {
                    int i10 = (iR3 * 5) + 4;
                    int i11 = this.b[i10];
                    if (i11 >= 0) {
                        wb0.a("Unexpected anchor value, expected a negative anchor");
                    }
                    this.b[i10] = i11 + length + 1;
                    iR3++;
                    if (iR3 == this.g) {
                        iR3 += this.h;
                    }
                }
            }
            this.m = iMin;
        }
        this.k = i;
    }

    public final Object D(int i) {
        int iR = r(i);
        int[] iArr = this.b;
        if ((iArr[(iR * 5) + 1] & 1073741824) != 0) {
            return this.c[h(g(iArr, iR))];
        }
        return null;
    }

    public final int E(int[] iArr, int i) {
        int i2 = iArr[(r(i) * 5) + 2];
        return i2 > -2 ? i2 : (p() + i2) - (-2);
    }

    public final Object F(Object obj) {
        if (this.n > 0) {
            x(1, this.v);
        }
        Object[] objArr = this.c;
        int i = this.i;
        this.i = i + 1;
        Object obj2 = objArr[h(i)];
        if (this.i > this.j) {
            wb0.a("Writing to an invalid slot");
        }
        this.c[h(this.i - 1)] = obj;
        return obj2;
    }

    public final void G() {
        int i;
        sf2 sf2Var = this.x;
        if (sf2Var != null) {
            while (sf2Var.b != 0) {
                int iR = tv4.R(sf2Var);
                int iR2 = r(iR);
                int iU = iR + 1;
                int iU2 = u(iR) + iR;
                while (true) {
                    if (iU >= iU2) {
                        i = 0;
                        break;
                    } else {
                        if ((this.b[(r(iU) * 5) + 1] & 201326592) != 0) {
                            i = 1;
                            break;
                        }
                        iU += u(iU);
                    }
                }
                int[] iArr = this.b;
                int i2 = (iR2 * 5) + 1;
                int i3 = iArr[i2];
                if (((67108864 & i3) != 0 ? 1 : 0) != i) {
                    iArr[i2] = (i << 26) | ((-67108865) & i3);
                    int iE = E(iArr, iR);
                    if (iE >= 0) {
                        tv4.h(sf2Var, iE);
                    }
                }
            }
        }
    }

    public final boolean H() {
        if (this.n != 0) {
            wb0.a("Cannot remove group while inserting");
        }
        int i = this.t;
        int i2 = this.i;
        int iG = g(this.b, r(i));
        int iL = L();
        O(this.v);
        sf2 sf2Var = this.x;
        if (sf2Var != null) {
            while (true) {
                int i3 = sf2Var.b;
                if (i3 == 0) {
                    break;
                }
                if (i3 == 0) {
                    q73.l("IntList is empty.");
                    return false;
                }
                if (sf2Var.a[0] < i) {
                    break;
                }
                tv4.R(sf2Var);
            }
        }
        boolean zI = I(i, this.t - i);
        J(iG, this.i - iG, i - 1);
        this.t = i;
        this.i = i2;
        this.o -= iL;
        return zI;
    }

    public final boolean I(int i, int i2) {
        if (i2 > 0) {
            ArrayList arrayList = this.d;
            B(i);
            if (!arrayList.isEmpty()) {
                HashMap map = this.e;
                int i3 = i + i2;
                int iA = wn3.a(this.d, i3, o() - this.h);
                if (iA >= this.d.size()) {
                    iA--;
                }
                int i4 = iA + 1;
                int i5 = 0;
                while (iA >= 0) {
                    vf1 vf1Var = (vf1) this.d.get(iA);
                    int iC = c(vf1Var);
                    if (iC < i) {
                        break;
                    }
                    if (iC < i3) {
                        vf1Var.a = Integer.MIN_VALUE;
                        if (map != null) {
                        }
                        if (i5 == 0) {
                            i5 = iA + 1;
                        }
                        i4 = iA;
                    }
                    iA--;
                }
                z = i4 < i5;
                if (z) {
                    this.d.subList(i4, i5).clear();
                }
            }
            this.g = i;
            this.h += i2;
            int i6 = this.m;
            if (i6 > i) {
                this.m = Math.max(i, i6 - i2);
            }
            int i7 = this.f410u;
            if (i7 >= this.g) {
                this.f410u = i7 - i2;
            }
            int i8 = this.v;
            if (i8 >= 0 && (this.b[(r(i8) * 5) + 1] & 67108864) != 0) {
                T(i8);
            }
        }
        return z;
    }

    public final void J(int i, int i2, int i3) {
        if (i2 > 0) {
            int i4 = this.l;
            int i5 = i + i2;
            C(i5, i3);
            this.k = i;
            this.l = i4 + i2;
            Arrays.fill(this.c, i, i5, (Object) null);
            int i6 = this.j;
            if (i6 >= i) {
                this.j = i6 - i2;
            }
        }
    }

    public final Object K(int i, int i2, Object obj) {
        int iN = N(this.b, r(i));
        int iG = g(this.b, r(i + 1));
        int i3 = iN + i2;
        if (i3 < iN || i3 >= iG) {
            wb0.a("Write to an invalid slot index " + i2 + " for group " + i);
        }
        int iH = h(i3);
        Object[] objArr = this.c;
        Object obj2 = objArr[iH];
        objArr[iH] = obj;
        return obj2;
    }

    public final int L() {
        int iR = r(this.t);
        int i = this.t;
        int[] iArr = this.b;
        int i2 = iR * 5;
        int i3 = iArr[i2 + 3] + i;
        this.t = i3;
        this.i = g(iArr, r(i3));
        int i4 = this.b[i2 + 1];
        if ((1073741824 & i4) != 0) {
            return 1;
        }
        return i4 & 67108863;
    }

    public final void M() {
        int i = this.f410u;
        this.t = i;
        this.i = g(this.b, r(i));
    }

    public final int N(int[] iArr, int i) {
        if (i >= o()) {
            return this.c.length - this.l;
        }
        int iB = wn3.b(iArr, i);
        return iB < 0 ? (this.c.length - this.l) + iB + 1 : iB;
    }

    public final cg1 O(int i) {
        vf1 vf1VarR;
        HashMap map = this.e;
        if (map == null || (vf1VarR = R(i)) == null) {
            return null;
        }
        return (cg1) map.get(vf1VarR);
    }

    public final void P() {
        if (this.n != 0) {
            wb0.a("Key must be supplied when inserting");
        }
        bx3 bx3Var = rb0.a;
        Q(0, bx3Var, bx3Var, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void Q(int i, Object obj, Object obj2, boolean z) {
        int i2;
        int i3 = this.v;
        Object[] objArr = this.n > 0;
        this.r.c(this.o);
        bx3 bx3Var = rb0.a;
        if (objArr == true) {
            int i4 = this.t;
            int iG = g(this.b, r(i4));
            w(1);
            this.i = iG;
            this.j = iG;
            int iR = r(i4);
            int i5 = obj != bx3Var ? 1 : 0;
            int i6 = (z || obj2 == bx3Var) ? 0 : 1;
            int i7 = i(iG, this.k, this.l, this.c.length);
            if (i7 >= 0 && this.m < i4) {
                i7 = -(((this.c.length - this.l) - i7) + 1);
            }
            int[] iArr = this.b;
            int i8 = this.v;
            int i9 = iR * 5;
            iArr[i9] = i;
            iArr[i9 + 1] = ((z ? 1 : 0) << 30) | (i5 << 29) | (i6 << 28);
            iArr[i9 + 2] = i8;
            iArr[i9 + 3] = 0;
            iArr[i9 + 4] = i7;
            int i10 = (z ? 1 : 0) + i5 + i6;
            if (i10 > 0) {
                x(i10, i4);
                Object[] objArr2 = this.c;
                int i11 = this.i;
                if (z) {
                    objArr2[i11] = obj2;
                    i11++;
                }
                if (i5 != 0) {
                    objArr2[i11] = obj;
                    i11++;
                }
                if (i6 != 0) {
                    objArr2[i11] = obj2;
                    i11++;
                }
                this.i = i11;
            }
            this.o = 0;
            i2 = i4 + 1;
            this.v = i4;
            this.t = i2;
            if (i3 >= 0) {
                O(i3);
            }
        } else {
            this.p.c(i3);
            this.q.c((o() - this.h) - this.f410u);
            int i12 = this.t;
            int iR2 = r(i12);
            if (!nt1.g(obj2, bx3Var)) {
                if (z) {
                    U(this.t, obj2);
                } else {
                    S(obj2);
                }
            }
            this.i = N(this.b, iR2);
            this.j = g(this.b, r(this.t + 1));
            int[] iArr2 = this.b;
            int i13 = iR2 * 5;
            this.o = iArr2[i13 + 1] & 67108863;
            this.v = i12;
            this.t = i12 + 1;
            i2 = i12 + iArr2[i13 + 3];
        }
        this.f410u = i2;
    }

    public final vf1 R(int i) {
        ArrayList arrayList;
        int iE;
        if (i < 0 || i >= p() || (iE = wn3.e((arrayList = this.d), i, p())) < 0) {
            return null;
        }
        return (vf1) arrayList.get(iE);
    }

    public final void S(Object obj) {
        int iR = r(this.t);
        int i = (iR * 5) + 1;
        if ((this.b[i] & 268435456) == 0) {
            wb0.a("Updating the data of a group that was not created with a data slot");
        }
        Object[] objArr = this.c;
        int[] iArr = this.b;
        objArr[h(Integer.bitCount(iArr[i] >> 29) + g(iArr, iR))] = obj;
    }

    public final void T(int i) {
        if (i >= 0) {
            sf2 sf2Var = this.x;
            if (sf2Var == null) {
                sf2Var = new sf2();
                this.x = sf2Var;
            }
            tv4.h(sf2Var, i);
        }
    }

    public final void U(int i, Object obj) {
        int iR = r(i);
        int[] iArr = this.b;
        if (iR >= iArr.length || (iArr[(iR * 5) + 1] & 1073741824) == 0) {
            wb0.a("Updating the node of a group at " + i + " that was not created with as a node group");
        }
        this.c[h(g(this.b, iR))] = obj;
    }

    public final void a(int i) {
        if (i < 0) {
            wb0.a("Cannot seek backwards");
        }
        if (this.n > 0) {
            ix2.b("Cannot call seek() while inserting");
        }
        if (i == 0) {
            return;
        }
        int i2 = this.t + i;
        int i3 = this.v;
        if (i2 < i3 || i2 > this.f410u) {
            wb0.a("Cannot seek outside the current group (" + i3 + "-" + this.f410u + ")");
        }
        this.t = i2;
        int iG = g(this.b, r(i2));
        this.i = iG;
        this.j = iG;
    }

    public final vf1 b(int i) {
        ArrayList arrayList = this.d;
        int iE = wn3.e(arrayList, i, p());
        if (iE >= 0) {
            return (vf1) arrayList.get(iE);
        }
        if (i > this.g) {
            i = -(p() - i);
        }
        vf1 vf1Var = new vf1(i);
        arrayList.add(-(iE + 1), vf1Var);
        return vf1Var;
    }

    public final int c(vf1 vf1Var) {
        int i = vf1Var.a;
        return i < 0 ? p() + i : i;
    }

    public final void d() {
        int i = this.n;
        this.n = i + 1;
        if (i == 0) {
            this.q.c((o() - this.h) - this.f410u);
        }
    }

    public final void e(boolean z) {
        this.w = true;
        if (z && this.p.b == 0) {
            B(p());
            C(this.c.length - this.l, this.g);
            int i = this.k;
            Arrays.fill(this.c, i, this.l + i, (Object) null);
            G();
        }
        int[] iArr = this.b;
        int i2 = this.g;
        Object[] objArr = this.c;
        int i3 = this.k;
        ArrayList arrayList = this.d;
        HashMap map = this.e;
        tf2 tf2Var = this.f;
        un3 un3Var = this.a;
        if (!un3Var.t) {
            ix2.a("Unexpected writer close()");
        }
        un3Var.t = false;
        un3Var.n = iArr;
        un3Var.o = i2;
        un3Var.p = objArr;
        un3Var.q = i3;
        un3Var.v = arrayList;
        un3Var.w = map;
        un3Var.x = tf2Var;
    }

    public final int f(int i) {
        return g(this.b, r(i));
    }

    public final int g(int[] iArr, int i) {
        if (i >= o()) {
            return this.c.length - this.l;
        }
        int i2 = iArr[(i * 5) + 4];
        return i2 < 0 ? (this.c.length - this.l) + i2 + 1 : i2;
    }

    public final int h(int i) {
        return (this.l * (i < this.k ? 0 : 1)) + i;
    }

    public final void j() {
        dg2 dg2Var;
        boolean z = this.n > 0;
        int i = this.t;
        int i2 = this.f410u;
        int i3 = this.v;
        int iR = r(i3);
        int i4 = this.o;
        int i5 = i - i3;
        int i6 = iR * 5;
        int i7 = i6 + 1;
        boolean z2 = (this.b[i7] & 1073741824) != 0;
        ss1 ss1Var = this.r;
        if (z) {
            tf2 tf2Var = this.s;
            if (tf2Var != null && (dg2Var = (dg2) tf2Var.b(i3)) != null) {
                Object[] objArr = dg2Var.a;
                int i8 = dg2Var.b;
                for (int i9 = 0; i9 < i8; i9++) {
                    F(objArr[i9]);
                }
            }
            int[] iArr = this.b;
            iArr[i6 + 3] = i5;
            wn3.c(iR, i4, iArr);
            int iB = ss1Var.b();
            if (z2) {
                i4 = 1;
            }
            this.o = iB + i4;
            int iE = E(this.b, i3);
            this.v = iE;
            int iP = iE < 0 ? p() : r(iE + 1);
            int iG = iP >= 0 ? g(this.b, iP) : 0;
            this.i = iG;
            this.j = iG;
            return;
        }
        if (i != i2) {
            wb0.a("Expected to be at the end of a group");
        }
        int[] iArr2 = this.b;
        int i10 = i6 + 3;
        int i11 = iArr2[i10];
        int i12 = iArr2[i7] & 67108863;
        iArr2[i10] = i5;
        wn3.c(iR, i4, iArr2);
        int iB2 = this.p.b();
        this.f410u = (o() - this.h) - this.q.b();
        this.v = iB2;
        int iE2 = E(this.b, i3);
        int iB3 = ss1Var.b();
        this.o = iB3;
        if (iE2 == iB2) {
            this.o = iB3 + (z2 ? 0 : i4 - i12);
            return;
        }
        int i13 = i5 - i11;
        int i14 = z2 ? 0 : i4 - i12;
        if (i13 != 0 || i14 != 0) {
            while (iE2 != 0 && iE2 != iB2 && (i14 != 0 || i13 != 0)) {
                int iR2 = r(iE2);
                if (i13 != 0) {
                    int[] iArr3 = this.b;
                    int i15 = (iR2 * 5) + 3;
                    iArr3[i15] = iArr3[i15] + i13;
                }
                if (i14 != 0) {
                    int[] iArr4 = this.b;
                    wn3.c(iR2, (iArr4[(iR2 * 5) + 1] & 67108863) + i14, iArr4);
                }
                int[] iArr5 = this.b;
                if ((iArr5[(iR2 * 5) + 1] & 1073741824) != 0) {
                    i14 = 0;
                }
                iE2 = E(iArr5, iE2);
            }
        }
        this.o += i14;
    }

    public final void k() {
        if (this.n <= 0) {
            ix2.b("Unbalanced begin/end insert");
        }
        int i = this.n - 1;
        this.n = i;
        if (i == 0) {
            if (this.r.b != this.p.b) {
                wb0.a("startGroup/endGroup mismatch while inserting");
            }
            this.f410u = (o() - this.h) - this.q.b();
        }
    }

    public final void l(int i) {
        boolean z = false;
        if (!(this.n <= 0)) {
            wb0.a("Cannot call ensureStarted() while inserting");
        }
        int i2 = this.v;
        if (i2 != i) {
            if (i >= i2 && i < this.f410u) {
                z = true;
            }
            if (!z) {
                wb0.a("Started group at " + i + " must be a subgroup of the group at " + i2);
            }
            int i3 = this.t;
            int i4 = this.i;
            int i5 = this.j;
            this.t = i;
            P();
            this.t = i3;
            this.i = i4;
            this.j = i5;
        }
    }

    public final void m(int i, int i2, int i3) {
        if (i >= this.g) {
            i = -((p() - i) + 2);
        }
        while (i3 < i2) {
            this.b[(r(i3) * 5) + 2] = i;
            int i4 = this.b[(r(i3) * 5) + 3] + i3;
            m(i3, i4, i3 + 1);
            i3 = i4;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x0126, code lost:
    
        defpackage.mk0.h("Index must be between 0 and size");
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x012b, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void n(int r20, defpackage.df1 r21) {
        /*
            Method dump skipped, instruction units count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xn3.n(int, df1):void");
    }

    public final int o() {
        return this.b.length / 5;
    }

    public final int p() {
        return o() - this.h;
    }

    public final Object q(int i) {
        int iR = r(i);
        int[] iArr = this.b;
        int i2 = (iR * 5) + 1;
        if ((iArr[i2] & 268435456) == 0) {
            return rb0.a;
        }
        return this.c[Integer.bitCount(iArr[i2] >> 29) + g(iArr, iR)];
    }

    public final int r(int i) {
        return (this.h * (i < this.g ? 0 : 1)) + i;
    }

    public final int s(int i) {
        return this.b[r(i) * 5];
    }

    public final Object t(int i) {
        int iR = r(i);
        int[] iArr = this.b;
        int i2 = iR * 5;
        int i3 = iArr[i2 + 1];
        if ((536870912 & i3) == 0) {
            return null;
        }
        return this.c[Integer.bitCount(i3 >> 30) + iArr[i2 + 4]];
    }

    public final String toString() {
        int i = this.t;
        int i2 = this.f410u;
        int iP = p();
        int i3 = this.g;
        int i4 = this.h + i3;
        StringBuilder sbV = xw1.v("SlotWriter(current = ", i, " end=", i2, " size = ");
        sbV.append(iP);
        sbV.append(" gap=");
        sbV.append(i3);
        sbV.append("-");
        return xw1.p(i4, ")", sbV);
    }

    public final int u(int i) {
        return this.b[(r(i) * 5) + 3];
    }

    public final boolean v(int i, int i2) {
        int iO;
        int iU;
        if (i2 == this.v) {
            iO = this.f410u;
        } else {
            ss1 ss1Var = this.p;
            if (i2 > ss1Var.a(0)) {
                iU = u(i2);
            } else {
                int[] iArr = ss1Var.a;
                int iMin = Math.min(iArr.length, ss1Var.b);
                int i3 = 0;
                while (true) {
                    if (i3 >= iMin) {
                        i3 = -1;
                        break;
                    }
                    if (iArr[i3] == i2) {
                        break;
                    }
                    i3++;
                }
                if (i3 < 0) {
                    iU = u(i2);
                } else {
                    iO = (o() - this.h) - this.q.a[i3];
                }
            }
            iO = iU + i2;
        }
        return i > i2 && i < iO;
    }

    public final void w(int i) {
        if (i > 0) {
            int i2 = this.t;
            B(i2);
            int i3 = this.g;
            int i4 = this.h;
            int[] iArr = this.b;
            int length = iArr.length / 5;
            int i5 = length - i4;
            if (i4 < i) {
                int iMax = Math.max(Math.max(length * 2, i5 + i), 32);
                int[] iArr2 = new int[iMax * 5];
                int i6 = iMax - i5;
                ji.N(0, 0, i3 * 5, iArr, iArr2);
                ji.N((i3 + i6) * 5, (i4 + i3) * 5, length * 5, iArr, iArr2);
                this.b = iArr2;
                i4 = i6;
            }
            int i7 = this.f410u;
            if (i7 >= i3) {
                this.f410u = i7 + i;
            }
            int i8 = i3 + i;
            this.g = i8;
            this.h = i4 - i;
            int i9 = i(i5 > 0 ? f(i2 + i) : 0, this.m >= i3 ? this.k : 0, this.l, this.c.length);
            for (int i10 = i3; i10 < i8; i10++) {
                this.b[(i10 * 5) + 4] = i9;
            }
            int i11 = this.m;
            if (i11 >= i3) {
                this.m = i11 + i;
            }
        }
    }

    public final void x(int i, int i2) {
        if (i > 0) {
            C(this.i, i2);
            int i3 = this.k;
            int i4 = this.l;
            if (i4 < i) {
                Object[] objArr = this.c;
                int length = objArr.length;
                int i5 = length - i4;
                int iMax = Math.max(Math.max(length * 2, i5 + i), 32);
                Object[] objArr2 = new Object[iMax];
                for (int i6 = 0; i6 < iMax; i6++) {
                    objArr2[i6] = null;
                }
                int i7 = iMax - i5;
                int i8 = i4 + i3;
                System.arraycopy(objArr, 0, objArr2, 0, i3);
                System.arraycopy(objArr, i8, objArr2, i3 + i7, length - i8);
                this.c = objArr2;
                i4 = i7;
            }
            int i9 = this.j;
            if (i9 >= i3) {
                this.j = i9 + i;
            }
            this.k = i3 + i;
            this.l = i4 - i;
        }
    }

    public final boolean y(int i) {
        return (this.b[(r(i) * 5) + 1] & 1073741824) != 0;
    }
}
