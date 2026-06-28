package defpackage;

import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class ne4 extends pe4 {
    public final WindowInsetsController a;
    public final Window b;

    public ne4(Window window) {
        this.a = window.getInsetsController();
        this.b = window;
    }

    @Override // defpackage.pe4
    public void a(boolean z) {
        f(16, z, 16);
    }

    @Override // defpackage.pe4
    public void b(boolean z) {
        f(8192, z, 8);
    }

    public final void f(int i, boolean z, int i2) {
        Window window = this.b;
        if (window == null) {
            WindowInsetsController windowInsetsController = this.a;
            if (z) {
                windowInsetsController.setSystemBarsAppearance(i2, i2);
                return;
            } else {
                windowInsetsController.setSystemBarsAppearance(0, i2);
                return;
            }
        }
        if (z) {
            View decorView = window.getDecorView();
            decorView.setSystemUiVisibility(i | decorView.getSystemUiVisibility());
        } else {
            View decorView2 = window.getDecorView();
            decorView2.setSystemUiVisibility((~i) & decorView2.getSystemUiVisibility());
        }
    }
}
