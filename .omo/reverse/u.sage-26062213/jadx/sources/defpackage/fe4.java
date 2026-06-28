package defpackage;

import android.view.View;
import android.view.WindowInsets;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class fe4 extends ee4 {
    public static final ke4 x = ke4.c(null, WindowInsets.CONSUMED);

    public fe4(ke4 ke4Var, WindowInsets windowInsets) {
        super(ke4Var, windowInsets);
    }

    @Override // defpackage.de4, defpackage.zd4, defpackage.he4
    public nr1 i(int i) {
        return nr1.c(this.c.getInsets(je4.a(i)));
    }

    @Override // defpackage.de4, defpackage.zd4, defpackage.he4
    public nr1 j(int i) {
        return nr1.c(this.c.getInsetsIgnoringVisibility(je4.a(i)));
    }

    @Override // defpackage.de4, defpackage.zd4, defpackage.he4
    public boolean u(int i) {
        return this.c.isVisible(je4.a(i));
    }

    public fe4(ke4 ke4Var, fe4 fe4Var) {
        super(ke4Var, fe4Var);
    }

    @Override // defpackage.zd4, defpackage.he4
    public void p(View view) {
    }
}
