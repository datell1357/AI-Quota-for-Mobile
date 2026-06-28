package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ig {
    public static final PorterDuff.Mode b = PorterDuff.Mode.SRC_IN;
    public static ig c;
    public o73 a;

    public static synchronized void b() {
        if (c == null) {
            ig igVar = new ig();
            c = igVar;
            igVar.a = o73.b();
            o73 o73Var = c.a;
            hg hgVar = new hg(0);
            synchronized (o73Var) {
                o73Var.e = hgVar;
            }
        }
    }

    public static void c(Drawable drawable, me0 me0Var, int[] iArr) {
        PorterDuff.Mode mode = o73.f;
        int[] state = drawable.getState();
        if (drawable.mutate() != drawable) {
            Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
            drawable.setState(new int[0]);
            drawable.setState(state);
        }
        boolean z = me0Var.b;
        if (!z && !me0Var.a) {
            drawable.clearColorFilter();
            return;
        }
        PorterDuffColorFilter porterDuffColorFilterE = null;
        ColorStateList colorStateList = z ? (ColorStateList) me0Var.c : null;
        PorterDuff.Mode mode2 = me0Var.a ? (PorterDuff.Mode) me0Var.d : o73.f;
        if (colorStateList != null && mode2 != null) {
            porterDuffColorFilterE = o73.e(colorStateList.getColorForState(iArr, 0), mode2);
        }
        drawable.setColorFilter(porterDuffColorFilterE);
    }

    public final synchronized Drawable a(Context context, int i) {
        return this.a.c(context, i);
    }
}
