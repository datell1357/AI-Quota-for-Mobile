package defpackage;

import android.view.View;
import android.view.WindowInsets;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class de4 extends ce4 {
    public static final ke4 w = ke4.c(null, WindowInsets.CONSUMED);

    public de4(ke4 ke4Var, WindowInsets windowInsets) {
        super(ke4Var, windowInsets);
    }

    @Override // defpackage.zd4, defpackage.he4
    public nr1 i(int i) {
        return nr1.c(this.c.getInsets(ie4.a(i)));
    }

    @Override // defpackage.zd4, defpackage.he4
    public nr1 j(int i) {
        return nr1.c(this.c.getInsetsIgnoringVisibility(ie4.a(i)));
    }

    @Override // defpackage.zd4, defpackage.he4
    public boolean u(int i) {
        return this.c.isVisible(ie4.a(i));
    }

    public de4(ke4 ke4Var, de4 de4Var) {
        super(ke4Var, de4Var);
    }

    @Override // defpackage.zd4, defpackage.he4
    public final void d(View view) {
    }
}
