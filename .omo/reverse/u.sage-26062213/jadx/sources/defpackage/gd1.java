package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gd1 implements fd1 {
    public final int a;
    public final /* synthetic */ hd1 b;

    public gd1(hd1 hd1Var, int i) {
        this.b = hd1Var;
        this.a = i;
    }

    @Override // defpackage.fd1
    public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
        hd1 hd1Var = this.b;
        lc1 lc1Var = hd1Var.w;
        int i = this.a;
        if (lc1Var == null || i >= 0 || !lc1Var.getChildFragmentManager().N(-1, 0)) {
            return hd1Var.O(arrayList, arrayList2, i, 1);
        }
        return false;
    }
}
