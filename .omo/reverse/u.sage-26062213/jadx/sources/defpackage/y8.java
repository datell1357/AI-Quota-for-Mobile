package defpackage;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class y8 implements v20 {
    public Canvas a = z8.a;
    public Rect b;
    public Rect c;

    @Override // defpackage.v20
    public final void a(float f, float f2) {
        this.a.scale(f, f2);
    }

    @Override // defpackage.v20
    public final void b(float f) {
        this.a.rotate(f);
    }

    @Override // defpackage.v20
    public final void c(float f, long j, lb lbVar) {
        this.a.drawCircle(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)), f, (Paint) lbVar.o);
    }

    @Override // defpackage.v20
    public final void d(gb gbVar, long j, long j2, long j3, lb lbVar) {
        if (this.b == null) {
            this.b = new Rect();
            this.c = new Rect();
        }
        Canvas canvas = this.a;
        if (!(gbVar instanceof gb)) {
            p61.s("Unable to obtain android.graphics.Bitmap");
            return;
        }
        Bitmap bitmap = gbVar.a;
        Rect rect = this.b;
        rect.getClass();
        int i = (int) (j >> 32);
        rect.left = i;
        int i2 = (int) (j & 4294967295L);
        rect.top = i2;
        rect.right = i + ((int) (j2 >> 32));
        rect.bottom = i2 + ((int) (j2 & 4294967295L));
        Rect rect2 = this.c;
        rect2.getClass();
        rect2.left = 0;
        rect2.top = 0;
        rect2.right = (int) (j3 >> 32);
        rect2.bottom = (int) (j3 & 4294967295L);
        canvas.drawBitmap(bitmap, rect, rect2, (Paint) lbVar.o);
    }

    @Override // defpackage.v20
    public final void e(float f, float f2, float f3, float f4, int i) {
        this.a.clipRect(f, f2, f3, f4, i == 0 ? Region.Op.DIFFERENCE : Region.Op.INTERSECT);
    }

    @Override // defpackage.v20
    public final void f(float f, float f2) {
        this.a.translate(f, f2);
    }

    @Override // defpackage.v20
    public final void g(sb sbVar, lb lbVar) {
        Canvas canvas = this.a;
        if (sbVar instanceof sb) {
            canvas.drawPath(sbVar.a, (Paint) lbVar.o);
        } else {
            p61.s("Unable to obtain android.graphics.Path");
        }
    }

    @Override // defpackage.v20
    public final void h() {
        this.a.restore();
    }

    @Override // defpackage.v20
    public final void i(float f, float f2, float f3, float f4, float f5, float f6, lb lbVar) {
        this.a.drawRoundRect(f, f2, f3, f4, f5, f6, (Paint) lbVar.o);
    }

    @Override // defpackage.v20
    public final void j() {
        this.a.save();
    }

    @Override // defpackage.v20
    public final void k(long j, long j2, lb lbVar) {
        this.a.drawLine(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)), Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (j2 & 4294967295L)), (Paint) lbVar.o);
    }

    @Override // defpackage.v20
    public final void l() {
        k30.o(this.a, false);
    }

    @Override // defpackage.v20
    public final void m(l33 l33Var, lb lbVar) {
        this.a.saveLayer(l33Var.a, l33Var.b, l33Var.c, l33Var.d, (Paint) lbVar.o, 31);
    }

    @Override // defpackage.v20
    public final void n(float f, float f2, float f3, float f4, lb lbVar) {
        this.a.drawRect(f, f2, f3, f4, on4.A(lbVar));
    }

    @Override // defpackage.v20
    public final void o(float[] fArr) {
        if (gg4.J(fArr)) {
            return;
        }
        Matrix matrix = new Matrix();
        fl4.v(matrix, fArr);
        this.a.concat(matrix);
    }

    @Override // defpackage.v20
    public final void p() {
        k30.o(this.a, true);
    }

    @Override // defpackage.v20
    public final void q(sb sbVar) {
        Canvas canvas = this.a;
        if (sbVar instanceof sb) {
            canvas.clipPath(sbVar.a, Region.Op.INTERSECT);
        } else {
            p61.s("Unable to obtain android.graphics.Path");
        }
    }

    @Override // defpackage.v20
    public final void r(float f, float f2, float f3, float f4, float f5, float f6, lb lbVar) {
        this.a.drawArc(f, f2, f3, f4, f5, f6, false, (Paint) lbVar.o);
    }
}
