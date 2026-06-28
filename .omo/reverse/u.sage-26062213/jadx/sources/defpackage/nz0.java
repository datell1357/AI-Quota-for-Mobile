package defpackage;

import android.os.Bundle;
import android.text.Editable;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nz0 extends InputConnectionWrapper {
    public final fg a;
    public final bx3 b;

    public nz0(fg fgVar, InputConnection inputConnection, EditorInfo editorInfo) {
        bx3 bx3Var = new bx3(29);
        super(inputConnection, false);
        this.a = fgVar;
        this.b = bx3Var;
        if (hz0.c()) {
            hz0 hz0VarA = hz0.a();
            if (hz0VarA.b() != 1 || editorInfo == null) {
                return;
            }
            if (editorInfo.extras == null) {
                editorInfo.extras = new Bundle();
            }
            j8 j8Var = hz0VarA.e;
            j8Var.getClass();
            Bundle bundle = editorInfo.extras;
            yc2 yc2Var = (yc2) ((qd1) j8Var.c).o;
            int iB = yc2Var.b(4);
            bundle.putInt("android.support.text.emoji.emojiCompat_metadataVersion", iB != 0 ? ((ByteBuffer) yc2Var.q).getInt(iB + yc2Var.n) : 0);
            editorInfo.extras.putBoolean("android.support.text.emoji.emojiCompat_replaceAll", false);
        }
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingText(int i, int i2) {
        Editable editableText = this.a.getEditableText();
        this.b.getClass();
        return bx3.q(this, editableText, i, i2, false) || super.deleteSurroundingText(i, i2);
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingTextInCodePoints(int i, int i2) {
        Editable editableText = this.a.getEditableText();
        this.b.getClass();
        return bx3.q(this, editableText, i, i2, true) || super.deleteSurroundingTextInCodePoints(i, i2);
    }
}
