package defpackage;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.lang.reflect.Field;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class eb4 implements View.OnApplyWindowInsetsListener {
    public ke4 a = null;
    public final /* synthetic */ View b;
    public final /* synthetic */ lo2 c;

    public eb4(View view, lo2 lo2Var) {
        this.b = view;
        this.c = lo2Var;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        ke4 ke4VarC = ke4.c(view, windowInsets);
        int i = Build.VERSION.SDK_INT;
        lo2 lo2Var = this.c;
        if (i < 30) {
            fb4.a(windowInsets, this.b);
            if (ke4VarC.equals(this.a)) {
                return lo2Var.g(view, ke4VarC).b();
            }
        }
        this.a = ke4VarC;
        ke4 ke4VarG = lo2Var.g(view, ke4VarC);
        if (i >= 30) {
            return ke4VarG.b();
        }
        Field field = lb4.a;
        view.requestApplyInsets();
        return ke4VarG.b();
    }
}
