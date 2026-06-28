package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mb0 extends a0 {
    public final ws2 w;
    public boolean x;

    public mb0(u90 u90Var) {
        super(u90Var);
        this.w = ca.A(null);
    }

    @Override // defpackage.a0
    public final void a(int i, ag1 ag1Var) {
        ag1Var.X(420213850);
        int i2 = 4;
        int i3 = (ag1Var.h(this) ? 4 : 2) | i;
        if (ag1Var.N(i3 & 1, (i3 & 3) != 2)) {
            df1 df1Var = (df1) this.w.getValue();
            if (df1Var == null) {
                ag1Var.W(-1238823553);
            } else {
                ag1Var.W(98585282);
                df1Var.f(ag1Var, 0);
            }
            ag1Var.p(false);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new z(this, i, i2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return mb0.class.getName();
    }

    @Override // defpackage.a0
    public boolean getShouldCreateCompositionOnAttachedToWindow() {
        return this.x;
    }

    public final void setContent(df1 df1Var) {
        this.x = true;
        this.w.setValue(df1Var);
        if (isAttachedToWindow() || getComposeViewContext$ui() != null) {
            d();
        }
    }

    public static /* synthetic */ void getShouldCreateCompositionOnAttachedToWindow$annotations() {
    }
}
