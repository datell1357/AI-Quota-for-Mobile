package defpackage;

import android.view.View;
import android.view.WindowInsets;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class gb4 {
    public static ke4 a(View view) {
        WindowInsets rootWindowInsets = view.getRootWindowInsets();
        if (rootWindowInsets == null) {
            return null;
        }
        ke4 ke4VarC = ke4.c(null, rootWindowInsets);
        he4 he4Var = ke4VarC.a;
        he4Var.y(ke4VarC);
        View rootView = view.getRootView();
        he4Var.d(rootView);
        he4Var.p(rootView);
        he4Var.q();
        return ke4VarC;
    }
}
