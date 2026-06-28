package defpackage;

import android.graphics.Paint;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.UpdateAppearance;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lx0 extends CharacterStyle implements UpdateAppearance {
    public final tv4 n;

    public lx0(tv4 tv4Var) {
        this.n = tv4Var;
    }

    @Override // android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        if (textPaint != null) {
            t51 t51Var = t51.f;
            tv4 tv4Var = this.n;
            if (nt1.g(tv4Var, t51Var)) {
                textPaint.setStyle(Paint.Style.FILL);
                return;
            }
            if (!(tv4Var instanceof ht3)) {
                p61.x();
                return;
            }
            textPaint.setStyle(Paint.Style.STROKE);
            ht3 ht3Var = (ht3) tv4Var;
            textPaint.setStrokeWidth(ht3Var.f);
            textPaint.setStrokeMiter(ht3Var.g);
            int i = ht3Var.i;
            textPaint.setStrokeJoin(i == 0 ? Paint.Join.MITER : i == 1 ? Paint.Join.ROUND : i == 2 ? Paint.Join.BEVEL : Paint.Join.MITER);
            int i2 = ht3Var.h;
            textPaint.setStrokeCap(i2 == 0 ? Paint.Cap.BUTT : i2 == 1 ? Paint.Cap.ROUND : i2 == 2 ? Paint.Cap.SQUARE : Paint.Cap.BUTT);
            textPaint.setPathEffect(null);
        }
    }
}
