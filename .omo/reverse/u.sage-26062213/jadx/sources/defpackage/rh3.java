package defpackage;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class rh3 {
    public static final Comparator[] a;
    public static final kh3 b;

    static {
        Comparator[] comparatorArr = new Comparator[2];
        int i = 0;
        while (i < 2) {
            comparatorArr[i] = new qh3(new qh3(i == 0 ? lh0.s : lh0.q), 1);
            i++;
        }
        a = comparatorArr;
        b = kh3.x;
    }

    public static final void a(gh3 gh3Var, ArrayList arrayList, c8 c8Var, c8 c8Var2, tf2 tf2Var) {
        bh3 bh3Var = gh3Var.d;
        Object objG = bh3Var.n.g(lh3.n);
        if (objG == null) {
            objG = Boolean.FALSE;
        }
        boolean zBooleanValue = ((Boolean) objG).booleanValue();
        if ((zBooleanValue || ((Boolean) c8Var2.k(gh3Var)).booleanValue()) && ((Boolean) c8Var.k(gh3Var)).booleanValue()) {
            arrayList.add(gh3Var);
        }
        if (zBooleanValue) {
            tf2Var.h(gh3Var.f, b(gh3Var, c8Var, c8Var2, gh3.j(7, gh3Var)));
            return;
        }
        List listJ = gh3.j(7, gh3Var);
        int size = listJ.size();
        for (int i = 0; i < size; i++) {
            a((gh3) listJ.get(i), arrayList, c8Var, c8Var2, tf2Var);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00d5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.util.ArrayList b(defpackage.gh3 r17, defpackage.c8 r18, defpackage.c8 r19, java.util.List r20) {
        /*
            Method dump skipped, instruction units count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rh3.b(gh3, c8, c8, java.util.List):java.util.ArrayList");
    }
}
