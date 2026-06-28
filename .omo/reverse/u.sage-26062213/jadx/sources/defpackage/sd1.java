package defpackage;

import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class sd1 {
    public static final rd1 a = rd1.a;

    public static rd1 a(lc1 lc1Var) {
        while (lc1Var != null) {
            if (lc1Var.isAdded()) {
                lc1Var.getParentFragmentManager().getClass();
            }
            lc1Var = lc1Var.getParentFragment();
        }
        return a;
    }

    public static void b(hc4 hc4Var) {
        if (hd1.G(3)) {
            Log.d("FragmentManager", "StrictMode violation in ".concat(hc4Var.n.getClass().getName()), hc4Var);
        }
    }

    public static final void c(lc1 lc1Var, String str) {
        str.getClass();
        b(new nd1(lc1Var, "Attempting to reuse fragment " + lc1Var + " with previous ID " + str));
        a(lc1Var).getClass();
    }
}
