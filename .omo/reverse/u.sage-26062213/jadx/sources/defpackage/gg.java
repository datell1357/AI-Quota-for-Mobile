package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import java.lang.reflect.Field;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gg {
    public int a;
    public Object b;
    public Object c;
    public Object d;
    public Object e;
    public Object f;

    public gg() {
        this.b = new ek1[32];
        this.c = new float[32];
        this.d = new byte[32];
        lg2 lg2Var = ud3.a;
        this.e = new lg2();
        this.f = new lg2();
    }

    public void a() {
        View view = (View) this.b;
        Drawable background = view.getBackground();
        if (background != null) {
            if (((me0) this.d) != null) {
                if (((me0) this.f) == null) {
                    this.f = new me0();
                }
                me0 me0Var = (me0) this.f;
                me0Var.c = null;
                me0Var.b = false;
                me0Var.d = null;
                me0Var.a = false;
                Field field = lb4.a;
                ColorStateList backgroundTintList = view.getBackgroundTintList();
                if (backgroundTintList != null) {
                    me0Var.b = true;
                    me0Var.c = backgroundTintList;
                }
                PorterDuff.Mode backgroundTintMode = view.getBackgroundTintMode();
                if (backgroundTintMode != null) {
                    me0Var.a = true;
                    me0Var.d = backgroundTintMode;
                }
                if (me0Var.b || me0Var.a) {
                    ig.c(background, me0Var, view.getDrawableState());
                    return;
                }
            }
            me0 me0Var2 = (me0) this.e;
            if (me0Var2 != null) {
                ig.c(background, me0Var2, view.getDrawableState());
                return;
            }
            me0 me0Var3 = (me0) this.d;
            if (me0Var3 != null) {
                ig.c(background, me0Var3, view.getDrawableState());
            }
        }
    }

    public void b(AttributeSet attributeSet, int i) {
        ColorStateList colorStateListF;
        View view = (View) this.b;
        Context context = view.getContext();
        int[] iArr = i13.s;
        ui3 ui3VarH = ui3.h(context, attributeSet, iArr, i);
        TypedArray typedArray = (TypedArray) ui3VarH.p;
        View view2 = (View) this.b;
        lb4.d(view2, view2.getContext(), iArr, attributeSet, (TypedArray) ui3VarH.p, i);
        try {
            if (typedArray.hasValue(0)) {
                this.a = typedArray.getResourceId(0, -1);
                ig igVar = (ig) this.c;
                Context context2 = view.getContext();
                int i2 = this.a;
                synchronized (igVar) {
                    colorStateListF = igVar.a.f(context2, i2);
                }
                if (colorStateListF != null) {
                    f(colorStateListF);
                }
            }
            if (typedArray.hasValue(1)) {
                view.setBackgroundTintList(ui3VarH.d(1));
            }
            if (typedArray.hasValue(2)) {
                view.setBackgroundTintMode(sx0.b(typedArray.getInt(2, -1), null));
            }
            ui3VarH.j();
        } catch (Throwable th) {
            ui3VarH.j();
            throw th;
        }
    }

    public pi2 c(String str) {
        oi2 oi2Var;
        str.getClass();
        nv3 nv3Var = (nv3) this.f;
        if (nv3Var == null || (oi2Var = (oi2) nv3Var.getValue()) == null) {
            return null;
        }
        int i = qi2.r;
        Uri uri = Uri.parse("android-app://androidx.navigation/".concat(str));
        uri.getClass();
        Bundle bundleD = oi2Var.d(uri, (LinkedHashMap) this.d);
        if (bundleD == null) {
            return null;
        }
        return new pi2((qi2) this.b, bundleD, oi2Var.l, oi2Var.b(uri), false);
    }

    public void d(int i) {
        ColorStateList colorStateListF;
        this.a = i;
        ig igVar = (ig) this.c;
        if (igVar != null) {
            Context context = ((View) this.b).getContext();
            synchronized (igVar) {
                colorStateListF = igVar.a.f(context, i);
            }
        } else {
            colorStateListF = null;
        }
        f(colorStateListF);
        a();
    }

    public void e(ek1 ek1Var) {
        int iA0 = ji.a0((ek1[]) this.b, ek1Var);
        if (iA0 >= 0) {
            ek1[] ek1VarArr = (ek1[]) this.b;
            int i = iA0 + 1;
            ji.O(iA0, i, this.a, ek1VarArr, ek1VarArr);
            ek1[] ek1VarArr2 = (ek1[]) this.b;
            int i2 = this.a;
            ek1VarArr2[i2 - 1] = null;
            float[] fArr = (float[]) this.c;
            System.arraycopy(fArr, i, fArr, iA0, i2 - i);
            byte[] bArr = (byte[]) this.d;
            ji.M(iA0, i, this.a, bArr, bArr);
            this.a--;
        }
    }

    public void f(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (((me0) this.d) == null) {
                this.d = new me0();
            }
            me0 me0Var = (me0) this.d;
            me0Var.c = colorStateList;
            me0Var.b = true;
        } else {
            this.d = null;
        }
        a();
    }

    public void g(ColorStateList colorStateList) {
        if (((me0) this.e) == null) {
            this.e = new me0();
        }
        me0 me0Var = (me0) this.e;
        me0Var.c = colorStateList;
        me0Var.b = true;
        a();
    }

    public void h(PorterDuff.Mode mode) {
        if (((me0) this.e) == null) {
            this.e = new me0();
        }
        me0 me0Var = (me0) this.e;
        me0Var.d = mode;
        me0Var.a = true;
        a();
    }

    public gg(View view) {
        ig igVar;
        this.a = -1;
        this.b = view;
        PorterDuff.Mode mode = ig.b;
        synchronized (ig.class) {
            try {
                if (ig.c == null) {
                    ig.b();
                }
                igVar = ig.c;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.c = igVar;
    }
}
