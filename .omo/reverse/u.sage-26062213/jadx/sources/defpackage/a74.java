package defpackage;

import android.os.Build;
import android.text.Spannable;
import android.text.SpannableString;
import java.util.stream.IntStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class a74 implements Spannable {
    public boolean n = false;
    public Spannable o;

    public a74(Spannable spannable) {
        this.o = spannable;
    }

    public final void a() {
        Spannable spannable = this.o;
        if (!this.n) {
            if ((Build.VERSION.SDK_INT < 28 ? new ls3(8) : new z64(8)).e(spannable)) {
                this.o = new SpannableString(spannable);
            }
        }
        this.n = true;
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i) {
        return this.o.charAt(i);
    }

    @Override // java.lang.CharSequence
    public final IntStream chars() {
        return this.o.chars();
    }

    @Override // java.lang.CharSequence
    public final IntStream codePoints() {
        return this.o.codePoints();
    }

    @Override // android.text.Spanned
    public final int getSpanEnd(Object obj) {
        return this.o.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanFlags(Object obj) {
        return this.o.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanStart(Object obj) {
        return this.o.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public final Object[] getSpans(int i, int i2, Class cls) {
        return this.o.getSpans(i, i2, cls);
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.o.length();
    }

    @Override // android.text.Spanned
    public final int nextSpanTransition(int i, int i2, Class cls) {
        return this.o.nextSpanTransition(i, i2, cls);
    }

    @Override // android.text.Spannable
    public final void removeSpan(Object obj) {
        a();
        this.o.removeSpan(obj);
    }

    @Override // android.text.Spannable
    public final void setSpan(Object obj, int i, int i2, int i3) {
        a();
        this.o.setSpan(obj, i, i2, i3);
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i, int i2) {
        return this.o.subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return this.o.toString();
    }
}
