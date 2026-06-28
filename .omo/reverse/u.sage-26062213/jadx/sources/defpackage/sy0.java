package defpackage;

import android.graphics.Color;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class sy0 {
    public static final int a = Color.argb(230, 255, 255, 255);
    public static final int b = Color.argb(128, 27, 27, 27);
    public static zy0 c;

    public static void a(u90 u90Var) {
        int i = 0;
        ov3 ov3Var = new ov3(0, 0, new jd3(12));
        ov3 ov3Var2 = new ov3(a, b, new jd3(12));
        View decorView = u90Var.getWindow().getDecorView();
        decorView.getClass();
        zy0 yy0Var = c;
        if (yy0Var == null) {
            int i2 = Build.VERSION.SDK_INT;
            yy0Var = i2 >= 35 ? new yy0() : i2 >= 30 ? new xy0() : i2 >= 29 ? new wy0() : i2 >= 28 ? new vy0() : i2 >= 26 ? new uy0() : new ty0();
            c = yy0Var;
        }
        zy0 zy0Var = yy0Var;
        mv mvVar = new mv(zy0Var, ov3Var, ov3Var2, u90Var, decorView, 1);
        ViewGroup viewGroup = (ViewGroup) decorView;
        while (true) {
            if (i >= viewGroup.getChildCount()) {
                ry0 ry0Var = new ry0(mvVar, viewGroup.getContext());
                ry0Var.setTag(zy0Var);
                ry0Var.setVisibility(8);
                ry0Var.setWillNotDraw(true);
                viewGroup.addView(ry0Var);
                break;
            }
            int i3 = i + 1;
            View childAt = viewGroup.getChildAt(i);
            if (childAt == null) {
                throw new IndexOutOfBoundsException();
            }
            if (childAt.getTag() instanceof zy0) {
                break;
            } else {
                i = i3;
            }
        }
        mvVar.run();
        Window window = u90Var.getWindow();
        window.getClass();
        zy0Var.a(window);
    }
}
