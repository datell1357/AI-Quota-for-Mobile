package defpackage;

import android.util.SparseArray;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zc2 {
    public final SparseArray a;
    public z44 b;

    public zc2(int i) {
        this.a = new SparseArray(i);
    }

    public final void a(z44 z44Var, int i, int i2) {
        int iA = z44Var.a(i);
        SparseArray sparseArray = this.a;
        zc2 zc2Var = sparseArray == null ? null : (zc2) sparseArray.get(iA);
        if (zc2Var == null) {
            zc2Var = new zc2(1);
            sparseArray.put(z44Var.a(i), zc2Var);
        }
        if (i2 > i) {
            zc2Var.a(z44Var, i + 1, i2);
        } else {
            zc2Var.b = z44Var;
        }
    }
}
