package defpackage;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.ViewParent;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ii1 implements bi1 {
    public static final hi1 B = new hi1();
    public int A;
    public final hx0 b;
    public final y20 c;
    public final tb4 d;
    public final Resources e;
    public final Rect f;
    public Paint g;
    public int h;
    public int i;
    public long j;
    public boolean k;
    public boolean l;
    public boolean m;
    public int n;
    public int o;
    public float p;
    public boolean q;
    public long r;
    public float s;
    public float t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public float f139u;
    public long v;
    public long w;
    public int x;
    public int y;
    public int z;

    public ii1(hx0 hx0Var) {
        y20 y20Var = new y20();
        x20 x20Var = new x20();
        this.b = hx0Var;
        this.c = y20Var;
        tb4 tb4Var = new tb4(hx0Var, y20Var, x20Var);
        this.d = tb4Var;
        this.e = hx0Var.getResources();
        this.f = new Rect();
        hx0Var.addView(tb4Var);
        tb4Var.setClipBounds(null);
        this.j = 0L;
        View.generateViewId();
        this.n = 3;
        this.o = 0;
        this.p = 1.0f;
        this.r = 9205357640488583168L;
        this.s = 1.0f;
        this.t = 1.0f;
        long j = t70.b;
        this.v = j;
        this.w = j;
    }

    @Override // defpackage.bi1
    public final ow A() {
        return null;
    }

    @Override // defpackage.bi1
    public final void B(int i) {
        this.o = i;
        Q();
    }

    @Override // defpackage.bi1
    public final void C() {
        this.d.setRotation(0.0f);
    }

    @Override // defpackage.bi1
    public final void D(long j) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.w = j;
            this.d.setOutlineSpotShadowColor(c75.R(j));
        }
    }

    @Override // defpackage.bi1
    public final void E(float f) {
        this.t = f;
        this.d.setScaleY(f);
    }

    @Override // defpackage.bi1
    public final Matrix F() {
        return this.d.getMatrix();
    }

    @Override // defpackage.bi1
    public final void G(int i, int i2, long j) {
        if (!rs1.a(this.j, j)) {
            this.h = i;
            this.i = i2;
            this.j = j;
            b();
            return;
        }
        int i3 = this.h;
        tb4 tb4Var = this.d;
        if (i3 != i) {
            tb4Var.offsetLeftAndRight(i - i3);
        }
        int i4 = this.i;
        if (i4 != i2) {
            tb4Var.offsetTopAndBottom(i2 - i4);
        }
        this.h = i;
        this.i = i2;
    }

    @Override // defpackage.bi1
    public final float H() {
        return 0.0f;
    }

    @Override // defpackage.bi1
    public final void I(float f) {
        this.d.setCameraDistance(f * this.e.getDisplayMetrics().densityDpi);
    }

    @Override // defpackage.bi1
    public final float J() {
        return this.f139u;
    }

    @Override // defpackage.bi1
    public final float L() {
        return this.t;
    }

    @Override // defpackage.bi1
    public final float M() {
        return 0.0f;
    }

    @Override // defpackage.bi1
    public final int N() {
        return this.n;
    }

    @Override // defpackage.bi1
    public final void O(long j) {
        this.r = j;
        this.q = (j & 9223372034707292159L) == 9205357640488583168L;
        R();
    }

    @Override // defpackage.bi1
    public final long P() {
        return this.v;
    }

    public final void Q() {
        int i = this.o;
        if (i != 1 && this.n == 3) {
            a(i);
        } else {
            a(1);
        }
    }

    public final void R() {
        boolean z = this.q;
        tb4 tb4Var = this.d;
        if (z || go2.b(this.r, 9205357640488583168L)) {
            tb4Var.setPivotX((((int) (this.j >> 32)) / 2.0f) + this.x);
            tb4Var.setPivotY((((int) (this.j & 4294967295L)) / 2.0f) + this.y);
        } else {
            tb4Var.setPivotX(Float.intBitsToFloat((int) (this.r >> 32)) + this.x);
            tb4Var.setPivotY(Float.intBitsToFloat((int) (this.r & 4294967295L)) + this.y);
        }
    }

    public final void a(int i) {
        tb4 tb4Var = this.d;
        boolean z = true;
        if (i == 1) {
            tb4Var.setLayerType(2, this.g);
        } else {
            Paint paint = this.g;
            if (i == 2) {
                tb4Var.setLayerType(0, paint);
                z = false;
            } else {
                tb4Var.setLayerType(0, paint);
            }
        }
        tb4Var.setCanUseCompositingLayer$ui_graphics(z);
    }

    public final void b() {
        boolean z = this.m;
        tb4 tb4Var = this.d;
        if (z || tb4Var.getClipToOutline()) {
            this.k = true;
        }
        int i = this.h;
        int i2 = i - this.x;
        int i3 = this.i;
        int i4 = i3 - this.y;
        long j = this.j;
        tb4Var.layout(i2, i4, i + ((int) (j >> 32)) + this.z, i3 + ((int) (j & 4294967295L)) + this.A);
    }

    @Override // defpackage.bi1
    public final float c() {
        return this.p;
    }

    @Override // defpackage.bi1
    public final void d() {
        this.d.setRotationX(0.0f);
    }

    @Override // defpackage.bi1
    public final void e(float f) {
        this.p = f;
        this.d.setAlpha(f);
    }

    @Override // defpackage.bi1
    public final float f() {
        return this.s;
    }

    @Override // defpackage.bi1
    public final void g(float f) {
        this.f139u = f;
        this.d.setElevation(f);
    }

    @Override // defpackage.bi1
    public final void h(int i, int i2, int i3, int i4) {
        if (!(i >= 0 && i2 >= 0 && i3 >= 0 && i4 >= 0)) {
            StringBuilder sbV = xw1.v("Outsets cannot be negative! Left: ", i, ", Top: ", i2, ", Right: ");
            sbV.append(i3);
            sbV.append(", Bottom: ");
            sbV.append(i4);
            zq1.a(sbV.toString());
        }
        int i5 = this.x;
        if (i == i5 && i2 == this.y && i3 == this.z && i4 == this.A) {
            return;
        }
        boolean z = (i == i5 && i2 == this.y) ? false : true;
        this.x = i;
        this.y = i2;
        this.z = i3;
        this.A = i4;
        b();
        if (z) {
            R();
        }
    }

    @Override // defpackage.bi1
    public final float i() {
        return 0.0f;
    }

    @Override // defpackage.bi1
    public final void j() {
        this.d.setTranslationY(0.0f);
    }

    @Override // defpackage.bi1
    public final void k() {
        this.d.setRotationY(0.0f);
    }

    @Override // defpackage.bi1
    public final long l() {
        return this.w;
    }

    @Override // defpackage.bi1
    public final void m(long j) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.v = j;
            this.d.setOutlineAmbientShadowColor(c75.R(j));
        }
    }

    @Override // defpackage.bi1
    public final void n(Outline outline, long j) {
        tb4 tb4Var = this.d;
        tb4Var.r = outline;
        tb4Var.invalidateOutline();
        if ((this.m || tb4Var.getClipToOutline()) && outline != null) {
            tb4Var.setClipToOutline(true);
            if (this.m) {
                this.m = false;
                this.k = true;
            }
        }
        this.l = outline != null;
    }

    @Override // defpackage.bi1
    public final void o() {
        Paint paint = this.g;
        if (paint == null) {
            paint = new Paint();
            this.g = paint;
        }
        paint.setColorFilter(null);
        Q();
    }

    @Override // defpackage.bi1
    public final void p(float f) {
        this.s = f;
        this.d.setScaleX(f);
    }

    @Override // defpackage.bi1
    public final void q(int i) {
        this.n = i;
        Paint paint = this.g;
        if (paint == null) {
            paint = new Paint();
            this.g = paint;
        }
        paint.setXfermode(new PorterDuffXfermode(se0.G(i)));
        Q();
    }

    @Override // defpackage.bi1
    public final float r() {
        return this.d.getCameraDistance() / this.e.getDisplayMetrics().densityDpi;
    }

    @Override // defpackage.bi1
    public final void s() {
        this.b.removeViewInLayout(this.d);
    }

    @Override // defpackage.bi1
    public final float t() {
        return 0.0f;
    }

    @Override // defpackage.bi1
    public final void u() {
        this.d.setTranslationX(0.0f);
    }

    @Override // defpackage.bi1
    public final void v(v20 v20Var) {
        Rect rect;
        boolean z = this.k;
        tb4 tb4Var = this.d;
        if (z) {
            if ((this.m || tb4Var.getClipToOutline()) && !this.l) {
                rect = this.f;
                rect.left = 0;
                rect.top = 0;
                rect.right = tb4Var.getWidth();
                rect.bottom = tb4Var.getHeight();
            } else {
                rect = null;
            }
            tb4Var.setClipBounds(rect);
        }
        Canvas canvas = z8.a;
        if (((y8) v20Var).a.isHardwareAccelerated()) {
            this.b.a(v20Var, tb4Var, tb4Var.getDrawingTime());
        }
    }

    @Override // defpackage.bi1
    public final void w(boolean z) {
        boolean z2 = false;
        this.m = z && !this.l;
        this.k = true;
        if (z && this.l) {
            z2 = true;
        }
        this.d.setClipToOutline(z2);
    }

    @Override // defpackage.bi1
    public final int x() {
        return this.o;
    }

    @Override // defpackage.bi1
    public final float y() {
        return 0.0f;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // defpackage.bi1
    public final void z(as0 as0Var, hy1 hy1Var, zh1 zh1Var, c8 c8Var) {
        tb4 tb4Var = this.d;
        ViewParent parent = tb4Var.getParent();
        hx0 hx0Var = this.b;
        if (parent == null) {
            hx0Var.addView(tb4Var);
        }
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(this.x)) << 32) | (((long) Float.floatToRawIntBits(this.y)) & 4294967295L);
        float fIntBitsToFloat = Float.intBitsToFloat((int) (jFloatToRawIntBits >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (jFloatToRawIntBits & 4294967295L));
        tb4Var.t = as0Var;
        tb4Var.f336u = hy1Var;
        tb4Var.v = c8Var;
        tb4Var.w = zh1Var;
        tb4Var.x = fIntBitsToFloat;
        tb4Var.y = fIntBitsToFloat2;
        if (tb4Var.isAttachedToWindow()) {
            tb4Var.setVisibility(4);
            tb4Var.setVisibility(0);
            try {
                y20 y20Var = this.c;
                hi1 hi1Var = B;
                y8 y8Var = y20Var.a;
                Canvas canvas = y8Var.a;
                y8Var.a = hi1Var;
                hx0Var.a(y8Var, tb4Var, tb4Var.getDrawingTime());
                y20Var.a.a = canvas;
            } catch (ClassCastException unused) {
            }
        }
    }
}
