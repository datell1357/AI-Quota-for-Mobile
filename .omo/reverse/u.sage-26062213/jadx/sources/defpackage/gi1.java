package defpackage;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.RecordingCanvas;
import android.graphics.RenderNode;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gi1 implements bi1 {
    public int A;
    public final y20 b;
    public final x20 c;
    public final RenderNode d;
    public long e;
    public Paint f;
    public Matrix g;
    public boolean h;
    public float i;
    public int j;
    public long k;
    public float l;
    public float m;
    public float n;
    public long o;
    public long p;
    public float q;
    public boolean r;
    public int s;
    public int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f112u;
    public int v;
    public boolean w;
    public boolean x;
    public int y;
    public int z;

    public gi1() {
        y20 y20Var = new y20();
        x20 x20Var = new x20();
        this.b = y20Var;
        this.c = x20Var;
        RenderNode renderNodeC = rg0.c();
        this.d = renderNodeC;
        this.e = 0L;
        renderNodeC.setClipToBounds(false);
        b(renderNodeC, 0);
        this.i = 1.0f;
        this.j = 3;
        this.k = 9205357640488583168L;
        this.l = 1.0f;
        this.m = 1.0f;
        long j = t70.b;
        this.o = j;
        this.p = j;
        this.q = 8.0f;
        this.A = 0;
    }

    @Override // defpackage.bi1
    public final ow A() {
        return null;
    }

    @Override // defpackage.bi1
    public final void B(int i) {
        this.A = i;
        Q();
    }

    @Override // defpackage.bi1
    public final void C() {
        this.d.setRotationZ(0.0f);
    }

    @Override // defpackage.bi1
    public final void D(long j) {
        this.p = j;
        this.d.setSpotShadowColor(c75.R(j));
    }

    @Override // defpackage.bi1
    public final void E(float f) {
        this.m = f;
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
        this.y = i;
        this.z = i2;
        boolean zA = mn3.a(this.e, se0.H(j));
        this.e = se0.H(j);
        S();
        if (zA || !go2.b(this.k, 9205357640488583168L)) {
            return;
        }
        this.d.setPivotX((((int) (j >> 32)) / 2.0f) + this.s);
        this.d.setPivotY((((int) (j & 4294967295L)) / 2.0f) + this.t);
    }

    @Override // defpackage.bi1
    public final float H() {
        return 0.0f;
    }

    @Override // defpackage.bi1
    public final void I(float f) {
        this.q = f;
        this.d.setCameraDistance(f);
    }

    @Override // defpackage.bi1
    public final float J() {
        return this.n;
    }

    @Override // defpackage.bi1
    public final boolean K() {
        return this.d.hasDisplayList();
    }

    @Override // defpackage.bi1
    public final float L() {
        return this.m;
    }

    @Override // defpackage.bi1
    public final float M() {
        return 0.0f;
    }

    @Override // defpackage.bi1
    public final int N() {
        return this.j;
    }

    @Override // defpackage.bi1
    public final void O(long j) {
        this.k = j;
        R();
    }

    @Override // defpackage.bi1
    public final long P() {
        return this.o;
    }

    public final void Q() {
        int i = this.A;
        if (i != 1 && this.j == 3) {
            b(this.d, i);
        } else {
            b(this.d, 1);
        }
    }

    public final void R() {
        long j = this.k;
        long j2 = 9223372034707292159L & j;
        RenderNode renderNode = this.d;
        if (j2 == 9205357640488583168L) {
            renderNode.setPivotX((Float.intBitsToFloat((int) (this.e >> 32)) / 2.0f) + this.s);
            this.d.setPivotY((Float.intBitsToFloat((int) (this.e & 4294967295L)) / 2.0f) + this.t);
        } else {
            renderNode.setPivotX(Float.intBitsToFloat((int) (j >> 32)) + this.s);
            this.d.setPivotY(Float.intBitsToFloat((int) (this.k & 4294967295L)) + this.t);
        }
    }

    public final void S() {
        RenderNode renderNode = this.d;
        int i = this.y;
        renderNode.setPosition(i - this.s, this.z - this.t, i + ((int) Float.intBitsToFloat((int) (this.e >> 32))) + this.f112u, this.z + ((int) Float.intBitsToFloat((int) (this.e & 4294967295L))) + this.v);
    }

    public final void a() {
        boolean z = this.r;
        boolean z2 = false;
        boolean z3 = z && !this.h;
        if (z && this.h) {
            z2 = true;
        }
        if (z3 != this.w) {
            this.w = z3;
            this.d.setClipToBounds(z3);
        }
        if (z2 != this.x) {
            this.x = z2;
            this.d.setClipToOutline(z2);
        }
    }

    public final void b(RenderNode renderNode, int i) {
        Paint paint = this.f;
        if (i == 1) {
            renderNode.setUseCompositingLayer(true, paint);
            renderNode.setHasOverlappingRendering(true);
        } else if (i == 2) {
            renderNode.setUseCompositingLayer(false, paint);
            renderNode.setHasOverlappingRendering(false);
        } else {
            renderNode.setUseCompositingLayer(false, paint);
            renderNode.setHasOverlappingRendering(true);
        }
    }

    @Override // defpackage.bi1
    public final float c() {
        return this.i;
    }

    @Override // defpackage.bi1
    public final void d() {
        this.d.setRotationX(0.0f);
    }

    @Override // defpackage.bi1
    public final void e(float f) {
        this.i = f;
        this.d.setAlpha(f);
    }

    @Override // defpackage.bi1
    public final float f() {
        return this.l;
    }

    @Override // defpackage.bi1
    public final void g(float f) {
        this.n = f;
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
        int i5 = this.s;
        if (i == i5 && i2 == this.t && i3 == this.f112u && i4 == this.v) {
            return;
        }
        boolean z = (i == i5 && i2 == this.t) ? false : true;
        this.s = i;
        this.t = i2;
        this.f112u = i3;
        this.v = i4;
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
        return this.p;
    }

    @Override // defpackage.bi1
    public final void m(long j) {
        this.o = j;
        this.d.setAmbientShadowColor(c75.R(j));
    }

    @Override // defpackage.bi1
    public final void n(Outline outline, long j) {
        this.d.setOutline(outline);
        this.h = outline != null;
        a();
    }

    @Override // defpackage.bi1
    public final void o() {
        Paint paint = this.f;
        if (paint == null) {
            paint = new Paint();
            this.f = paint;
        }
        paint.setColorFilter(null);
        Q();
    }

    @Override // defpackage.bi1
    public final void p(float f) {
        this.l = f;
        this.d.setScaleX(f);
    }

    @Override // defpackage.bi1
    public final void q(int i) {
        this.j = i;
        Paint paint = this.f;
        if (paint == null) {
            paint = new Paint();
            this.f = paint;
        }
        paint.setBlendMode(se0.F(i));
        Q();
    }

    @Override // defpackage.bi1
    public final float r() {
        return this.q;
    }

    @Override // defpackage.bi1
    public final void s() {
        this.d.discardDisplayList();
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
        ((y8) v20Var).a.drawRenderNode(this.d);
    }

    @Override // defpackage.bi1
    public final void w(boolean z) {
        this.r = z;
        a();
    }

    @Override // defpackage.bi1
    public final int x() {
        return this.A;
    }

    @Override // defpackage.bi1
    public final float y() {
        return 0.0f;
    }

    @Override // defpackage.bi1
    public final void z(as0 as0Var, hy1 hy1Var, zh1 zh1Var, c8 c8Var) {
        x20 x20Var = this.c;
        RecordingCanvas recordingCanvasBeginRecording = this.d.beginRecording();
        float f = this.s;
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(this.t)) & 4294967295L) | (Float.floatToRawIntBits(f) << 32);
        try {
            y20 y20Var = this.b;
            y8 y8Var = y20Var.a;
            Canvas canvas = y8Var.a;
            y8Var.a = recordingCanvasBeginRecording;
            eh ehVar = x20Var.o;
            ehVar.I(as0Var);
            ehVar.J(hy1Var);
            ehVar.p = zh1Var;
            ehVar.K(this.e);
            ehVar.H(y8Var);
            if (this.s > 0.0f || this.t > 0.0f) {
                int i = (int) (jFloatToRawIntBits >> 32);
                int i2 = (int) (jFloatToRawIntBits & 4294967295L);
                y8Var.f(Float.intBitsToFloat(i), Float.intBitsToFloat(i2));
                c8Var.k(x20Var);
                y8Var.f(-Float.intBitsToFloat(i), -Float.intBitsToFloat(i2));
            } else {
                c8Var.k(x20Var);
            }
            y20Var.a.a = canvas;
            this.d.endRecording();
        } catch (Throwable th) {
            this.d.endRecording();
            throw th;
        }
    }
}
