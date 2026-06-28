package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.TextView;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tg {
    public final TextView a;
    public me0 b;
    public me0 c;
    public me0 d;
    public me0 e;
    public me0 f;
    public me0 g;
    public me0 h;
    public final ch i;
    public int j = 0;
    public int k = -1;
    public Typeface l;
    public boolean m;

    public tg(TextView textView) {
        this.a = textView;
        this.i = new ch(textView);
    }

    public static me0 c(Context context, ig igVar, int i) {
        ColorStateList colorStateListF;
        synchronized (igVar) {
            colorStateListF = igVar.a.f(context, i);
        }
        if (colorStateListF == null) {
            return null;
        }
        me0 me0Var = new me0();
        me0Var.b = true;
        me0Var.c = colorStateListF;
        return me0Var;
    }

    public final void a(Drawable drawable, me0 me0Var) {
        if (drawable == null || me0Var == null) {
            return;
        }
        ig.c(drawable, me0Var, this.a.getDrawableState());
    }

    public final void b() {
        me0 me0Var = this.b;
        TextView textView = this.a;
        if (me0Var != null || this.c != null || this.d != null || this.e != null) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            a(compoundDrawables[0], this.b);
            a(compoundDrawables[1], this.c);
            a(compoundDrawables[2], this.d);
            a(compoundDrawables[3], this.e);
        }
        if (this.f == null && this.g == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
        a(compoundDrawablesRelative[0], this.f);
        a(compoundDrawablesRelative[2], this.g);
    }

    /* JADX WARN: Removed duplicated region for block: B:235:0x03b6  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x03bb  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x03c2  */
    /* JADX WARN: Removed duplicated region for block: B:254:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d(android.util.AttributeSet r27, int r28) {
        /*
            Method dump skipped, instruction units count: 1001
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.tg.d(android.util.AttributeSet, int):void");
    }

    public final void e(Context context, int i) {
        String string;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, i13.q);
        ui3 ui3Var = new ui3(context, typedArrayObtainStyledAttributes);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(14);
        TextView textView = this.a;
        if (zHasValue) {
            textView.setAllCaps(typedArrayObtainStyledAttributes.getBoolean(14, false));
        }
        if (typedArrayObtainStyledAttributes.hasValue(0) && typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        f(context, ui3Var);
        if (Build.VERSION.SDK_INT >= 26 && typedArrayObtainStyledAttributes.hasValue(13) && (string = typedArrayObtainStyledAttributes.getString(13)) != null) {
            rg.d(textView, string);
        }
        ui3Var.j();
        Typeface typeface = this.l;
        if (typeface != null) {
            textView.setTypeface(typeface, this.j);
        }
    }

    public final void f(Context context, ui3 ui3Var) {
        String string;
        int i = this.j;
        TypedArray typedArray = (TypedArray) ui3Var.p;
        this.j = typedArray.getInt(2, i);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            int i3 = typedArray.getInt(11, -1);
            this.k = i3;
            if (i3 != -1) {
                this.j &= 2;
            }
        }
        if (!typedArray.hasValue(10) && !typedArray.hasValue(12)) {
            if (typedArray.hasValue(1)) {
                this.m = false;
                int i4 = typedArray.getInt(1, 1);
                if (i4 == 1) {
                    this.l = Typeface.SANS_SERIF;
                    return;
                } else if (i4 == 2) {
                    this.l = Typeface.SERIF;
                    return;
                } else {
                    if (i4 != 3) {
                        return;
                    }
                    this.l = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.l = null;
        int i5 = typedArray.hasValue(12) ? 12 : 10;
        int i6 = this.k;
        int i7 = this.j;
        if (!context.isRestricted()) {
            try {
                Typeface typefaceF = ui3Var.f(i5, this.j, new og(this, i6, i7, new WeakReference(this.a)));
                if (typefaceF != null) {
                    if (i2 < 28 || this.k == -1) {
                        this.l = typefaceF;
                    } else {
                        this.l = sg.a(Typeface.create(typefaceF, 0), this.k, (this.j & 2) != 0);
                    }
                }
                this.m = this.l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.l != null || (string = typedArray.getString(i5)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 28 || this.k == -1) {
            this.l = Typeface.create(string, this.j);
        } else {
            this.l = sg.a(Typeface.create(string, 0), this.k, (this.j & 2) != 0);
        }
    }
}
