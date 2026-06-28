package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tb0 {
    public final ag1 a;
    public k30 b;
    public boolean c;
    public int f;
    public int g;
    public int l;
    public final ss1 d = new ss1();
    public boolean e = true;
    public final ArrayList h = new ArrayList();
    public int i = -1;
    public int j = -1;
    public int k = -1;

    public tb0(ag1 ag1Var, k30 k30Var) {
        this.a = ag1Var;
        this.b = k30Var;
    }

    public final void a() {
        c();
        ArrayList arrayList = this.h;
        if (arrayList.isEmpty()) {
            this.g++;
        } else {
            arrayList.remove(arrayList.size() - 1);
        }
    }

    public final void b() {
        int i = this.g;
        if (i > 0) {
            br2 br2Var = this.b.a;
            br2Var.S0(xq2.c);
            br2Var.i[br2Var.j - br2Var.g[br2Var.h - 1].a] = i;
            this.g = 0;
        }
        ArrayList arrayList = this.h;
        if (arrayList.isEmpty()) {
            return;
        }
        k30 k30Var = this.b;
        int size = arrayList.size();
        Object[] objArr = new Object[size];
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i2] = arrayList.get(i2);
        }
        k30Var.getClass();
        if (size != 0) {
            br2 br2Var2 = k30Var.a;
            br2Var2.S0(yp2.c);
            is0.X(br2Var2, 0, objArr);
        }
        arrayList.clear();
    }

    public final void c() {
        int i = this.l;
        if (i > 0) {
            int i2 = this.i;
            if (i2 >= 0) {
                b();
                br2 br2Var = this.b.a;
                br2Var.S0(nq2.c);
                int i3 = br2Var.j - br2Var.g[br2Var.h - 1].a;
                int[] iArr = br2Var.i;
                iArr[i3] = i2;
                iArr[i3 + 1] = i;
                this.i = -1;
            } else {
                int i4 = this.k;
                int i5 = this.j;
                b();
                br2 br2Var2 = this.b.a;
                br2Var2.S0(jq2.c);
                int i6 = br2Var2.j - br2Var2.g[br2Var2.h - 1].a;
                int[] iArr2 = br2Var2.i;
                iArr2[i6 + 1] = i4;
                iArr2[i6] = i5;
                iArr2[i6 + 2] = i;
                this.j = -1;
                this.k = -1;
            }
            this.l = 0;
        }
    }

    public final void d(boolean z) {
        tn3 tn3Var = this.a.G;
        int i = z ? tn3Var.i : tn3Var.g;
        int i2 = i - this.f;
        if (i2 < 0) {
            wb0.a("Tried to seek backward");
        }
        if (i2 > 0) {
            br2 br2Var = this.b.a;
            br2Var.S0(rp2.c);
            br2Var.i[br2Var.j - br2Var.g[br2Var.h - 1].a] = i2;
            this.f = i;
        }
    }

    public final void e(int i, int i2) {
        if (i2 > 0) {
            if (!(i >= 0)) {
                wb0.a("Invalid remove index " + i);
            }
            if (this.i == i) {
                this.l += i2;
                return;
            }
            c();
            this.i = i;
            this.l = i2;
        }
    }
}
