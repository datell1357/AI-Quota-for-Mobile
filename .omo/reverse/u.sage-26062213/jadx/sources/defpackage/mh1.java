package defpackage;

import android.graphics.Canvas;
import android.graphics.RecordingCanvas;
import android.graphics.RenderNode;
import android.os.Build;
import android.widget.EdgeEffect;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mh1 extends kr0 implements jx0 {
    public final /* synthetic */ int D = 1;
    public final wa E;
    public final qy0 F;
    public Object G;

    public mh1(fv3 fv3Var, wa waVar, qy0 qy0Var, zr2 zr2Var) {
        this.E = waVar;
        this.F = qy0Var;
        this.G = zr2Var;
        G0(fv3Var);
    }

    public static boolean J0(float f, EdgeEffect edgeEffect, Canvas canvas) {
        if (f == 0.0f) {
            return edgeEffect.draw(canvas);
        }
        int iSave = canvas.save();
        canvas.rotate(f);
        boolean zDraw = edgeEffect.draw(canvas);
        canvas.restoreToCount(iSave);
        return zDraw;
    }

    public static boolean K0(float f, long j, EdgeEffect edgeEffect, Canvas canvas) {
        int iSave = canvas.save();
        canvas.rotate(f);
        canvas.translate(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)));
        boolean zDraw = edgeEffect.draw(canvas);
        canvas.restoreToCount(iSave);
        return zDraw;
    }

    @Override // defpackage.jx0
    public final void K(zy1 zy1Var) {
        boolean zK0;
        long j;
        char c;
        boolean z;
        boolean zJ0;
        float f;
        float f2;
        int i = this.D;
        wa waVar = this.E;
        qy0 qy0Var = this.F;
        switch (i) {
            case 0:
                zr2 zr2Var = (zr2) this.G;
                x20 x20Var = zy1Var.n;
                waVar.j(x20Var.d());
                if (mn3.c(x20Var.d())) {
                    zy1Var.a();
                    return;
                }
                zy1Var.a();
                waVar.d.getValue();
                Canvas canvasA = z8.a(x20Var.o.u());
                if (qy0.f(qy0Var.f)) {
                    zK0 = K0(270.0f, (((long) Float.floatToRawIntBits(-Float.intBitsToFloat((int) (x20Var.d() & 4294967295L)))) << 32) | (((long) Float.floatToRawIntBits(zy1Var.v(zr2Var.a(zy1Var.getLayoutDirection())))) & 4294967295L), qy0Var.c(), canvasA);
                } else {
                    zK0 = false;
                }
                if (qy0.f(qy0Var.d)) {
                    EdgeEffect edgeEffectE = qy0Var.e();
                    zK0 = K0(0.0f, (((long) Float.floatToRawIntBits(0.0f)) << 32) | (((long) Float.floatToRawIntBits(zy1Var.v(zr2Var.d()))) & 4294967295L), edgeEffectE, canvasA) || zK0;
                }
                if (qy0.f(qy0Var.g)) {
                    EdgeEffect edgeEffectD = qy0Var.d();
                    zK0 = K0(90.0f, (((long) Float.floatToRawIntBits(0.0f)) << 32) | (((long) Float.floatToRawIntBits(zy1Var.v(zr2Var.b(zy1Var.getLayoutDirection())) + (-((float) is0.V(Float.intBitsToFloat((int) (x20Var.d() >> 32))))))) & 4294967295L), edgeEffectD, canvasA) || zK0;
                }
                if (qy0.f(qy0Var.e)) {
                    EdgeEffect edgeEffectB = qy0Var.b();
                    float fV = zy1Var.v(zr2Var.c());
                    zK0 = K0(180.0f, (((long) Float.floatToRawIntBits(-Float.intBitsToFloat((int) (x20Var.d() >> 32)))) << 32) | (((long) Float.floatToRawIntBits((-Float.intBitsToFloat((int) (x20Var.d() & 4294967295L))) + fV)) & 4294967295L), edgeEffectB, canvasA) || zK0;
                }
                if (zK0) {
                    waVar.d();
                    return;
                }
                return;
            default:
                x20 x20Var2 = zy1Var.n;
                waVar.j(x20Var2.d());
                Canvas canvasA2 = z8.a(x20Var2.o.u());
                waVar.d.getValue();
                if (mn3.c(x20Var2.d())) {
                    zy1Var.a();
                    return;
                }
                if (!canvasA2.isHardwareAccelerated()) {
                    EdgeEffect edgeEffect = qy0Var.d;
                    if (edgeEffect != null) {
                        edgeEffect.finish();
                    }
                    EdgeEffect edgeEffect2 = qy0Var.e;
                    if (edgeEffect2 != null) {
                        edgeEffect2.finish();
                    }
                    EdgeEffect edgeEffect3 = qy0Var.f;
                    if (edgeEffect3 != null) {
                        edgeEffect3.finish();
                    }
                    EdgeEffect edgeEffect4 = qy0Var.g;
                    if (edgeEffect4 != null) {
                        edgeEffect4.finish();
                    }
                    EdgeEffect edgeEffect5 = qy0Var.h;
                    if (edgeEffect5 != null) {
                        edgeEffect5.finish();
                    }
                    EdgeEffect edgeEffect6 = qy0Var.i;
                    if (edgeEffect6 != null) {
                        edgeEffect6.finish();
                    }
                    EdgeEffect edgeEffect7 = qy0Var.j;
                    if (edgeEffect7 != null) {
                        edgeEffect7.finish();
                    }
                    EdgeEffect edgeEffect8 = qy0Var.k;
                    if (edgeEffect8 != null) {
                        edgeEffect8.finish();
                    }
                    zy1Var.a();
                    return;
                }
                float fV2 = zy1Var.v(30.0f);
                boolean z2 = qy0.f(qy0Var.d) || qy0.g(qy0Var.h) || qy0.f(qy0Var.e) || qy0.g(qy0Var.i);
                boolean z3 = qy0.f(qy0Var.f) || qy0.g(qy0Var.j) || qy0.f(qy0Var.g) || qy0.g(qy0Var.k);
                if (z2 && z3) {
                    j = 4294967295L;
                    c = ' ';
                    L0().setPosition(0, 0, canvasA2.getWidth(), canvasA2.getHeight());
                } else {
                    j = 4294967295L;
                    c = ' ';
                    if (z2) {
                        L0().setPosition(0, 0, (is0.V(fV2) * 2) + canvasA2.getWidth(), canvasA2.getHeight());
                    } else {
                        if (!z3) {
                            zy1Var.a();
                            return;
                        }
                        L0().setPosition(0, 0, canvasA2.getWidth(), (is0.V(fV2) * 2) + canvasA2.getHeight());
                    }
                }
                RecordingCanvas recordingCanvasBeginRecording = L0().beginRecording();
                boolean zG = qy0.g(qy0Var.j);
                hr2 hr2Var = hr2.o;
                if (zG) {
                    EdgeEffect edgeEffectA = qy0Var.j;
                    if (edgeEffectA == null) {
                        edgeEffectA = qy0Var.a(hr2Var);
                        qy0Var.j = edgeEffectA;
                    }
                    J0(90.0f, edgeEffectA, recordingCanvasBeginRecording);
                    edgeEffectA.finish();
                }
                if (qy0.f(qy0Var.f)) {
                    EdgeEffect edgeEffectC = qy0Var.c();
                    zJ0 = J0(270.0f, edgeEffectC, recordingCanvasBeginRecording);
                    if (qy0.g(qy0Var.f)) {
                        z = z3;
                        float fIntBitsToFloat = Float.intBitsToFloat((int) (waVar.c() & j));
                        EdgeEffect edgeEffectA2 = qy0Var.j;
                        if (edgeEffectA2 == null) {
                            edgeEffectA2 = qy0Var.a(hr2Var);
                            qy0Var.j = edgeEffectA2;
                        }
                        int i2 = Build.VERSION.SDK_INT;
                        float fC = i2 >= 31 ? zf.c(edgeEffectC) : 0.0f;
                        float f3 = 1.0f - fIntBitsToFloat;
                        if (i2 >= 31) {
                            zf.e(edgeEffectA2, fC, f3);
                        } else {
                            edgeEffectA2.onPull(fC, f3);
                        }
                    } else {
                        z = z3;
                    }
                } else {
                    z = z3;
                    zJ0 = false;
                }
                boolean zG2 = qy0.g(qy0Var.h);
                hr2 hr2Var2 = hr2.n;
                if (zG2) {
                    EdgeEffect edgeEffectA3 = qy0Var.h;
                    if (edgeEffectA3 == null) {
                        edgeEffectA3 = qy0Var.a(hr2Var2);
                        qy0Var.h = edgeEffectA3;
                    }
                    J0(180.0f, edgeEffectA3, recordingCanvasBeginRecording);
                    edgeEffectA3.finish();
                }
                if (qy0.f(qy0Var.d)) {
                    EdgeEffect edgeEffectE2 = qy0Var.e();
                    zJ0 = J0(0.0f, edgeEffectE2, recordingCanvasBeginRecording) || zJ0;
                    if (qy0.g(qy0Var.d)) {
                        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (waVar.c() >> c));
                        EdgeEffect edgeEffectA4 = qy0Var.h;
                        if (edgeEffectA4 == null) {
                            edgeEffectA4 = qy0Var.a(hr2Var2);
                            qy0Var.h = edgeEffectA4;
                        }
                        int i3 = Build.VERSION.SDK_INT;
                        float fC2 = i3 >= 31 ? zf.c(edgeEffectE2) : 0.0f;
                        if (i3 >= 31) {
                            zf.e(edgeEffectA4, fC2, fIntBitsToFloat2);
                        } else {
                            edgeEffectA4.onPull(fC2, fIntBitsToFloat2);
                        }
                    }
                }
                if (qy0.g(qy0Var.k)) {
                    EdgeEffect edgeEffectA5 = qy0Var.k;
                    if (edgeEffectA5 == null) {
                        edgeEffectA5 = qy0Var.a(hr2Var);
                        qy0Var.k = edgeEffectA5;
                    }
                    J0(270.0f, edgeEffectA5, recordingCanvasBeginRecording);
                    edgeEffectA5.finish();
                }
                if (qy0.f(qy0Var.g)) {
                    EdgeEffect edgeEffectD2 = qy0Var.d();
                    zJ0 = J0(90.0f, edgeEffectD2, recordingCanvasBeginRecording) || zJ0;
                    if (qy0.g(qy0Var.g)) {
                        float fIntBitsToFloat3 = Float.intBitsToFloat((int) (waVar.c() & j));
                        EdgeEffect edgeEffectA6 = qy0Var.k;
                        if (edgeEffectA6 == null) {
                            edgeEffectA6 = qy0Var.a(hr2Var);
                            qy0Var.k = edgeEffectA6;
                        }
                        int i4 = Build.VERSION.SDK_INT;
                        float fC3 = i4 >= 31 ? zf.c(edgeEffectD2) : 0.0f;
                        if (i4 >= 31) {
                            zf.e(edgeEffectA6, fC3, fIntBitsToFloat3);
                        } else {
                            edgeEffectA6.onPull(fC3, fIntBitsToFloat3);
                        }
                    }
                }
                if (qy0.g(qy0Var.i)) {
                    EdgeEffect edgeEffectA7 = qy0Var.i;
                    if (edgeEffectA7 == null) {
                        edgeEffectA7 = qy0Var.a(hr2Var2);
                        qy0Var.i = edgeEffectA7;
                    }
                    J0(0.0f, edgeEffectA7, recordingCanvasBeginRecording);
                    edgeEffectA7.finish();
                }
                if (qy0.f(qy0Var.e)) {
                    EdgeEffect edgeEffectB2 = qy0Var.b();
                    boolean z4 = J0(180.0f, edgeEffectB2, recordingCanvasBeginRecording) || zJ0;
                    if (qy0.g(qy0Var.e)) {
                        float fIntBitsToFloat4 = Float.intBitsToFloat((int) (waVar.c() >> c));
                        EdgeEffect edgeEffectA8 = qy0Var.i;
                        if (edgeEffectA8 == null) {
                            edgeEffectA8 = qy0Var.a(hr2Var2);
                            qy0Var.i = edgeEffectA8;
                        }
                        int i5 = Build.VERSION.SDK_INT;
                        float fC4 = i5 >= 31 ? zf.c(edgeEffectB2) : 0.0f;
                        float f4 = 1.0f - fIntBitsToFloat4;
                        if (i5 >= 31) {
                            zf.e(edgeEffectA8, fC4, f4);
                        } else {
                            edgeEffectA8.onPull(fC4, f4);
                        }
                    }
                    zJ0 = z4;
                }
                if (zJ0) {
                    waVar.d();
                }
                float f5 = z ? 0.0f : fV2;
                float f6 = z2 ? 0.0f : fV2;
                hy1 layoutDirection = zy1Var.getLayoutDirection();
                y8 y8Var = new y8();
                y8Var.a = recordingCanvasBeginRecording;
                long jD = x20Var2.d();
                as0 as0VarV = x20Var2.o.v();
                hy1 hy1VarX = x20Var2.o.x();
                v20 v20VarU = x20Var2.o.u();
                long jZ = x20Var2.o.z();
                eh ehVar = x20Var2.o;
                zh1 zh1Var = (zh1) ehVar.p;
                ehVar.I(zy1Var);
                ehVar.J(layoutDirection);
                ehVar.H(y8Var);
                ehVar.K(jD);
                ehVar.p = null;
                y8Var.j();
                try {
                    ((dh1) x20Var2.o.o).t(f5, f6);
                    try {
                        zy1Var.a();
                        y8Var.h();
                        eh ehVar2 = x20Var2.o;
                        ehVar2.I(as0VarV);
                        ehVar2.J(hy1VarX);
                        ehVar2.H(v20VarU);
                        ehVar2.K(jZ);
                        ehVar2.p = zh1Var;
                        L0().endRecording();
                        int iSave = canvasA2.save();
                        canvasA2.translate(f, f2);
                        canvasA2.drawRenderNode(L0());
                        canvasA2.restoreToCount(iSave);
                        return;
                    } finally {
                        ((dh1) x20Var2.o.o).t(-f5, -f6);
                    }
                } catch (Throwable th) {
                    y8Var.h();
                    eh ehVar3 = x20Var2.o;
                    ehVar3.I(as0VarV);
                    ehVar3.J(hy1VarX);
                    ehVar3.H(v20VarU);
                    ehVar3.K(jZ);
                    ehVar3.p = zh1Var;
                    throw th;
                }
        }
    }

    public RenderNode L0() {
        RenderNode renderNode = (RenderNode) this.G;
        if (renderNode != null) {
            return renderNode;
        }
        RenderNode renderNodeG = fi1.g();
        this.G = renderNodeG;
        return renderNodeG;
    }

    public mh1(fv3 fv3Var, wa waVar, qy0 qy0Var) {
        this.E = waVar;
        this.F = qy0Var;
        G0(fv3Var);
    }
}
