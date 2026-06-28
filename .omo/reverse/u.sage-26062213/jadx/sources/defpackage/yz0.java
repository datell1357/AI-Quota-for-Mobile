package defpackage;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextWatcher;
import android.widget.EditText;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yz0 implements TextWatcher {
    public final fg n;
    public xz0 o;
    public boolean p = true;

    public yz0(fg fgVar) {
        this.n = fgVar;
    }

    public static void a(EditText editText, int i) {
        int length;
        if (i == 1 && editText != null && editText.isAttachedToWindow()) {
            Editable editableText = editText.getEditableText();
            int selectionStart = Selection.getSelectionStart(editableText);
            int selectionEnd = Selection.getSelectionEnd(editableText);
            hz0 hz0VarA = hz0.a();
            if (editableText == null) {
                length = 0;
            } else {
                hz0VarA.getClass();
                length = editableText.length();
            }
            hz0VarA.f(0, length, 0, editableText);
            if (selectionStart >= 0 && selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionStart, selectionEnd);
            } else if (selectionStart >= 0) {
                Selection.setSelection(editableText, selectionStart);
            } else if (selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionEnd);
            }
        }
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) throws Throwable {
        fg fgVar = this.n;
        if (!fgVar.isInEditMode() && this.p && hz0.c() && i2 <= i3 && (charSequence instanceof Spannable)) {
            int iB = hz0.a().b();
            if (iB != 0) {
                if (iB == 1) {
                    hz0.a().f(i, i3 + i, 0, (Spannable) charSequence);
                    return;
                } else if (iB != 3) {
                    return;
                }
            }
            hz0 hz0VarA = hz0.a();
            if (this.o == null) {
                this.o = new xz0(fgVar);
            }
            hz0VarA.g(this.o);
        }
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
