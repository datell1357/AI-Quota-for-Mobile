package defpackage;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yy0 extends xy0 {
    @Override // defpackage.wy0, defpackage.uy0, defpackage.zy0
    public void b(ov3 ov3Var, ov3 ov3Var2, Window window, View view, boolean z, boolean z2) {
        ov3Var.getClass();
        ov3Var2.getClass();
        window.getClass();
        view.getClass();
        k75.M(window, false);
        window.setStatusBarColor(0);
        window.setNavigationBarColor(0);
        ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
        if (viewGroup != null) {
            int i = 0;
            while (true) {
                if (!(i < viewGroup.getChildCount())) {
                    break;
                }
                int i2 = i + 1;
                View childAt = viewGroup.getChildAt(i);
                if (childAt == null) {
                    throw new IndexOutOfBoundsException();
                }
                Object tag = childAt.getTag();
                if (tag instanceof List) {
                    List list = (List) tag;
                    if (list.size() == 4 && (list.get(0) instanceof x70)) {
                        Iterator it = ((Iterable) tag).iterator();
                        while (it.hasNext()) {
                            it.next();
                        }
                    }
                }
                i = i2;
            }
        }
        window.setNavigationBarContrastEnforced(true);
        int i3 = Build.VERSION.SDK_INT;
        pe4 oe4Var = i3 >= 35 ? new oe4(window) : i3 >= 30 ? new ne4(window) : i3 >= 26 ? new me4(window) : new le4(window);
        oe4Var.b(!z);
        oe4Var.a(true ^ z2);
    }
}
