package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.PathInterpolator;
import java.util.List;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ld4 extends pd4 {
    public static final PathInterpolator e = new PathInterpolator(0.0f, 1.1f, 0.0f, 1.0f);
    public static final r41 f = new r41();
    public static final DecelerateInterpolator g = new DecelerateInterpolator(1.5f);
    public static final AccelerateInterpolator h = new AccelerateInterpolator(1.5f);

    public static void e(qd4 qd4Var, View view) {
        b70 b70VarJ = j(view);
        if (b70VarJ != null) {
            b70VarJ.k(qd4Var);
            if (b70VarJ.n == 0) {
                return;
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                e(qd4Var, viewGroup.getChildAt(i));
            }
        }
    }

    public static void f(View view, qd4 qd4Var, ke4 ke4Var, boolean z) {
        b70 b70VarJ = j(view);
        if (b70VarJ != null) {
            b70VarJ.o = ke4Var;
            if (!z) {
                b70VarJ.l(qd4Var);
                z = b70VarJ.n == 0;
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                f(viewGroup.getChildAt(i), qd4Var, ke4Var, z);
            }
        }
    }

    public static void g(View view, ke4 ke4Var, List list) {
        b70 b70VarJ = j(view);
        if (b70VarJ != null) {
            ke4Var = b70VarJ.m(ke4Var, list);
            if (b70VarJ.n == 0) {
                return;
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                g(viewGroup.getChildAt(i), ke4Var, list);
            }
        }
    }

    public static void h(View view, qd4 qd4Var, pc4 pc4Var) {
        b70 b70VarJ = j(view);
        if (b70VarJ != null) {
            b70VarJ.n(qd4Var, pc4Var);
            if (b70VarJ.n == 0) {
                return;
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                h(viewGroup.getChildAt(i), qd4Var, pc4Var);
            }
        }
    }

    public static WindowInsets i(View view, WindowInsets windowInsets) {
        return view.getTag(R.id.tag_on_apply_window_listener) != null ? windowInsets : view.onApplyWindowInsets(windowInsets);
    }

    public static b70 j(View view) {
        Object tag = view.getTag(R.id.tag_window_insets_animation_callback);
        if (tag instanceof kd4) {
            return ((kd4) tag).a;
        }
        return null;
    }
}
