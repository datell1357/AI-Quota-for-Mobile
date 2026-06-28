package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.Log;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import java.lang.reflect.Constructor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hu3 {
    public CharSequence A;
    public final /* synthetic */ iu3 D;
    public final Menu a;
    public boolean h;
    public int i;
    public int j;
    public CharSequence k;
    public CharSequence l;
    public int m;
    public char n;
    public int o;
    public char p;
    public int q;
    public int r;
    public boolean s;
    public boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f129u;
    public int v;
    public int w;
    public String x;
    public String y;
    public CharSequence z;
    public ColorStateList B = null;
    public PorterDuff.Mode C = null;
    public int b = 0;
    public int c = 0;
    public int d = 0;
    public int e = 0;
    public boolean f = true;
    public boolean g = true;

    public hu3(iu3 iu3Var, Menu menu) {
        this.D = iu3Var;
        this.a = menu;
    }

    public final Object a(String str, Class[] clsArr, Object[] objArr) {
        try {
            Constructor<?> constructor = Class.forName(str, false, this.D.c.getClassLoader()).getConstructor(clsArr);
            constructor.setAccessible(true);
            return constructor.newInstance(objArr);
        } catch (Exception e) {
            Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e);
            return null;
        }
    }

    public final void b(MenuItem menuItem) {
        iu3 iu3Var = this.D;
        Context context = iu3Var.c;
        boolean z = false;
        menuItem.setChecked(this.s).setVisible(this.t).setEnabled(this.f129u).setCheckable(this.r >= 1).setTitleCondensed(this.l).setIcon(this.m);
        int i = this.v;
        if (i >= 0) {
            menuItem.setShowAsAction(i);
        }
        if (this.y != null) {
            if (context.isRestricted()) {
                k21.n("The android:onClick attribute cannot be used within a restricted context");
                return;
            }
            if (iu3Var.d == null) {
                iu3Var.d = iu3.a(context);
            }
            Object obj = iu3Var.d;
            String str = this.y;
            gu3 gu3Var = new gu3();
            gu3Var.a = obj;
            Class<?> cls = obj.getClass();
            try {
                gu3Var.b = cls.getMethod(str, gu3.c);
                menuItem.setOnMenuItemClickListener(gu3Var);
            } catch (Exception e) {
                StringBuilder sbA = di0.A("Couldn't resolve menu item onClick handler ", str, " in class ");
                sbA.append(cls.getName());
                InflateException inflateException = new InflateException(sbA.toString());
                inflateException.initCause(e);
                throw inflateException;
            }
        }
        if (this.r >= 2 && (menuItem instanceof zb2)) {
            zb2 zb2Var = (zb2) menuItem;
            zb2Var.x = (zb2Var.x & (-5)) | 4;
        }
        String str2 = this.x;
        if (str2 != null) {
            menuItem.setActionView((View) a(str2, iu3.e, iu3Var.a));
            z = true;
        }
        int i2 = this.w;
        if (i2 > 0) {
            if (z) {
                Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
            } else {
                menuItem.setActionView(i2);
            }
        }
        CharSequence charSequence = this.z;
        boolean z2 = menuItem instanceof zb2;
        if (z2) {
            ((zb2) menuItem).c(charSequence);
        } else if (Build.VERSION.SDK_INT >= 26) {
            sf.n(menuItem, charSequence);
        }
        CharSequence charSequence2 = this.A;
        if (z2) {
            ((zb2) menuItem).e(charSequence2);
        } else if (Build.VERSION.SDK_INT >= 26) {
            sf.v(menuItem, charSequence2);
        }
        char c = this.n;
        int i3 = this.o;
        if (z2) {
            ((zb2) menuItem).setAlphabeticShortcut(c, i3);
        } else if (Build.VERSION.SDK_INT >= 26) {
            sf.l(menuItem, c, i3);
        }
        char c2 = this.p;
        int i4 = this.q;
        if (z2) {
            ((zb2) menuItem).setNumericShortcut(c2, i4);
        } else if (Build.VERSION.SDK_INT >= 26) {
            sf.r(menuItem, c2, i4);
        }
        PorterDuff.Mode mode = this.C;
        if (mode != null) {
            if (z2) {
                ((zb2) menuItem).setIconTintMode(mode);
            } else if (Build.VERSION.SDK_INT >= 26) {
                sf.q(menuItem, mode);
            }
        }
        ColorStateList colorStateList = this.B;
        if (colorStateList != null) {
            if (z2) {
                ((zb2) menuItem).setIconTintList(colorStateList);
            } else if (Build.VERSION.SDK_INT >= 26) {
                sf.p(menuItem, colorStateList);
            }
        }
    }
}
