package defpackage;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.os.Build;
import android.view.DisplayListCanvas;
import android.view.RenderNode;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ei1 implements bi1 {
    public static final AtomicBoolean D = new AtomicBoolean(true);
    public boolean A;
    public int B;
    public int C;
    public final y20 b;
    public final x20 c;
    public final RenderNode d;
    public long e;
    public Paint f;
    public Matrix g;
    public boolean h;
    public long i;
    public int j;
    public int k;
    public float l;
    public boolean m;
    public long n;
    public float o;
    public float p;
    public float q;
    public long r;
    public long s;
    public float t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f87u;
    public int v;
    public int w;
    public int x;
    public int y;
    public boolean z;

    public ei1(q9 q9Var, y20 y20Var, x20 x20Var) {
        this.b = y20Var;
        this.c = x20Var;
        RenderNode renderNodeCreate = RenderNode.create("Compose", q9Var);
        this.d = renderNodeCreate;
        this.e = 0L;
        this.i = 0L;
        if (D.getAndSet(false)) {
            renderNodeCreate.setScaleX(renderNodeCreate.getScaleX());
            renderNodeCreate.setScaleY(renderNodeCreate.getScaleY());
            renderNodeCreate.setTranslationX(renderNodeCreate.getTranslationX());
            renderNodeCreate.setTranslationY(renderNodeCreate.getTranslationY());
            renderNodeCreate.setElevation(renderNodeCreate.getElevation());
            renderNodeCreate.setRotation(renderNodeCreate.getRotation());
            renderNodeCreate.setRotationX(renderNodeCreate.getRotationX());
            renderNodeCreate.setRotationY(renderNodeCreate.getRotationY());
            renderNodeCreate.setCameraDistance(renderNodeCreate.getCameraDistance());
            renderNodeCreate.setPivotX(renderNodeCreate.getPivotX());
            renderNodeCreate.setPivotY(renderNodeCreate.getPivotY());
            renderNodeCreate.setClipToOutline(renderNodeCreate.getClipToOutline());
            renderNodeCreate.setClipToBounds(false);
            renderNodeCreate.setAlpha(renderNodeCreate.getAlpha());
            renderNodeCreate.isValid();
            renderNodeCreate.setLeftTopRightBottom(0, 0, 0, 0);
            renderNodeCreate.offsetLeftAndRight(0);
            renderNodeCreate.offsetTopAndBottom(0);
            if (Build.VERSION.SDK_INT >= 28) {
                c63.c(renderNodeCreate, c63.a(renderNodeCreate));
                c63.d(renderNodeCreate, c63.b(renderNodeCreate));
            }
            b63.a(renderNodeCreate);
            renderNodeCreate.setLayerType(0);
            renderNodeCreate.setHasOverlappingRendering(renderNodeCreate.hasOverlappingRendering());
        }
        renderNodeCreate.setClipToBounds(false);
        b(0);
        this.j = 0;
        this.k = 3;
        this.l = 1.0f;
        this.n = 9205357640488583168L;
        this.o = 1.0f;
        this.p = 1.0f;
        long j = t70.b;
        this.r = j;
        this.s = j;
        this.t = 8.0f;
    }

    @Override // defpackage.bi1
    public final ow A() {
        return null;
    }

    @Override // defpackage.bi1
    public final void B(int i) {
        this.j = i;
        Q();
    }

    @Override // defpackage.bi1
    public final void C() {
        this.d.setRotation(0.0f);
    }

    @Override // defpackage.bi1
    public final void D(long j) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.s = j;
            c63.d(this.d, c75.R(j));
        }
    }

    @Override // defpackage.bi1
    public final void E(float f) {
        this.p = f;
        this.d.setScaleY(f);
    }

    @Override // defpackage.bi1
    public final Matrix F() {
        Matrix matrix = this.g;
        if (matrix == null) {
            matrix = new Matrix();
            this.g = matrix;
        }
        this.d.getMatrix(matrix);
        return matrix;
    }

    @Override // defpackage.bi1
    public final void G(int i, int i2, long j) {
        this.B = i;
        this.C = i2;
        boolean zA = rs1.a(this.e, j);
        this.e = j;
        S();
        if (zA) {
            return;
        }
        if (this.m || go2.b(this.n, 9205357640488583168L)) {
            this.d.setPivotX((((int) (j >> 32)) / 2.0f) + this.v);
            this.d.setPivotY((((int) (j & 4294967295L)) / 2.0f) + this.w);
        }
    }

    @Override // defpackage.bi1
    public final float H() {
        return 0.0f;
    }

    @Override // defpackage.bi1
    public final void I(float f) {
        this.t = f;
        this.d.setCameraDistance(-f);
    }

    @Override // defpackage.bi1
    public final float J() {
        return this.q;
    }

    @Override // defpackage.bi1
    public final boolean K() {
        return this.d.isValid();
    }

    @Override // defpackage.bi1
    public final float L() {
        return this.p;
    }

    @Override // defpackage.bi1
    public final float M() {
        return 0.0f;
    }

    @Override // defpackage.bi1
    public final int N() {
        return this.k;
    }

    @Override // defpackage.bi1
    public final void O(long j) {
        this.n = j;
        R();
    }

    @Override // defpackage.bi1
    public final long P() {
        return this.r;
    }

    public final void Q() {
        int i = this.j;
        if (i != 1 && this.k == 3) {
            b(i);
        } else {
            b(1);
        }
    }

    public final void R() {
        long j = this.n;
        if ((9223372034707292159L & j) == 9205357640488583168L) {
            this.m = true;
            this.d.setPivotX((((int) (this.e >> 32)) / 2.0f) + this.v);
            this.d.setPivotY((((int) (4294967295L & this.e)) / 2.0f) + this.w);
        } else {
            this.m = false;
            this.d.setPivotX(Float.intBitsToFloat((int) (j >> 32)) + this.v);
            this.d.setPivotY(Float.intBitsToFloat((int) (this.n & 4294967295L)) + this.w);
        }
    }

    public final void S() {
        RenderNode renderNode = this.d;
        int i = this.B;
        int i2 = i - this.v;
        int i3 = this.C;
        int i4 = i3 - this.w;
        long j = this.e;
        renderNode.setLeftTopRightBottom(i2, i4, i + ((int) (j >> 32)) + this.x, i3 + ((int) (j & 4294967295L)) + this.y);
    }

    public final void a() {
        boolean z = this.f87u;
        boolean z2 = false;
        boolean z3 = z && !this.h;
        if (z && this.h) {
            z2 = true;
        }
        if (z3 != this.z) {
            this.z = z3;
            this.d.setClipToBounds(z3);
        }
        if (z2 != this.A) {
            this.A = z2;
            this.d.setClipToOutline(z2);
        }
    }

    public final void b(int i) {
        RenderNode renderNode = this.d;
        if (i == 1) {
            renderNode.setLayerType(2);
            renderNode.setLayerPaint(this.f);
            renderNode.setHasOverlappingRendering(true);
        } else if (i == 2) {
            renderNode.setLayerType(0);
            renderNode.setLayerPaint(this.f);
            renderNode.setHasOverlappingRendering(false);
        } else {
            renderNode.setLayerType(0);
            renderNode.setLayerPaint(this.f);
            renderNode.setHasOverlappingRendering(true);
        }
    }

    @Override // defpackage.bi1
    public final float c() {
        return this.l;
    }

    @Override // defpackage.bi1
    public final void d() {
        this.d.setRotationX(0.0f);
    }

    @Override // defpackage.bi1
    public final void e(float f) {
        this.l = f;
        this.d.setAlpha(f);
    }

    @Override // defpackage.bi1
    public final float f() {
        return this.o;
    }

    @Override // defpackage.bi1
    public final void g(float f) {
        this.q = f;
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
        int i5 = this.v;
        if (i == i5 && i2 == this.w && i3 == this.x && i4 == this.y) {
            return;
        }
        boolean z = (i == i5 && i2 == this.w) ? false : true;
        this.v = i;
        this.w = i2;
        this.x = i3;
        this.y = i4;
        S();
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
        return this.s;
    }

    @Override // defpackage.bi1
    public final void m(long j) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.r = j;
            c63.c(this.d, c75.R(j));
        }
    }

    @Override // defpackage.bi1
    public final void n(Outline outline, long j) {
        this.i = j;
        this.d.setOutline(outline);
        this.h = outline != null;
        a();
    }

    @Override // defpackage.bi1
    public final void o() {
        Q();
    }

    @Override // defpackage.bi1
    public final void p(float f) {
        this.o = f;
        this.d.setScaleX(f);
    }

    @Override // defpackage.bi1
    public final void q(int i) {
        if (this.k == i) {
            return;
        }
        this.k = i;
        Paint paint = this.f;
        if (paint == null) {
            paint = new Paint();
            this.f = paint;
        }
        paint.setXfermode(new PorterDuffXfermode(se0.G(i)));
        Q();
    }

    @Override // defpackage.bi1
    public final float r() {
        return this.t;
    }

    @Override // defpackage.bi1
    public final void s() {
        b63.a(this.d);
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
        Canvas canvas = z8.a;
        DisplayListCanvas displayListCanvas = ((y8) v20Var).a;
        displayListCanvas.getClass();
        displayListCanvas.drawRenderNode(this.d);
    }

    @Override // defpackage.bi1
    public final void w(boolean z) {
        this.f87u = z;
        a();
    }

    @Override // defpackage.bi1
    public final int x() {
        return this.j;
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
    public final void z(as0 as0Var, hy1 hy1Var, zh1 zh1Var, c8 c8Var) throws Throwable {
        DisplayListCanvas displayListCanvas;
        y8 y8Var;
        Canvas canvas;
        DisplayListCanvas displayListCanvas2;
        as0 as0VarV;
        hy1 hy1VarX;
        v20 v20VarU;
        Canvas canvas2;
        long jZ;
        zh1 zh1Var2;
        long j;
        int i;
        int i2;
        x20 x20Var = this.c;
        eh ehVar = x20Var.o;
        DisplayListCanvas displayListCanvasStart = this.d.start(Math.max(((int) (this.e >> 32)) + this.v + this.x, (int) (this.i >> 32)), Math.max(((int) (this.e & 4294967295L)) + this.w + this.y, (int) (this.i & 4294967295L)));
        float f = this.v;
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(this.w)) & 4294967295L) | (Float.floatToRawIntBits(f) << 32);
        try {
            y8Var = this.b.a;
            canvas = y8Var.a;
            y8Var.a = (Canvas) displayListCanvasStart;
        } catch (Throwable th) {
            th = th;
            displayListCanvas = displayListCanvasStart;
        }
        try {
        } catch (Throwable th2) {
            th = th2;
            displayListCanvas = displayListCanvas2;
            this.d.end(displayListCanvas);
            throw th;
        }
        try {
            if (this.v <= 0.0f) {
                try {
                    if (this.w <= 0.0f) {
                        long jH = se0.H(this.e);
                        as0VarV = ehVar.v();
                        hy1VarX = ehVar.x();
                        v20VarU = ehVar.u();
                        canvas2 = canvas;
                        jZ = ehVar.z();
                        displayListCanvas2 = displayListCanvasStart;
                        zh1Var2 = (zh1) ehVar.p;
                        ehVar.I(as0Var);
                        ehVar.J(hy1Var);
                        ehVar.H(y8Var);
                        ehVar.K(jH);
                        ehVar.p = zh1Var;
                        y8Var.j();
                        try {
                            c8Var.k(x20Var);
                            y8Var.a = canvas2;
                            this.d.end(displayListCanvas2);
                            return;
                        } finally {
                            y8Var.h();
                            ehVar.I(as0VarV);
                            ehVar.J(hy1VarX);
                            ehVar.H(v20VarU);
                            ehVar.K(jZ);
                            ehVar.p = zh1Var2;
                        }
                    }
                    displayListCanvas2 = displayListCanvasStart;
                    j = 4294967295L;
                    canvas2 = canvas;
                } catch (Throwable th3) {
                    th = th3;
                    displayListCanvas2 = displayListCanvasStart;
                    displayListCanvas = displayListCanvas2;
                }
                this.d.end(displayListCanvas);
                throw th;
            }
            displayListCanvas2 = displayListCanvasStart;
            canvas2 = canvas;
            j = 4294967295L;
            c8Var.k(x20Var);
            y8Var.h();
            ehVar.I(as0VarV);
            ehVar.J(hy1VarX);
            ehVar.H(v20VarU);
            ehVar.K(jZ);
            ehVar.p = zh1Var2;
            y8Var.f(-Float.intBitsToFloat(i), -Float.intBitsToFloat(i2));
            y8Var.a = canvas2;
            this.d.end(displayListCanvas2);
            return;
        } catch (Throwable th4) {
            displayListCanvas = displayListCanvas2;
            try {
                throw th4;
            } catch (Throwable th5) {
                th = th5;
            }
        }
        i = (int) (jFloatToRawIntBits >> 32);
        i2 = (int) (jFloatToRawIntBits & j);
        y8Var.f(Float.intBitsToFloat(i), Float.intBitsToFloat(i2));
        long jH2 = se0.H(this.e);
        as0VarV = ehVar.v();
        hy1VarX = ehVar.x();
        v20VarU = ehVar.u();
        jZ = ehVar.z();
        zh1Var2 = (zh1) ehVar.p;
        ehVar.I(as0Var);
        ehVar.J(hy1Var);
        ehVar.H(y8Var);
        ehVar.K(jH2);
        ehVar.p = zh1Var;
        y8Var.j();
    }
}
