package defpackage;

import android.os.Bundle;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pi2 implements Comparable {
    public final qi2 n;
    public final Bundle o;
    public final boolean p;
    public final int q;
    public final boolean r;

    public pi2(qi2 qi2Var, Bundle bundle, boolean z, int i, boolean z2) {
        this.n = qi2Var;
        this.o = bundle;
        this.p = z;
        this.q = i;
        this.r = z2;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final int compareTo(pi2 pi2Var) {
        pi2Var.getClass();
        boolean z = pi2Var.r;
        boolean z2 = pi2Var.p;
        Bundle bundle = pi2Var.o;
        boolean z3 = this.p;
        if (z3 && !z2) {
            return 1;
        }
        if (!z3 && z2) {
            return -1;
        }
        int i = this.q - pi2Var.q;
        if (i > 0) {
            return 1;
        }
        if (i < 0) {
            return -1;
        }
        Bundle bundle2 = this.o;
        if (bundle2 != null && bundle == null) {
            return 1;
        }
        if (bundle2 == null && bundle != null) {
            return -1;
        }
        if (bundle2 != null) {
            int size = bundle2.size();
            bundle.getClass();
            int size2 = size - bundle.size();
            if (size2 > 0) {
                return 1;
            }
            if (size2 < 0) {
                return -1;
            }
        }
        boolean z4 = this.r;
        if (!z4 || z) {
            return (z4 || !z) ? 0 : -1;
        }
        return 1;
    }
}
