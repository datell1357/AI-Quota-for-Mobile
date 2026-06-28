package defpackage;

import android.graphics.Shader;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.UpdateAppearance;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gl3 extends CharacterStyle implements UpdateAppearance {
    public final qy n;
    public final float o;
    public final ws2 p = ca.A(new mn3(9205357640488583168L));
    public final os0 q = ca.m(new vc3(6, this));

    public gl3(qy qyVar, float f) {
        this.n = qyVar;
        this.o = f;
    }

    @Override // android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        ht4.E(textPaint, this.o);
        textPaint.setShader((Shader) this.q.getValue());
    }
}
