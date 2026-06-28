package defpackage;

import android.os.Build;
import android.view.View;
import android.view.Window;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class uy0 extends zy0 {
    @Override // defpackage.zy0
    public void b(ov3 ov3Var, ov3 ov3Var2, Window window, View view, boolean z, boolean z2) {
        ov3Var.getClass();
        ov3Var2.getClass();
        window.getClass();
        view.getClass();
        k75.M(window, false);
        window.setStatusBarColor(z ? ov3Var.b : ov3Var.a);
        window.setNavigationBarColor(z2 ? ov3Var2.b : ov3Var2.a);
        int i = Build.VERSION.SDK_INT;
        pe4 oe4Var = i >= 35 ? new oe4(window) : i >= 30 ? new ne4(window) : i >= 26 ? new me4(window) : new le4(window);
        oe4Var.b(!z);
        oe4Var.a(!z2);
    }
}
