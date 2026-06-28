package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class g12 {
    public final int a;
    public final List b;
    public final boolean c;
    public final aw d;
    public final bw e;
    public final hy1 f;
    public final int g;
    public final long h;
    public final Object i;
    public final Object j;
    public final dh k;
    public int l;
    public final int m;
    public final int n;
    public final int o;
    public final int p;
    public final int q;
    public final int r;
    public boolean s;
    public int t = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int[] f103u;

    public g12(int i, List list, boolean z, aw awVar, bw bwVar, hy1 hy1Var, int i2, int i3, int i4, long j, Object obj, Object obj2, dh dhVar, long j2) {
        this.a = i;
        this.b = list;
        this.c = z;
        this.d = awVar;
        this.e = bwVar;
        this.f = hy1Var;
        this.g = i4;
        this.h = j;
        this.i = obj;
        this.j = obj2;
        this.k = dhVar;
        int size = list.size();
        int i5 = 0;
        int iMax = 0;
        for (int i6 = 0; i6 < size; i6++) {
            dv2 dv2Var = (dv2) list.get(i6);
            boolean z2 = this.c;
            i5 += z2 ? dv2Var.o : dv2Var.n;
            iMax = Math.max(iMax, !z2 ? dv2Var.o : dv2Var.n);
        }
        this.m = i5;
        this.r = iMax;
        this.f103u = new int[this.b.size() * 2];
        if (this.c) {
            this.q = this.g;
            this.o = i5;
            this.n = iMax;
            this.p = 0;
            return;
        }
        this.q = 0;
        this.o = iMax;
        this.n = i5;
        this.p = this.g;
    }

    public final int a() {
        int i;
        int i2;
        if (this.c) {
            i = this.o;
            i2 = this.q;
        } else {
            i = this.n;
            i2 = this.p;
        }
        int i3 = i + i2;
        if (i3 < 0) {
            return 0;
        }
        return i3;
    }

    public final long b(int i) {
        if (i == 0 && this.b.size() == 0) {
            int i2 = this.l;
            return this.c ? ((long) i2) & 4294967295L : ((long) i2) << 32;
        }
        int i3 = i * 2;
        int[] iArr = this.f103u;
        return (((long) iArr[i3 + 1]) & 4294967295L) | (((long) iArr[i3]) << 32);
    }

    public final void c(cv2 cv2Var) {
        do2 do2Var = do2.x;
        if (this.t == Integer.MIN_VALUE) {
            dr1.a("position() should be called first");
        }
        List list = this.b;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            dv2 dv2Var = (dv2) list.get(i);
            boolean z = this.c;
            if (z) {
                int i2 = dv2Var.o;
            } else {
                int i3 = dv2Var.n;
            }
            long jB = b(i);
            di0.D(((kg2) this.k.a).g(this.i));
            long jC = js1.c(jB, this.h);
            if (z) {
                int i4 = ev2.b;
                cv2Var.getClass();
                cv2.a(cv2Var, dv2Var);
                dv2Var.d0(js1.c(jC, dv2Var.r), 0.0f, do2Var);
            } else {
                int i5 = ev2.b;
                if (cv2Var.e() == hy1.n || cv2Var.g() == 0) {
                    cv2.a(cv2Var, dv2Var);
                    dv2Var.d0(js1.c(jC, dv2Var.r), 0.0f, do2Var);
                } else {
                    long jG = ((long) ((cv2Var.g() - dv2Var.n) - ((int) (jC >> 32)))) << 32;
                    cv2.a(cv2Var, dv2Var);
                    dv2Var.d0(js1.c((((long) ((int) (jC & 4294967295L))) & 4294967295L) | jG, dv2Var.r), 0.0f, do2Var);
                }
            }
        }
    }

    public final void d(int i, int i2, int i3) {
        int i4;
        this.l = i;
        boolean z = this.c;
        this.t = z ? i3 : i2;
        List list = this.b;
        int size = list.size();
        for (int i5 = 0; i5 < size; i5++) {
            dv2 dv2Var = (dv2) list.get(i5);
            int i6 = i5 * 2;
            int[] iArr = this.f103u;
            if (z) {
                aw awVar = this.d;
                if (awVar == null) {
                    dr1.b("null horizontalAlignment when isVertical == true");
                    p61.q();
                    return;
                } else {
                    iArr[i6] = awVar.a(dv2Var.n, i2, this.f);
                    iArr[i6 + 1] = i;
                    i4 = dv2Var.o;
                }
            } else {
                iArr[i6] = i;
                int i7 = i6 + 1;
                bw bwVar = this.e;
                if (bwVar == null) {
                    dr1.b("null verticalAlignment when isVertical == false");
                    p61.q();
                    return;
                } else {
                    iArr[i7] = bwVar.a(dv2Var.o, i3);
                    i4 = dv2Var.n;
                }
            }
            i += i4;
        }
    }
}
