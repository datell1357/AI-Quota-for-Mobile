package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gv2 extends ReplacementSpan {
    public Paint.FontMetricsInt n;
    public int o;
    public int p;
    public boolean q;

    public final Paint.FontMetricsInt a() {
        Paint.FontMetricsInt fontMetricsInt = this.n;
        if (fontMetricsInt != null) {
            return fontMetricsInt;
        }
        nt1.X("fontMetrics");
        throw null;
    }

    public final int b() {
        if (!this.q) {
            br1.b("PlaceholderSpan is not laid out yet.");
        }
        return this.p;
    }

    public final int c() {
        if (!this.q) {
            br1.b("PlaceholderSpan is not laid out yet.");
        }
        return this.o;
    }

    @Override // android.text.style.ReplacementSpan
    public final int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        this.q = true;
        paint.getTextSize();
        this.n = paint.getFontMetricsInt();
        if (a().descent <= a().ascent) {
            br1.a("Invalid fontMetrics: line height can not be negative.");
        }
        this.o = (int) Math.ceil(0.0d);
        this.p = (int) Math.ceil(0.0d);
        if (fontMetricsInt != null) {
            fontMetricsInt.ascent = a().ascent;
            fontMetricsInt.descent = a().descent;
            fontMetricsInt.leading = a().leading;
            if (fontMetricsInt.ascent > (-b())) {
                fontMetricsInt.ascent = -b();
            }
            fontMetricsInt.top = Math.min(a().top, fontMetricsInt.ascent);
            fontMetricsInt.bottom = Math.max(a().bottom, fontMetricsInt.descent);
        }
        return c();
    }

    @Override // android.text.style.ReplacementSpan
    public final void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
    }
}
