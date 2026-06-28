package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dg1 {
    public final ArrayList a;
    public final int b;
    public int c;
    public final ArrayList d;
    public final tf2 e;
    public final nv3 f;

    public dg1(int i, ArrayList arrayList) {
        this.a = arrayList;
        this.b = i;
        if (i < 0) {
            ix2.a("Invalid start index");
        }
        this.d = new ArrayList();
        tf2 tf2Var = new tf2();
        int size = arrayList.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            ox1 ox1Var = (ox1) this.a.get(i3);
            int i4 = ox1Var.c;
            int i5 = ox1Var.d;
            tf2Var.h(i4, new mi1(i3, i2, i5));
            i2 += i5;
        }
        this.e = tf2Var;
        this.f = new nv3(new fq0(1, this));
    }

    public final boolean a(int i, int i2) {
        mi1 mi1Var;
        int i3;
        int i4;
        tf2 tf2Var = this.e;
        mi1 mi1Var2 = (mi1) tf2Var.b(i);
        if (mi1Var2 == null) {
            return false;
        }
        int i5 = mi1Var2.b;
        int i6 = i2 - mi1Var2.c;
        mi1Var2.c = i2;
        if (i6 == 0) {
            return true;
        }
        Object[] objArr = tf2Var.c;
        long[] jArr = tf2Var.a;
        int length = jArr.length - 2;
        if (length < 0) {
            return true;
        }
        int i7 = 0;
        while (true) {
            long j = jArr[i7];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i8 = 8 - ((~(i7 - length)) >>> 31);
                for (int i9 = 0; i9 < i8; i9++) {
                    if ((255 & j) < 128 && (i3 = (mi1Var = (mi1) objArr[(i7 << 3) + i9]).b) >= i5 && mi1Var != mi1Var2 && (i4 = i3 + i6) >= 0) {
                        mi1Var.b = i4;
                    }
                    j >>= 8;
                }
                if (i8 != 8) {
                    return true;
                }
            }
            if (i7 == length) {
                return true;
            }
            i7++;
        }
    }
}
