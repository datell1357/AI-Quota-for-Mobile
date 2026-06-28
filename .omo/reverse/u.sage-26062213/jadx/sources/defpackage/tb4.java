package defpackage;

import android.graphics.Canvas;
import android.graphics.Outline;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tb4 extends View {
    public static final wt0 z = new wt0(1);
    public final hx0 n;
    public final y20 o;
    public final x20 p;
    public boolean q;
    public Outline r;
    public boolean s;
    public as0 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public hy1 f336u;
    public pe1 v;
    public zh1 w;
    public float x;
    public float y;

    public tb4(hx0 hx0Var, y20 y20Var, x20 x20Var) {
        super(hx0Var.getContext());
        this.n = hx0Var;
        this.o = y20Var;
        this.p = x20Var;
        setOutlineProvider(z);
        this.s = true;
        this.t = c75.d;
        this.f336u = hy1.n;
        bi1.a.getClass();
        this.v = l9.O;
        setWillNotDraw(false);
        setClipBounds(null);
    }

    @Override // android.view.View
    public final void dispatchDraw(Canvas canvas) {
        y8 y8Var;
        as0 as0VarV;
        hy1 hy1VarX;
        v20 v20VarU;
        long jZ;
        zh1 zh1Var;
        float f = this.x;
        x20 x20Var = this.p;
        y20 y20Var = this.o;
        if (f > 0.0f || this.y > 0.0f) {
            int iSave = canvas.save();
            canvas.translate(this.x, this.y);
            y8Var = y20Var.a;
            Canvas canvas2 = y8Var.a;
            y8Var.a = canvas;
            as0 as0Var = this.t;
            hy1 hy1Var = this.f336u;
            float width = getWidth();
            long jFloatToRawIntBits = (4294967295L & ((long) Float.floatToRawIntBits(getHeight()))) | (Float.floatToRawIntBits(width) << 32);
            zh1 zh1Var2 = this.w;
            pe1 pe1Var = this.v;
            as0VarV = x20Var.z().v();
            hy1VarX = x20Var.z().x();
            v20VarU = x20Var.z().u();
            jZ = x20Var.z().z();
            zh1Var = (zh1) x20Var.z().p;
            eh ehVarZ = x20Var.z();
            ehVarZ.I(as0Var);
            ehVarZ.J(hy1Var);
            ehVarZ.H(y8Var);
            ehVarZ.K(jFloatToRawIntBits);
            ehVarZ.p = zh1Var2;
            y8Var.j();
            try {
                pe1Var.k(x20Var);
                y8Var.h();
                eh ehVarZ2 = x20Var.z();
                ehVarZ2.I(as0VarV);
                ehVarZ2.J(hy1VarX);
                ehVarZ2.H(v20VarU);
                ehVarZ2.K(jZ);
                ehVarZ2.p = zh1Var;
                y20Var.a.a = canvas2;
                canvas.restoreToCount(iSave);
            } finally {
            }
        } else {
            y8Var = y20Var.a;
            Canvas canvas3 = y8Var.a;
            y8Var.a = canvas;
            as0 as0Var2 = this.t;
            hy1 hy1Var2 = this.f336u;
            float width2 = getWidth();
            long jFloatToRawIntBits2 = (4294967295L & ((long) Float.floatToRawIntBits(getHeight()))) | (Float.floatToRawIntBits(width2) << 32);
            zh1 zh1Var3 = this.w;
            pe1 pe1Var2 = this.v;
            as0VarV = x20Var.z().v();
            hy1VarX = x20Var.z().x();
            v20VarU = x20Var.z().u();
            jZ = x20Var.z().z();
            zh1Var = (zh1) x20Var.z().p;
            eh ehVarZ3 = x20Var.z();
            ehVarZ3.I(as0Var2);
            ehVarZ3.J(hy1Var2);
            ehVarZ3.H(y8Var);
            ehVarZ3.K(jFloatToRawIntBits2);
            ehVarZ3.p = zh1Var3;
            y8Var.j();
            try {
                pe1Var2.k(x20Var);
                y8Var.h();
                eh ehVarZ4 = x20Var.z();
                ehVarZ4.I(as0VarV);
                ehVarZ4.J(hy1VarX);
                ehVarZ4.H(v20VarU);
                ehVarZ4.K(jZ);
                ehVarZ4.p = zh1Var;
                y20Var.a.a = canvas3;
            } finally {
            }
        }
        this.q = false;
    }

    public final boolean getCanUseCompositingLayer$ui_graphics() {
        return this.s;
    }

    public final y20 getCanvasHolder() {
        return this.o;
    }

    public final View getOwnerView() {
        return this.n;
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return this.s;
    }

    @Override // android.view.View
    public final void invalidate() {
        if (this.q) {
            return;
        }
        this.q = true;
        super.invalidate();
    }

    public final void setCanUseCompositingLayer$ui_graphics(boolean z2) {
        if (this.s != z2) {
            this.s = z2;
            invalidate();
        }
    }

    public final void setInvalidated(boolean z2) {
        this.q = z2;
    }

    @Override // android.view.View
    public final void forceLayout() {
    }

    @Override // android.view.View
    public final void onLayout(boolean z2, int i, int i2, int i3, int i4) {
    }
}
