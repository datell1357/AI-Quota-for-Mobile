package defpackage;

import android.text.style.ClickableSpan;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sa0 extends ClickableSpan {
    public final r32 n;

    public sa0(r32 r32Var) {
        this.n = r32Var;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        this.n.getClass();
    }
}
