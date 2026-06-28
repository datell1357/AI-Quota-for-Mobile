package defpackage;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import java.util.Arrays;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class xg extends TextView {
    public final gg n;
    public final tg o;
    public final gw4 p;
    public jg q;
    public boolean r;
    public dh1 s;
    public Future t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xg(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        qz3.a(context);
        this.r = false;
        this.s = null;
        hy3.a(this, getContext());
        gg ggVar = new gg(this);
        this.n = ggVar;
        ggVar.b(attributeSet, i);
        tg tgVar = new tg(this);
        this.o = tgVar;
        tgVar.d(attributeSet, i);
        tgVar.b();
        gw4 gw4Var = new gw4(4, false);
        gw4Var.o = this;
        this.p = gw4Var;
        jg emojiTextViewHelper = getEmojiTextViewHelper();
        TypedArray typedArrayObtainStyledAttributes = emojiTextViewHelper.a.getContext().obtainStyledAttributes(attributeSet, i13.g, i, 0);
        try {
            boolean z = typedArrayObtainStyledAttributes.hasValue(14) ? typedArrayObtainStyledAttributes.getBoolean(14, true) : true;
            typedArrayObtainStyledAttributes.recycle();
            ((qj0) emojiTextViewHelper.b.n).X(z);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    private jg getEmojiTextViewHelper() {
        if (this.q == null) {
            this.q = new jg(this);
        }
        return this.q;
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        gg ggVar = this.n;
        if (ggVar != null) {
            ggVar.a();
        }
        tg tgVar = this.o;
        if (tgVar != null) {
            tgVar.b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (fc4.a) {
            return super.getAutoSizeMaxTextSize();
        }
        tg tgVar = this.o;
        if (tgVar != null) {
            return Math.round(tgVar.i.e);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (fc4.a) {
            return super.getAutoSizeMinTextSize();
        }
        tg tgVar = this.o;
        if (tgVar != null) {
            return Math.round(tgVar.i.d);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (fc4.a) {
            return super.getAutoSizeStepGranularity();
        }
        tg tgVar = this.o;
        if (tgVar != null) {
            return Math.round(tgVar.i.c);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (fc4.a) {
            return super.getAutoSizeTextAvailableSizes();
        }
        tg tgVar = this.o;
        return tgVar != null ? tgVar.i.f : new int[0];
    }

    @Override // android.widget.TextView
    public int getAutoSizeTextType() {
        if (fc4.a) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        tg tgVar = this.o;
        if (tgVar != null) {
            return tgVar.i.a;
        }
        return 0;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        ActionMode.Callback customSelectionActionModeCallback = super.getCustomSelectionActionModeCallback();
        return (!(customSelectionActionModeCallback instanceof ey3) || Build.VERSION.SDK_INT < 26) ? customSelectionActionModeCallback : ((ey3) customSelectionActionModeCallback).a;
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return getPaddingTop() - getPaint().getFontMetricsInt().top;
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return getPaddingBottom() + getPaint().getFontMetricsInt().bottom;
    }

    public ug getSuperCaller() {
        if (this.s == null) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 34) {
                this.s = new wg(this);
            } else if (i >= 28) {
                this.s = new vg(this);
            } else if (i >= 26) {
                this.s = new dh1(this);
            }
        }
        return this.s;
    }

    public ColorStateList getSupportBackgroundTintList() {
        me0 me0Var;
        gg ggVar = this.n;
        if (ggVar == null || (me0Var = (me0) ggVar.e) == null) {
            return null;
        }
        return (ColorStateList) me0Var.c;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        me0 me0Var;
        gg ggVar = this.n;
        if (ggVar == null || (me0Var = (me0) ggVar.e) == null) {
            return null;
        }
        return (PorterDuff.Mode) me0Var.d;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        me0 me0Var = this.o.h;
        if (me0Var != null) {
            return (ColorStateList) me0Var.c;
        }
        return null;
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        me0 me0Var = this.o.h;
        if (me0Var != null) {
            return (PorterDuff.Mode) me0Var.d;
        }
        return null;
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        Future future = this.t;
        if (future != null) {
            try {
                this.t = null;
                if (future.get() != null) {
                    throw new ClassCastException();
                }
                if (Build.VERSION.SDK_INT >= 29) {
                    throw null;
                }
                kt4.O(this);
                throw null;
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
        return super.getText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        gw4 gw4Var;
        if (Build.VERSION.SDK_INT >= 28 || (gw4Var = this.p) == null) {
            return super.getTextClassifier();
        }
        TextClassifier textClassifier = (TextClassifier) gw4Var.p;
        return textClassifier == null ? ng.a((xg) gw4Var.o) : textClassifier;
    }

    public gx2 getTextMetricsParamsCompat() {
        return kt4.O(this);
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        int i;
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.o.getClass();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 30 && inputConnectionOnCreateInputConnection != null) {
            CharSequence text = getText();
            if (i2 >= 30) {
                e3.h(editorInfo, text);
            } else {
                text.getClass();
                if (i2 >= 30) {
                    e3.h(editorInfo, text);
                } else {
                    int i3 = editorInfo.initialSelStart;
                    int i4 = editorInfo.initialSelEnd;
                    int i5 = i3 > i4 ? i4 : i3;
                    if (i3 <= i4) {
                        i3 = i4;
                    }
                    int length = text.length();
                    if (i5 < 0 || i3 > length || (i = editorInfo.inputType & 4095) == 129 || i == 225 || i == 18) {
                        ca.K(editorInfo, null, 0, 0);
                    } else if (length <= 2048) {
                        ca.K(editorInfo, text, i5, i3);
                    } else {
                        int i6 = i3 - i5;
                        int i7 = i6 > 1024 ? 0 : i6;
                        int i8 = 2048 - i7;
                        int iMin = Math.min(text.length() - i3, i8 - Math.min(i5, (int) (((double) i8) * 0.8d)));
                        int iMin2 = Math.min(i5, i8 - iMin);
                        int i9 = i5 - iMin2;
                        if (Character.isLowSurrogate(text.charAt(i9))) {
                            i9++;
                            iMin2--;
                        }
                        if (Character.isHighSurrogate(text.charAt((i3 + iMin) - 1))) {
                            iMin--;
                        }
                        int i10 = iMin2 + i7;
                        ca.K(editorInfo, i7 != i6 ? TextUtils.concat(text.subSequence(i9, i9 + iMin2), text.subSequence(i3, iMin + i3)) : text.subSequence(i9, i10 + iMin + i9), iMin2, i10);
                    }
                }
            }
        }
        if (inputConnectionOnCreateInputConnection != null && editorInfo.hintText == null) {
            for (ViewParent parent = getParent(); parent instanceof View; parent = parent.getParent()) {
            }
        }
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        int i = Build.VERSION.SDK_INT;
        if (i < 30 || i >= 33 || !onCheckIsTextEditor()) {
            return;
        }
        ((InputMethodManager) getContext().getSystemService("input_method")).isActive(this);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        tg tgVar = this.o;
        if (tgVar == null || fc4.a) {
            return;
        }
        tgVar.i.a();
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        Future future = this.t;
        if (future != null) {
            try {
                this.t = null;
                if (future.get() != null) {
                    throw new ClassCastException();
                }
                if (Build.VERSION.SDK_INT >= 29) {
                    throw null;
                }
                kt4.O(this);
                throw null;
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        tg tgVar = this.o;
        if (tgVar == null || fc4.a) {
            return;
        }
        ch chVar = tgVar.i;
        if (chVar.a != 0) {
            chVar.a();
        }
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        ((qj0) getEmojiTextViewHelper().b.n).W(z);
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        if (fc4.a) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        tg tgVar = this.o;
        if (tgVar != null) {
            ch chVar = tgVar.i;
            DisplayMetrics displayMetrics = chVar.j.getResources().getDisplayMetrics();
            chVar.i(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (chVar.g()) {
                chVar.a();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) {
        if (fc4.a) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        tg tgVar = this.o;
        if (tgVar != null) {
            ch chVar = tgVar.i;
            chVar.getClass();
            int length = iArr.length;
            if (length > 0) {
                int[] iArrCopyOf = new int[length];
                if (i == 0) {
                    iArrCopyOf = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = chVar.j.getResources().getDisplayMetrics();
                    for (int i2 = 0; i2 < length; i2++) {
                        iArrCopyOf[i2] = Math.round(TypedValue.applyDimension(i, iArr[i2], displayMetrics));
                    }
                }
                chVar.f = ch.b(iArrCopyOf);
                if (!chVar.h()) {
                    mk0.g(Arrays.toString(iArr), "None of the preset sizes is valid: ");
                    return;
                }
            } else {
                chVar.g = false;
            }
            if (chVar.g()) {
                chVar.a();
            }
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (fc4.a) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        tg tgVar = this.o;
        if (tgVar != null) {
            ch chVar = tgVar.i;
            if (i == 0) {
                chVar.a = 0;
                chVar.d = -1.0f;
                chVar.e = -1.0f;
                chVar.c = -1.0f;
                chVar.f = new int[0];
                chVar.b = false;
                return;
            }
            if (i != 1) {
                chVar.getClass();
                k21.f(di0.q(i, "Unknown auto-size text type: "));
                return;
            }
            DisplayMetrics displayMetrics = chVar.j.getResources().getDisplayMetrics();
            chVar.i(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (chVar.g()) {
                chVar.a();
            }
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        gg ggVar = this.n;
        if (ggVar != null) {
            ggVar.a = -1;
            ggVar.f(null);
            ggVar.a();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        gg ggVar = this.n;
        if (ggVar != null) {
            ggVar.d(i);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        tg tgVar = this.o;
        if (tgVar != null) {
            tgVar.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        tg tgVar = this.o;
        if (tgVar != null) {
            tgVar.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i != 0 ? zf5.H(context, i) : null, i2 != 0 ? zf5.H(context, i2) : null, i3 != 0 ? zf5.H(context, i3) : null, i4 != 0 ? zf5.H(context, i4) : null);
        tg tgVar = this.o;
        if (tgVar != null) {
            tgVar.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        setCompoundDrawablesWithIntrinsicBounds(i != 0 ? zf5.H(context, i) : null, i2 != 0 ? zf5.H(context, i2) : null, i3 != 0 ? zf5.H(context, i3) : null, i4 != 0 ? zf5.H(context, i4) : null);
        tg tgVar = this.o;
        if (tgVar != null) {
            tgVar.b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 26 && i <= 27 && !(callback instanceof ey3) && callback != null) {
            callback = new ey3(callback, this);
        }
        super.setCustomSelectionActionModeCallback(callback);
    }

    public void setEmojiCompatEnabled(boolean z) {
        ((qj0) getEmojiTextViewHelper().b.n).X(z);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(((qj0) getEmojiTextViewHelper().b.n).L(inputFilterArr));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            getSuperCaller().i(i);
        } else {
            kt4.c0(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            getSuperCaller().e(i);
        } else {
            kt4.d0(this, i);
        }
    }

    @Override // android.widget.TextView
    public final void setLineHeight(int i, float f) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 34) {
            getSuperCaller().k(i, f);
        } else if (i2 >= 34) {
            s2.k(this, i, f);
        } else {
            kt4.e0(this, Math.round(TypedValue.applyDimension(i, f, getResources().getDisplayMetrics())));
        }
    }

    public void setPrecomputedText(hx2 hx2Var) {
        if (Build.VERSION.SDK_INT >= 29) {
            throw null;
        }
        kt4.O(this);
        throw null;
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        gg ggVar = this.n;
        if (ggVar != null) {
            ggVar.g(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        gg ggVar = this.n;
        if (ggVar != null) {
            ggVar.h(mode);
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        tg tgVar = this.o;
        if (tgVar.h == null) {
            tgVar.h = new me0();
        }
        me0 me0Var = tgVar.h;
        me0Var.c = colorStateList;
        me0Var.b = colorStateList != null;
        tgVar.b = me0Var;
        tgVar.c = me0Var;
        tgVar.d = me0Var;
        tgVar.e = me0Var;
        tgVar.f = me0Var;
        tgVar.g = me0Var;
        tgVar.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        tg tgVar = this.o;
        if (tgVar.h == null) {
            tgVar.h = new me0();
        }
        me0 me0Var = tgVar.h;
        me0Var.d = mode;
        me0Var.a = mode != null;
        tgVar.b = me0Var;
        tgVar.c = me0Var;
        tgVar.d = me0Var;
        tgVar.e = me0Var;
        tgVar.f = me0Var;
        tgVar.g = me0Var;
        tgVar.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        tg tgVar = this.o;
        if (tgVar != null) {
            tgVar.e(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        gw4 gw4Var;
        if (Build.VERSION.SDK_INT >= 28 || (gw4Var = this.p) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            gw4Var.p = textClassifier;
        }
    }

    public void setTextFuture(Future<hx2> future) {
        this.t = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(gx2 gx2Var) {
        TextDirectionHeuristic textDirectionHeuristic;
        TextDirectionHeuristic textDirectionHeuristic2 = gx2Var.b;
        TextDirectionHeuristic textDirectionHeuristic3 = TextDirectionHeuristics.FIRSTSTRONG_RTL;
        int i = 1;
        if (textDirectionHeuristic2 != textDirectionHeuristic3 && textDirectionHeuristic2 != (textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR)) {
            if (textDirectionHeuristic2 == TextDirectionHeuristics.ANYRTL_LTR) {
                i = 2;
            } else if (textDirectionHeuristic2 == TextDirectionHeuristics.LTR) {
                i = 3;
            } else if (textDirectionHeuristic2 == TextDirectionHeuristics.RTL) {
                i = 4;
            } else if (textDirectionHeuristic2 == TextDirectionHeuristics.LOCALE) {
                i = 5;
            } else if (textDirectionHeuristic2 == textDirectionHeuristic) {
                i = 6;
            } else if (textDirectionHeuristic2 == textDirectionHeuristic3) {
                i = 7;
            }
        }
        setTextDirection(i);
        getPaint().set(gx2Var.a);
        setBreakStrategy(gx2Var.c);
        setHyphenationFrequency(gx2Var.d);
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i, float f) {
        boolean z = fc4.a;
        if (z) {
            super.setTextSize(i, f);
            return;
        }
        tg tgVar = this.o;
        if (tgVar != null) {
            ch chVar = tgVar.i;
            if (z || chVar.a != 0) {
                return;
            }
            chVar.f(i, f);
        }
    }

    @Override // android.widget.TextView
    public final void setTypeface(Typeface typeface, int i) {
        Typeface typefaceCreate;
        if (this.r) {
            return;
        }
        if (typeface == null || i <= 0) {
            typefaceCreate = null;
        } else {
            Context context = getContext();
            nt1 nt1Var = s44.a;
            if (context == null) {
                k21.f("Context cannot be null");
                return;
            }
            typefaceCreate = Typeface.create(typeface, i);
        }
        this.r = true;
        if (typefaceCreate != null) {
            typeface = typefaceCreate;
        }
        try {
            super.setTypeface(typeface, i);
        } finally {
            this.r = false;
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i) {
        kt4.e0(this, i);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        tg tgVar = this.o;
        if (tgVar != null) {
            tgVar.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        tg tgVar = this.o;
        if (tgVar != null) {
            tgVar.b();
        }
    }

    public xg(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }
}
