package defpackage;

import android.R;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class v90 {
    public static final ViewGroup.LayoutParams a = new ViewGroup.LayoutParams(-2, -2);

    public static void a(u90 u90Var, ka0 ka0Var) {
        View childAt = ((ViewGroup) u90Var.getWindow().getDecorView().findViewById(R.id.content)).getChildAt(0);
        mb0 mb0Var = childAt instanceof mb0 ? (mb0) childAt : null;
        if (mb0Var != null) {
            mb0Var.setParentCompositionContext(null);
            mb0Var.setContent(ka0Var);
            return;
        }
        mb0 mb0Var2 = new mb0(u90Var);
        mb0Var2.setParentCompositionContext(null);
        mb0Var2.setContent(ka0Var);
        View decorView = u90Var.getWindow().getDecorView();
        if (on4.u(decorView) == null) {
            decorView.setTag(u.sage.R.id.view_tree_lifecycle_owner, u90Var);
        }
        if (kt4.y(decorView) == null) {
            decorView.setTag(u.sage.R.id.view_tree_view_model_store_owner, u90Var);
        }
        if (ht4.r(decorView) == null) {
            decorView.setTag(u.sage.R.id.view_tree_saved_state_registry_owner, u90Var);
        }
        u90Var.setContentView(mb0Var2, a);
    }
}
