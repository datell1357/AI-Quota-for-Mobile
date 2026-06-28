package defpackage;

import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.WindowInsets;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class zd4 extends he4 {
    public static boolean n = false;
    public static Method o;
    public static Class p;
    public static Field q;
    public static Field r;
    public final WindowInsets c;
    public nr1[] d;
    public nr1 e;
    public ke4 f;
    public nr1 g;
    public int h;
    public cv0 i;
    public int j;
    public int k;
    public Rect[][] l;
    public Rect[][] m;

    public zd4(ke4 ke4Var, WindowInsets windowInsets) {
        super(ke4Var);
        this.e = null;
        this.l = new Rect[10][];
        this.m = new Rect[10][];
        this.c = windowInsets;
    }

    private cv0 D(View view) {
        Display display;
        if (view == null || (display = view.getDisplay()) == null) {
            return null;
        }
        Point point = new Point();
        display.getRealSize(point);
        if (this.a.a.t()) {
            return cv0.a(point.x, point.y, true, 0, 0, 0, 0);
        }
        ma3 ma3VarA = is0.A(display, 0);
        ma3 ma3VarA2 = is0.A(display, 1);
        ma3 ma3VarA3 = is0.A(display, 2);
        ma3 ma3VarA4 = is0.A(display, 3);
        return cv0.a(point.x, point.y, false, ma3VarA != null ? ma3VarA.b : 0, ma3VarA2 != null ? ma3VarA2.b : 0, ma3VarA3 != null ? ma3VarA3.b : 0, ma3VarA4 != null ? ma3VarA4.b : 0);
    }

    private static List<Rect> E(Rect[][] rectArr, int i) {
        Rect[] rectArr2;
        Rect[] rectArr3 = null;
        for (int i2 = 1; i2 <= 512; i2 <<= 1) {
            if ((i & i2) != 0 && (rectArr2 = rectArr[zf5.L(i2)]) != null) {
                if (rectArr3 == null) {
                    rectArr3 = rectArr2;
                } else {
                    Rect[] rectArr4 = new Rect[rectArr3.length + rectArr2.length];
                    System.arraycopy(rectArr3, 0, rectArr4, 0, rectArr3.length);
                    System.arraycopy(rectArr2, 0, rectArr4, rectArr3.length, rectArr2.length);
                    rectArr3 = rectArr4;
                }
            }
        }
        return rectArr3 == null ? Collections.EMPTY_LIST : Arrays.asList(rectArr3);
    }

    private Rect[] F(nr1 nr1Var) {
        ArrayList arrayList = new ArrayList();
        int i = nr1Var.a;
        int i2 = nr1Var.d;
        int i3 = nr1Var.c;
        int i4 = nr1Var.b;
        if (i != 0) {
            arrayList.add(new Rect(0, 0, nr1Var.a, this.j));
        }
        if (i4 != 0) {
            arrayList.add(new Rect(0, 0, this.k, i4));
        }
        if (i3 != 0) {
            int i5 = this.k;
            arrayList.add(new Rect(i5 - i3, 0, i5, this.j));
        }
        if (i2 != 0) {
            int i6 = this.j;
            arrayList.add(new Rect(0, i6 - i2, this.k, i6));
        }
        return (Rect[]) arrayList.toArray(new Rect[arrayList.size()]);
    }

    private nr1 G(int i, boolean z) {
        nr1 nr1VarA = nr1.e;
        for (int i2 = 1; i2 <= 512; i2 <<= 1) {
            if ((i & i2) != 0) {
                nr1VarA = nr1.a(nr1VarA, H(i2, z));
            }
        }
        return nr1VarA;
    }

    private nr1 I() {
        ke4 ke4Var = this.f;
        return ke4Var != null ? ke4Var.a.l() : nr1.e;
    }

    private nr1 J(View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            p61.s("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
            return null;
        }
        if (!n) {
            L();
        }
        Method method = o;
        if (method != null && p != null && q != null) {
            try {
                Object objInvoke = method.invoke(view, null);
                if (objInvoke == null) {
                    Log.w("WindowInsetsCompat", "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new NullPointerException());
                    return null;
                }
                Rect rect = (Rect) q.get(r.get(objInvoke));
                if (rect != null) {
                    return nr1.b(rect.left, rect.top, rect.right, rect.bottom);
                }
                return null;
            } catch (ReflectiveOperationException e) {
                Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e.getMessage(), e);
            }
        }
        return null;
    }

    private static void L() {
        try {
            o = View.class.getDeclaredMethod("getViewRootImpl", null);
            Class<?> cls = Class.forName("android.view.View$AttachInfo");
            p = cls;
            q = cls.getDeclaredField("mVisibleInsets");
            r = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
            q.setAccessible(true);
            r.setAccessible(true);
        } catch (ReflectiveOperationException e) {
            Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e.getMessage(), e);
        }
        n = true;
    }

    public static boolean M(int i, int i2) {
        return (i & 6) == (i2 & 6);
    }

    @Override // defpackage.he4
    public void A(int i) {
        this.h = i;
    }

    @Override // defpackage.he4
    public void B(Rect[][] rectArr) {
        Objects.requireNonNull(rectArr);
        this.l = (Rect[][]) rectArr.clone();
    }

    @Override // defpackage.he4
    public void C(Rect[][] rectArr) {
        Objects.requireNonNull(rectArr);
        this.m = (Rect[][]) rectArr.clone();
    }

    public nr1 H(int i, boolean z) {
        nr1 nr1VarL;
        int i2;
        nr1 nr1Var = nr1.e;
        if (i != 1) {
            if (i != 2) {
                if (i == 8) {
                    nr1[] nr1VarArr = this.d;
                    nr1VarL = nr1VarArr != null ? nr1VarArr[zf5.L(8)] : null;
                    if (nr1VarL != null) {
                        return nr1VarL;
                    }
                    nr1 nr1VarN = n();
                    nr1 nr1VarI = I();
                    int i3 = nr1VarN.d;
                    if (i3 > nr1VarI.d) {
                        return nr1.b(0, 0, 0, i3);
                    }
                    nr1 nr1Var2 = this.g;
                    if (nr1Var2 != null && !nr1Var2.equals(nr1Var) && (i2 = this.g.d) > nr1VarI.d) {
                        return nr1.b(0, 0, 0, i2);
                    }
                } else {
                    if (i == 16) {
                        return m();
                    }
                    if (i == 32) {
                        return k();
                    }
                    if (i == 64) {
                        return o();
                    }
                    if (i == 128) {
                        ke4 ke4Var = this.f;
                        av0 av0VarH = ke4Var != null ? ke4Var.a.h() : h();
                        if (av0VarH != null) {
                            int i4 = Build.VERSION.SDK_INT;
                            return nr1.b(i4 >= 28 ? tf.k(av0VarH.a) : 0, i4 >= 28 ? tf.m(av0VarH.a) : 0, i4 >= 28 ? tf.l(av0VarH.a) : 0, i4 >= 28 ? tf.j(av0VarH.a) : 0);
                        }
                    }
                }
            } else {
                if (z) {
                    nr1 nr1VarI2 = I();
                    nr1 nr1VarL2 = l();
                    return nr1.b(Math.max(nr1VarI2.a, nr1VarL2.a), 0, Math.max(nr1VarI2.c, nr1VarL2.c), Math.max(nr1VarI2.d, nr1VarL2.d));
                }
                if ((this.h & 2) == 0) {
                    nr1 nr1VarN2 = n();
                    ke4 ke4Var2 = this.f;
                    nr1VarL = ke4Var2 != null ? ke4Var2.a.l() : null;
                    int iMin = nr1VarN2.d;
                    if (nr1VarL != null) {
                        iMin = Math.min(iMin, nr1VarL.d);
                    }
                    return nr1.b(nr1VarN2.a, 0, nr1VarN2.c, iMin);
                }
            }
        } else {
            if (z) {
                return nr1.b(0, Math.max(I().b, n().b), 0, 0);
            }
            if ((this.h & 4) == 0) {
                return nr1.b(0, n().b, 0, 0);
            }
        }
        return nr1Var;
    }

    public boolean K(int i) {
        if (i != 1 && i != 2) {
            if (i == 4) {
                return false;
            }
            if (i != 8 && i != 128) {
                return true;
            }
        }
        return !H(i, false).equals(nr1.e);
    }

    @Override // defpackage.he4
    public void d(View view) {
        this.k = view.getWidth();
        this.j = view.getHeight();
        nr1 nr1VarJ = J(view);
        if (nr1VarJ == null) {
            nr1VarJ = nr1.e;
        }
        x(nr1VarJ);
    }

    @Override // defpackage.he4
    public void e(ke4 ke4Var) {
        ke4Var.a.y(this.f);
        nr1 nr1Var = this.g;
        he4 he4Var = ke4Var.a;
        he4Var.x(nr1Var);
        he4Var.A(this.h);
        he4Var.v(this.i);
        he4Var.B(this.l);
        he4Var.C(this.m);
    }

    @Override // defpackage.he4
    public boolean equals(Object obj) {
        if (!super.equals(obj)) {
            return false;
        }
        zd4 zd4Var = (zd4) obj;
        return Objects.equals(this.g, zd4Var.g) && M(this.h, zd4Var.h);
    }

    @Override // defpackage.he4
    public List<Rect> f(int i) {
        return E(this.l, i);
    }

    @Override // defpackage.he4
    public List<Rect> g(int i) {
        return E(this.m, i);
    }

    @Override // defpackage.he4
    public nr1 i(int i) {
        return G(i, false);
    }

    @Override // defpackage.he4
    public nr1 j(int i) {
        return G(i, true);
    }

    @Override // defpackage.he4
    public final nr1 n() {
        if (this.e == null) {
            WindowInsets windowInsets = this.c;
            this.e = nr1.b(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        }
        return this.e;
    }

    @Override // defpackage.he4
    public void p(View view) {
        this.i = D(view);
    }

    @Override // defpackage.he4
    public void q() {
        for (int i = 1; i <= 512; i <<= 1) {
            int iL = zf5.L(i);
            this.l[iL] = F(i(i));
            if (i != 8) {
                this.m[iL] = F(j(i));
            }
        }
    }

    @Override // defpackage.he4
    public ke4 r(int i, int i2, int i3, int i4) {
        ke4 ke4VarC = ke4.c(null, this.c);
        int i5 = Build.VERSION.SDK_INT;
        yd4 xd4Var = i5 >= 36 ? new xd4(ke4VarC) : i5 >= 35 ? new wd4(ke4VarC) : i5 >= 34 ? new vd4(ke4VarC) : i5 >= 31 ? new ud4(ke4VarC) : i5 >= 30 ? new td4(ke4VarC) : i5 >= 29 ? new sd4(ke4VarC) : new rd4(ke4VarC);
        xd4Var.h(ke4.a(n(), i, i2, i3, i4));
        xd4Var.f(ke4.a(l(), i, i2, i3, i4));
        return xd4Var.b();
    }

    @Override // defpackage.he4
    public boolean t() {
        return this.c.isRound();
    }

    @Override // defpackage.he4
    public boolean u(int i) {
        for (int i2 = 1; i2 <= 512; i2 <<= 1) {
            if ((i & i2) != 0 && !K(i2)) {
                return false;
            }
        }
        return true;
    }

    @Override // defpackage.he4
    public void v(cv0 cv0Var) {
        this.i = cv0Var;
    }

    @Override // defpackage.he4
    public void w(nr1[] nr1VarArr) {
        this.d = nr1VarArr;
    }

    @Override // defpackage.he4
    public void x(nr1 nr1Var) {
        this.g = nr1Var;
    }

    @Override // defpackage.he4
    public void y(ke4 ke4Var) {
        this.f = ke4Var;
    }

    public zd4(ke4 ke4Var, zd4 zd4Var) {
        this(ke4Var, new WindowInsets(zd4Var.c));
    }
}
