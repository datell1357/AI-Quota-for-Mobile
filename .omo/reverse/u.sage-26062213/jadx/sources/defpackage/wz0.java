package defpackage;

import android.text.InputFilter;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wz0 extends qj0 {
    public final vz0 l;

    public wz0(xg xgVar) {
        this.l = new vz0(xgVar);
    }

    @Override // defpackage.qj0
    public final InputFilter[] L(InputFilter[] inputFilterArr) {
        return !hz0.c() ? inputFilterArr : this.l.L(inputFilterArr);
    }

    @Override // defpackage.qj0
    public final void W(boolean z) {
        if (hz0.c()) {
            this.l.W(z);
        }
    }

    @Override // defpackage.qj0
    public final void X(boolean z) {
        boolean zC = hz0.c();
        vz0 vz0Var = this.l;
        if (zC) {
            vz0Var.X(z);
        } else {
            vz0Var.n = z;
        }
    }
}
