package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i42 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ m42 o;

    public /* synthetic */ i42(m42 m42Var, int i) {
        this.n = i;
        this.o = m42Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.n;
        m42 m42Var = this.o;
        switch (i) {
            case 0:
                fc2 fc2Var = m42Var.p;
                if (fc2Var != null) {
                    fc2Var.setListSelectionHidden(true);
                    fc2Var.requestLayout();
                }
                break;
            default:
                fc2 fc2Var2 = m42Var.p;
                if (fc2Var2 != null && fc2Var2.isAttachedToWindow() && m42Var.p.getCount() > m42Var.p.getChildCount() && m42Var.p.getChildCount() <= Integer.MAX_VALUE) {
                    m42Var.I.setInputMethodMode(2);
                    m42Var.a();
                    break;
                }
                break;
        }
    }
}
