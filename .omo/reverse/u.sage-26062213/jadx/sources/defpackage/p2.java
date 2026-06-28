package defpackage;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class p2 extends ClickableSpan {
    public final int n;
    public final j3 o;
    public final int p;

    public p2(int i, j3 j3Var, int i2) {
        this.n = i;
        this.o = j3Var;
        this.p = i2;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.n);
        this.o.a.performAction(this.p, bundle);
    }
}
