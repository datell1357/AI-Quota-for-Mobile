package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.TypedValue;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o73 {
    public static o73 g;
    public WeakHashMap a;
    public final WeakHashMap b = new WeakHashMap(0);
    public TypedValue c;
    public boolean d;
    public hg e;
    public static final PorterDuff.Mode f = PorterDuff.Mode.SRC_IN;
    public static final n73 h = new n73(6);

    public static synchronized o73 b() {
        try {
            if (g == null) {
                g = new o73();
            }
        } catch (Throwable th) {
            throw th;
        }
        return g;
    }

    public static synchronized PorterDuffColorFilter e(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        n73 n73Var = h;
        n73Var.getClass();
        int i2 = (31 + i) * 31;
        porterDuffColorFilter = (PorterDuffColorFilter) n73Var.b(Integer.valueOf(mode.hashCode() + i2));
        if (porterDuffColorFilter == null) {
            porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
        }
        return porterDuffColorFilter;
    }

    public final Drawable a(Context context, int i) {
        LayerDrawable layerDrawableP;
        WeakReference weakReference;
        Drawable drawableNewDrawable;
        if (this.c == null) {
            this.c = new TypedValue();
        }
        TypedValue typedValue = this.c;
        context.getResources().getValue(i, typedValue, true);
        long j = (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
        synchronized (this) {
            e82 e82Var = (e82) this.b.get(context);
            layerDrawableP = null;
            if (e82Var != null && (weakReference = (WeakReference) e82Var.a(j)) != null) {
                Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
                if (constantState != null) {
                    drawableNewDrawable = constantState.newDrawable(context.getResources());
                } else {
                    e82Var.d(j);
                }
            }
            drawableNewDrawable = null;
        }
        if (drawableNewDrawable != null) {
            return drawableNewDrawable;
        }
        if (this.e != null) {
            if (i == R.drawable.abc_cab_background_top_material) {
                layerDrawableP = new LayerDrawable(new Drawable[]{c(context, R.drawable.abc_cab_background_internal_bg), c(context, 2131230737)});
            } else if (i == R.drawable.abc_ratingbar_material) {
                layerDrawableP = hg.p(this, context, R.dimen.abc_star_big);
            } else if (i == R.drawable.abc_ratingbar_indicator_material) {
                layerDrawableP = hg.p(this, context, R.dimen.abc_star_medium);
            } else if (i == R.drawable.abc_ratingbar_small_material) {
                layerDrawableP = hg.p(this, context, R.dimen.abc_star_small);
            }
        }
        if (layerDrawableP == null) {
            return layerDrawableP;
        }
        layerDrawableP.setChangingConfigurations(typedValue.changingConfigurations);
        synchronized (this) {
            try {
                Drawable.ConstantState constantState2 = layerDrawableP.getConstantState();
                if (constantState2 == null) {
                    return layerDrawableP;
                }
                e82 e82Var2 = (e82) this.b.get(context);
                if (e82Var2 == null) {
                    e82Var2 = new e82();
                    this.b.put(context, e82Var2);
                }
                e82Var2.c(j, new WeakReference(constantState2));
                return layerDrawableP;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized Drawable c(Context context, int i) {
        return d(context, i);
    }

    public final synchronized Drawable d(Context context, int i) {
        Drawable drawableA;
        try {
            if (!this.d) {
                this.d = true;
                Drawable drawableC = c(context, R.drawable.abc_vector_test);
                if (drawableC == null || !"android.graphics.drawable.VectorDrawable".equals(drawableC.getClass().getName())) {
                    this.d = false;
                    throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
                }
            }
            drawableA = a(context, i);
            if (drawableA == null) {
                drawableA = context.getDrawable(i);
            }
            if (drawableA != null) {
                drawableA = g(context, i, drawableA);
            }
            if (drawableA != null) {
                sx0.a(drawableA);
            }
        } catch (Throwable th) {
            throw th;
        }
        return drawableA;
    }

    public final synchronized ColorStateList f(Context context, int i) {
        ColorStateList colorStateList;
        mq3 mq3Var;
        WeakHashMap weakHashMap = this.a;
        ColorStateList colorStateListQ = null;
        colorStateList = (weakHashMap == null || (mq3Var = (mq3) weakHashMap.get(context)) == null) ? null : (ColorStateList) mq3Var.c(i);
        if (colorStateList == null) {
            hg hgVar = this.e;
            if (hgVar != null) {
                colorStateListQ = hgVar.q(context, i);
            }
            if (colorStateListQ != null) {
                if (this.a == null) {
                    this.a = new WeakHashMap();
                }
                mq3 mq3Var2 = (mq3) this.a.get(context);
                if (mq3Var2 == null) {
                    mq3Var2 = new mq3(0);
                    this.a.put(context, mq3Var2);
                }
                mq3Var2.a(i, colorStateListQ);
            }
            colorStateList = colorStateListQ;
        }
        return colorStateList;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.drawable.Drawable g(android.content.Context r7, int r8, android.graphics.drawable.Drawable r9) {
        /*
            Method dump skipped, instruction units count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.o73.g(android.content.Context, int, android.graphics.drawable.Drawable):android.graphics.drawable.Drawable");
    }
}
