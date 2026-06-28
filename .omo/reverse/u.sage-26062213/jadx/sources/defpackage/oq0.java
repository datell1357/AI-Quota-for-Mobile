package defpackage;

import android.transition.Transition;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class oq0 extends nq0 {
    public final Object c;
    public final boolean d;
    public final Object e;

    public oq0(pq3 pq3Var, s20 s20Var, boolean z, boolean z2) {
        super(pq3Var, s20Var);
        int i = pq3Var.a;
        lc1 lc1Var = pq3Var.c;
        if (i == 2) {
            this.c = z ? lc1Var.getReenterTransition() : lc1Var.getEnterTransition();
            this.d = z ? lc1Var.getAllowReturnTransitionOverlap() : lc1Var.getAllowEnterTransitionOverlap();
        } else {
            this.c = z ? lc1Var.getReturnTransition() : lc1Var.getExitTransition();
            this.d = true;
        }
        if (!z2) {
            this.e = null;
        } else if (z) {
            this.e = lc1Var.getSharedElementReturnTransition();
        } else {
            this.e = lc1Var.getSharedElementEnterTransition();
        }
    }

    public final ae1 l(Object obj) {
        if (obj == null) {
            return null;
        }
        ae1 ae1Var = vd1.a;
        boolean z = obj instanceof Transition;
        if (z) {
            return ae1Var;
        }
        ae1 ae1Var2 = vd1.b;
        if (ae1Var2 != null && z) {
            return ae1Var2;
        }
        StringBuilder sb = new StringBuilder("Transition ");
        sb.append(obj);
        lc1 lc1Var = ((pq3) this.a).c;
        sb.append(" for fragment ");
        sb.append(lc1Var);
        sb.append(" is not a valid framework Transition or AndroidX Transition");
        throw new IllegalArgumentException(sb.toString());
    }
}
