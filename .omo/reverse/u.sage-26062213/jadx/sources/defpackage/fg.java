package defpackage;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AutoCompleteTextView;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class fg extends AutoCompleteTextView {
    public static final int[] q = {R.attr.popupBackground};
    public final gg n;
    public final tg o;
    public final wu4 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fg(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, u.sage.R.attr.autoCompleteTextViewStyle);
        qz3.a(context);
        hy3.a(this, getContext());
        ui3 ui3VarH = ui3.h(getContext(), attributeSet, q, u.sage.R.attr.autoCompleteTextViewStyle);
        if (((TypedArray) ui3VarH.p).hasValue(0)) {
            setDropDownBackgroundDrawable(ui3VarH.e(0));
        }
        ui3VarH.j();
        gg ggVar = new gg(this);
        this.n = ggVar;
        ggVar.b(attributeSet, u.sage.R.attr.autoCompleteTextViewStyle);
        tg tgVar = new tg(this);
        this.o = tgVar;
        tgVar.d(attributeSet, u.sage.R.attr.autoCompleteTextViewStyle);
        tgVar.b();
        wu4 wu4Var = new wu4(this);
        this.p = wu4Var;
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, i13.g, u.sage.R.attr.autoCompleteTextViewStyle, 0);
        try {
            boolean z = typedArrayObtainStyledAttributes.hasValue(14) ? typedArrayObtainStyledAttributes.getBoolean(14, true) : true;
            typedArrayObtainStyledAttributes.recycle();
            wu4Var.u(z);
            KeyListener keyListener = getKeyListener();
            if (keyListener instanceof NumberKeyListener) {
                return;
            }
            boolean zIsFocusable = super.isFocusable();
            boolean zIsClickable = super.isClickable();
            boolean zIsLongClickable = super.isLongClickable();
            int inputType = super.getInputType();
            KeyListener keyListenerO = wu4Var.o(keyListener);
            if (keyListenerO == keyListener) {
                return;
            }
            super.setKeyListener(keyListenerO);
            super.setRawInputType(inputType);
            super.setFocusable(zIsFocusable);
            super.setClickable(zIsClickable);
            super.setLongClickable(zIsLongClickable);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
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
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        ActionMode.Callback customSelectionActionModeCallback = super.getCustomSelectionActionModeCallback();
        return (!(customSelectionActionModeCallback instanceof ey3) || Build.VERSION.SDK_INT < 26) ? customSelectionActionModeCallback : ((ey3) customSelectionActionModeCallback).a;
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

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        if (inputConnectionOnCreateInputConnection != null && editorInfo.hintText == null) {
            for (ViewParent parent = getParent(); parent instanceof View; parent = parent.getParent()) {
            }
        }
        dh1 dh1Var = (dh1) this.p.o;
        if (inputConnectionOnCreateInputConnection == null) {
            dh1Var.getClass();
            return null;
        }
        gw4 gw4Var = (gw4) dh1Var.n;
        gw4Var.getClass();
        return inputConnectionOnCreateInputConnection instanceof nz0 ? inputConnectionOnCreateInputConnection : new nz0((fg) gw4Var.o, inputConnectionOnCreateInputConnection, editorInfo);
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
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 26 && i <= 27 && !(callback instanceof ey3) && callback != null) {
            callback = new ey3(callback, this);
        }
        super.setCustomSelectionActionModeCallback(callback);
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i) {
        setDropDownBackgroundDrawable(zf5.H(getContext(), i));
    }

    public void setEmojiCompatEnabled(boolean z) {
        this.p.u(z);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.p.o(keyListener));
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
}
